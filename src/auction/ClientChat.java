import java.io.*; 
import java.net.*; 
import java.util.Scanner; 
import java.awt.*;
import java.awt.event.*;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.*;
import java.sql.*;
// Client class 
public class ClientChat implements ActionListener
{ 
    static boolean status=false;
    static int Overall,z,flag=0;
    static Float Value;
    static String Name,Photo,UName;
    JTextField Price;
    JButton Btn=new JButton("Bid");
    JButton Leave=new JButton("Leave");
    int X;Socket s;InetAddress ip;
    JFrame JF=new JFrame();
    Client c;
    float amt=0;
    PrintWriter pw;
    BufferedReader br;
    static void Extract(int y)throws Exception
    {
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","");
            PreparedStatement stmt=con.prepareStatement("select * from players where ID=\""+y+"\"");
            ResultSet rs=stmt.executeQuery(); 
            status=rs.next();  
            if(status==true)
			{
				Name=rs.getString("Name");
                                Photo=rs.getString("Photo");
                                Overall=rs.getInt("Overall");
                                Value=rs.getFloat("Value");
                                
			}
            con.close();
    }
    
        ClientChat(String UName,String Name,int x,Float Value,Socket s,InetAddress ip,Client c) throws IOException 
	{ 
            this.UName=UName;
            this.Name=Name;
            X=x;
            this.Value=Value;
            this.s=s;
            this.ip=ip;
            this.c=c;
            br = new BufferedReader( new InputStreamReader(s.getInputStream()) ) ;
            pw = new PrintWriter(s.getOutputStream(),true);
            System.out.println(UName);
            buildInterface();
            new MessagesThread().start(); 
        }
        public void buildInterface()
        {
            try
            {
            Extract(X);
            JF.setVisible(true);
            JF.setTitle("FIFA 18| Auction ");
            JF.setSize(434, 558);
            //setBackground(Color.white);
            JF.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
            JF.setResizable(false);
            Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
            JF.setLocation(dim.width/2-JF.getSize().width/2, dim.height/2-JF.getSize().height/2);
            JPanel p=new JPanel();
            URL url_back=new URL("https://i.ibb.co/QkX61j5/ChatRoom.png");
            Image Q=ImageIO.read(url_back.openStream());
            JLabel J=new JLabel(new ImageIcon(Q));
            URL url_Photo = new URL(this.Photo);
            Image image_Photo = ImageIO.read(url_Photo.openStream());
            JLabel label_UName=new JLabel(UName.toUpperCase());
            JLabel label_Value =new JLabel(Float.toString(this.Value));
            JLabel label_Photo = new JLabel(new ImageIcon(image_Photo));
            JLabel label_Name =new JLabel(this.Name);
            JLabel label_Overall=new JLabel(Integer.toString(this.Overall));
            Font font1 = new Font("Calibri",Font.BOLD,28);
            Font font3 = new Font("Calibri",Font.BOLD,18);
            Font font2 = new Font("Calibri",Font.BOLD,15);
            label_UName.setFont(font3);
            label_Name.setFont(font1);
            label_Value.setFont(font2);
            label_Overall.setFont(font3);
            J.setBounds(0,0,428,536);  
            p.setLayout(null);
            Price=new JTextField(20);
            Price.setBorder(javax.swing.BorderFactory.createEmptyBorder());
            Font font = new Font("Calibri",Font.BOLD,19);
            Price.setFont(font);
            Btn.setFont(font);
            Leave.setFont(font);
            label_UName.setBounds(75,213,135,15);
            label_Photo.setBounds(30,269,120,120);
            label_Name.setBounds(155,205,400,270);
            label_Value.setBounds(270,309,148,125);
            label_Overall.setBounds(159,244,148,125);
            Price.setBounds(268,426,75,15);
            Btn.setBounds(96,480,94,36);
            Leave.setBounds(216,480,94,36);
            p.add(label_Name);
            p.add(Btn);
            p.add(Leave);
            p.add(label_UName);
            p.add(label_Photo);
            p.add(label_Value);
            p.add(label_Overall);
            p.add(Price);
            p.add(J);
            JF.add(p);
            JF.setVisible(true);
            JF.getRootPane().setDefaultButton(Btn);
            Btn.addActionListener(this);
            Leave.addActionListener(this);
    
		}catch(Exception e){ 
			e.printStackTrace(); 
		} 
	}
        public void actionPerformed(ActionEvent ae)
        {
               int flag=0;
               if(ae.getSource()==Btn)
               {    
                  pw.println(Price.getText());
                  amt=Float.valueOf(Price.getText());
                  Price.setText(null);
               }
               else if(ae.getSource()==Leave)
               {
                   pw.println("leave");
                   try{
                    new Client(UName);
                   }catch(Exception e){}
                   JF.dispose();
               }
               
        }
        class  MessagesThread extends Thread 
        {
            @Override
            public void run() 
            {
                String line;
                try 
                {
                    while(true) 
                    {
                        int flag=Integer.parseInt(br.readLine());
                        if(flag==0)
                            JOptionPane.showMessageDialog(JF,br.readLine(),"BID",JOptionPane.INFORMATION_MESSAGE);
                        else
                        {    
                            JOptionPane.showMessageDialog(JF,br.readLine(),"BID",JOptionPane.INFORMATION_MESSAGE);
                            new Buy(UName,Name,amt);
                            JOptionPane.showMessageDialog(JF,Name+" bought by "+UName+" for "+amt,"BID",JOptionPane.INFORMATION_MESSAGE);
                            try{
                                new Client(UName);
                            }
                            catch(Exception e){}
                            JF.dispose();
                            break;
                        }
                    }
            } catch(Exception ex) {}
        }
    }
}
        
