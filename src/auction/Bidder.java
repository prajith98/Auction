import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
class Bidder extends JFrame implements ActionListener
{
    Float amt;
    String N[]={"sourav","prajith","sreekanth"};
    boolean status=false;
    JTextField BidderName;
    JTextField Price;
    JButton Btn=new JButton("Buy");
    JButton Back=new JButton("Back");
    String P_Name;
    int a=1;
    int X;
    Float V;
    Bidder(String Name,int x,Float Value) 
    {
        P_Name=Name;
        X=x;
        V=Value;
        setTitle("FIFA 18| Auction ");
	setSize(434, 565);
        setBackground(Color.white);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
        this.setLocation(dim.width/2-this.getSize().width/2, dim.height/2-this.getSize().height/2);
        JPanel p=new JPanel();
        ImageIcon Q=new ImageIcon("C:\\Users\\Prajith Nair\\Desktop\\Stuff\\Auction\\Bid.png");
        JLabel J=new JLabel(Q);
        p.setLayout(null);
        J.setBounds(0,0,428,536); 
	p.add(J);
	BidderName=new JTextField(20);
        Price=new JTextField(20);
	BidderName.setBorder(javax.swing.BorderFactory.createEmptyBorder());
        Price.setBorder(javax.swing.BorderFactory.createEmptyBorder());
        Font font = new Font("Calibri",Font.BOLD,19);
	BidderName.setFont(font);
        Price.setFont(font);
	Btn.setFont(font);
	Back.setFont(font);
        BidderName.setBounds(236,230,136,20);
        Price.setBounds(236,264,136,20);
        Btn.setBounds(216,480,94,36);
        Back.setBounds(96,480,94,36);
        p.add(Btn);
        p.add(Back);
        p.setLayout(null);
        p.add(Price);
        p.add(BidderName);
        p.add(J);
        add(p);
        setVisible(true);
        getRootPane().setDefaultButton(Btn);
        Btn.addActionListener(this);
        Back.addActionListener(this);
    }
    void funcG(int i)throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","");
        PreparedStatement stmt;
        String query="select * from bank where id="+(i+1);
        ResultSet rs; 
                stmt=con.prepareStatement(query);
                    rs=stmt.executeQuery();
                    status=rs.next();  
                    if(status==true)
                    {
                            amt=Float.parseFloat(rs.getString("AMT"));
                    }
                     con.close();
    }
    void funcI(int i,Float A)throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","");
        Statement stmt;
        ResultSet rs; 
        String query="update bank set AMT ="+A+" where id="+(i+1);
        stmt=con.createStatement();
        stmt.execute(query);
        String st=P_Name+" brought by "+BidderName.getText()+" for "+Price.getText()+" M";
        JOptionPane.showMessageDialog(this,st,"Succes",JOptionPane.INFORMATION_MESSAGE);
        try{new Buy(BidderName.getText(),P_Name,Float.parseFloat(Price.getText()));}
                   catch(Exception e){}
                   dispose();
            stmt.close();
            con.close(); 
    
    }
    void check() throws Exception
    {
        Float price=Float.parseFloat(Price.getText());
        int flag=0;
        String Name=BidderName.getText();
        for(int i=0;i<3;i++)
        {
            if(Name.equalsIgnoreCase(N[i]))
            {    
                    System.out.println(N[i]);
                    try{funcG(i);}catch(Exception e){}
                    if(price<=amt&& price>=V) 
                    {   
                        amt-=price;a=0;
                        try{funcI(i,amt);}catch(Exception e){}
                    }
                    else if(price<V)    JOptionPane.showMessageDialog(this,"the entered amount is less than base price","There was a problem",JOptionPane.ERROR_MESSAGE);
                    else 
                    {   
                        JOptionPane.showMessageDialog(this,"the entered amount is greater than available amount","There was a problem",JOptionPane.ERROR_MESSAGE);a=1;
                    }flag=1;
                    break;
            }
        }
        if(flag==0)
            JOptionPane.showMessageDialog(this,"Bidder Name Not Identified","There was a problem",JOptionPane.ERROR_MESSAGE);a=1;
    }
        
    public void actionPerformed(ActionEvent ae)
	{
               if(ae.getSource()==Btn)
               {    
                   if(a==1){try{ check();}catch(Exception e){}}
                   else{
                   try{new Buy(BidderName.getText(),P_Name,Float.parseFloat(Price.getText()));}
                   catch(Exception e){}
                   dispose();}
               }
               if(ae.getSource()==Back)
               {
                   try{new Auction(X);}catch(Exception e){}
                   dispose();
               }
    }
}