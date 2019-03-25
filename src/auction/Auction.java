import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import java.awt.image.BufferedImage;
import java.net.*;
import java.io.InputStream;
import javax.imageio.ImageIO;
import java.util.Random;
public class Auction extends JFrame implements ActionListener 
{
    static boolean status=false;
    static int Age,Overall,z;
    static Float Value;
    static String Name,Photo,Nationality,Flag,Club,CLogo,Preff;
    Random randomNum = new Random();
    int x= randomNum.nextInt(177);
    JButton Next=new JButton("NEXT");
    JButton Buy=new JButton("BUY");
    int M(int x)throws Exception
    {System.out.println("Inside M: "+x);
        Boolean flag;flag=Exclude(x);
        if(flag==true)
        {
            x=randomNum.nextInt(177);
            x=M(x);
        }
        else if(flag==false)
        {    swap(x);
        }
        System.out.println("Returning : "+x);
        return x;
    }
    void swap(int x)throws Exception
    {
        System.out.println("Swapping "+x+" with 999");
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","");
        Statement stmt;
        String query="update count set C ="+999+" where id="+(x);
        stmt=con.createStatement();
        stmt.execute(query);
            stmt.close();
            con.close();
    }
    Boolean Exclude(int x)throws Exception
    {
        int Array[]=new int[205];
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","");
        PreparedStatement stmt=con.prepareStatement("Select C from count");
        ResultSet rs; 
        rs=stmt.executeQuery();
        status=rs.next();  
            for(int i=0;rs.next();i++)
            {
                Array[i]=(rs.getInt("C"));
            }
            for(int i=0;i<177;i++)
            {
                if(x==Array[i])
                {
                    return false;
                }
            }
        return true;
    }
    static String Extract(int y)throws Exception
    {
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","");
            PreparedStatement stmt=con.prepareStatement("select * from players where ID=\""+y+"\"");
            ResultSet rs=stmt.executeQuery(); 
            status=rs.next();  
            if(status==true)
			{
				Name=rs.getString("Name");
                                Age=rs.getInt("AGE");
                                Photo=rs.getString("Photo");
                                Nationality=rs.getString("Nationality");
                                Flag=rs.getString("Flag");
                                Overall=rs.getInt("Overall");
                                Club=rs.getString("Club");
                                CLogo=rs.getString("Club Logo");
                                Value=rs.getFloat("Value");
                                Preff=rs.getString("PREFERED POSITION");
                                
			}
            con.close();
            return Name;
    }
    void Extract()throws Exception
    {System.out.println("Displaying player :"+z);
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","");
            PreparedStatement stmt=con.prepareStatement("select * from players where ID=\""+z+"\"");
            ResultSet rs=stmt.executeQuery(); 
            status=rs.next();  
            if(status==true)
			{
				Name=rs.getString("Name");
                                Age=rs.getInt("AGE");
                                Photo=rs.getString("Photo");
                                Nationality=rs.getString("Nationality");
                                Flag=rs.getString("Flag");
                                Overall=rs.getInt("Overall");
                                Club=rs.getString("Club");
                                CLogo=rs.getString("Club Logo");
                                Value=rs.getFloat("Value");
                                Preff=rs.getString("PREFERED POSITION");
			}
            con.close();
    }
    Auction(int X) throws Exception
    {
        String f=Extract(X);
        setVisible(true);
        System.out.println(f);
        setTitle("FIFA 18| Auction ");
	setSize(434, 558);
        //setBackground(Color.white);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setResizable(false);
        Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
        this.setLocation(dim.width/2-this.getSize().width/2, dim.height/2-this.getSize().height/2);
        JPanel p=new JPanel();
        ImageIcon Q=new ImageIcon("C:\\Users\\Prajith Nair\\Desktop\\Stuff\\Auction\\Back1.jpg");
        JLabel J=new JLabel(Q);
        J.setBounds(0,0,428,536);  
        p.setLayout(null);
        URL url_Photo = new URL(Photo);
        URL url_Flag = new URL(Flag);
        URL url_CLogo = new URL(CLogo);
        Image image_Photo = ImageIO.read(url_Photo.openStream());
        Image image_Flag = ImageIO.read(url_Flag.openStream());
        Image image_CLogo = ImageIO.read(url_CLogo.openStream());
        JLabel label_Photo = new JLabel(new ImageIcon(image_Photo));
        JLabel label_Flag = new JLabel(new ImageIcon(image_Flag));
        JLabel label_CLogo = new JLabel(new ImageIcon(image_CLogo));
        JLabel label_Name =new JLabel(Name);
        JLabel label_Club =new JLabel(Club);
        JLabel label_Value =new JLabel(Float.toString(Value));
        JLabel label_Preff=new JLabel(Preff);
        JLabel label_Overall=new JLabel(Integer.toString(Overall));
        JLabel label_Age=new JLabel(Integer.toString(Age));
        JLabel label_Nationality=new JLabel(Nationality);
        Font font1 = new Font("Calibri",Font.BOLD,28);
        Font font = new Font("Calibri",Font.PLAIN,18);
        Font font2 = new Font("Calibri",Font.PLAIN,20);
        label_Name.setFont(font1);
        label_Age.setFont(font);
        label_Preff.setFont(font2);
        label_Club.setFont(font2);
        label_Nationality.setFont(font2);
        label_Value.setFont(font2);
        label_Overall.setFont(font);
        Next.setFont(font2);
        Buy.setFont(font2);
        label_Overall.setForeground(Color.white);
        label_Photo.setBounds(30,145,120,120);
        label_Flag.setBounds(167,243,23,17);
        label_CLogo.setBounds(94,383,24,24);
        label_Name.setBounds(167,75,615,270);
        label_Club.setBounds(122,335,300,125);
        label_Value.setBounds(150,364,148,125);
        label_Overall.setBounds(123,247,148,125);
        label_Preff.setBounds(129,281,250,175);
        label_Age.setBounds(200,159,48,148);
        label_Nationality.setBounds(160,265,250,148);
        Next.setBounds(216,480,94,36);
        Buy.setBounds(96,480,94,36);
        p.add(label_Photo);
        p.add(label_CLogo);
        p.add(label_Name);
        p.add(label_Club);
        p.add(label_Value);
        p.add(label_Preff);
        p.add(label_Age);
        p.add(label_Nationality);
        p.add(label_Flag);
        p.add(label_Overall);
        p.add(Next);
        p.add(Buy);
	p.add(J);
        add(p);
        setVisible(true);
        Next.addActionListener(this);
        Buy.addActionListener(this);
    }
    Auction() throws Exception
    {
        try{z=M(x);}catch(Exception e){System.out.println("ERROR");}
        System.out.println("Z :" +z);
        Extract();
        setTitle("FIFA 18| Auction ");
	setSize(434, 558);
        setBackground(Color.white);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
       // setUndecorated(true);
        Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
        this.setLocation(dim.width/2-this.getSize().width/2, dim.height/2-this.getSize().height/2);
        setResizable(false);
        JPanel p=new JPanel();
        ImageIcon Q=new ImageIcon("C:\\Users\\Prajith Nair\\Desktop\\Stuff\\Auction\\Back1.jpg");
        JLabel J=new JLabel(Q);
        J.setBounds(0,0,428,536);  
        p.setLayout(null);
        URL url_Photo = new URL(Photo);
        URL url_Flag = new URL(Flag);
        URL url_CLogo = new URL(CLogo);
        Image image_Photo = ImageIO.read(url_Photo.openStream());
        Image image_Flag = ImageIO.read(url_Flag.openStream());
        Image image_CLogo = ImageIO.read(url_CLogo.openStream());
        JLabel label_Photo = new JLabel(new ImageIcon(image_Photo));
        JLabel label_Flag = new JLabel(new ImageIcon(image_Flag));
        JLabel label_CLogo = new JLabel(new ImageIcon(image_CLogo));
        JLabel label_Name =new JLabel(Name);
        JLabel label_Club =new JLabel(Club);
        JLabel label_Value =new JLabel(Float.toString(Value));
        JLabel label_Preff=new JLabel(Preff);
        JLabel label_Overall=new JLabel(Integer.toString(Overall));
        JLabel label_Age=new JLabel(Integer.toString(Age));
        JLabel label_Nationality=new JLabel(Nationality);
        Font font1 = new Font("Calibri",Font.BOLD,28);
        Font font = new Font("Calibri",Font.PLAIN,18);
        Font font2 = new Font("Calibri",Font.PLAIN,20);
        label_Name.setFont(font1);
        label_Age.setFont(font);
        label_Preff.setFont(font2);
        label_Club.setFont(font2);
        label_Nationality.setFont(font2);
        label_Value.setFont(font2);
        label_Overall.setFont(font);
        Next.setFont(font2);
        Buy.setFont(font2);
        label_Overall.setForeground(Color.white);
        label_Photo.setBounds(30,145,120,120);
        label_Flag.setBounds(167,243,23,17);
        label_CLogo.setBounds(94,383,24,24);
        label_Name.setBounds(167,75,615,270);
        label_Club.setBounds(122,335,300,125);
        label_Value.setBounds(150,364,148,125);
        label_Overall.setBounds(123,247,148,125);
        label_Preff.setBounds(129,281,250,175);
        label_Age.setBounds(200,159,48,148);
        label_Nationality.setBounds(160,265,250,148);
        Next.setBounds(216,480,94,36);
        Buy.setBounds(96,480,94,36);
        p.add(label_Photo);
        p.add(label_CLogo);
        p.add(label_Name);
        p.add(label_Club);
        p.add(label_Value);
        p.add(label_Preff);
        p.add(label_Age);
        p.add(label_Nationality);
        p.add(label_Flag);
        p.add(label_Overall);
        p.add(Next);
        p.add(Buy);
	p.add(J);
        add(p);
        setVisible(true);
        Next.addActionListener(this);
        Buy.addActionListener(this);
    }
    public void actionPerformed(ActionEvent ae)
	{
               if(ae.getSource()==Next)
               {    
                   try{new Auction();}
                   catch(Exception e){}
                   dispose();
               }
               if (ae.getSource()==Buy)
               {
                   try{new Bidder(Name,x,Value);}
                   catch(Exception e){}
                   dispose();
               }
        }
    public static void main(String args[])throws Exception
	{
            System.setProperty("http.agent", "Chrome");
            Auction a=new Auction();
        }
}