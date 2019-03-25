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
public class Client extends JFrame implements ActionListener
{ 
    static boolean status=false;
    static int Age,Overall,z;
    static Float Value;
    private static String Name,Photo,Nationality,Flag,Club,CLogo,Preff,UName="";
    JButton Next=new JButton("NEXT");
    JButton Buy=new JButton("BID");
    Socket s;InetAddress ip;private String userName;
    PrintWriter pw;
    BufferedReader br;;
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
    void execute()
    {
        try
        {
            String f=Extract(z);
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
        URL url_back=new URL("https://i.ibb.co/CVnjpMp/Back1.jpg");
        Image Q=ImageIO.read(url_back.openStream());
        JLabel J=new JLabel(new ImageIcon(Q));
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
		}catch(Exception e){ 
			e.printStackTrace(); 
		} 
        }
        Client(String name) throws Exception 
	{ 
            UName=name; 
            ip = InetAddress.getByName("192.168.43.60"); 
            s = new Socket(ip, 5056); 
            br = new BufferedReader( new InputStreamReader(s.getInputStream()) ) ;
            pw = new PrintWriter(s.getOutputStream(),true);
            System.out.println(br.readLine());
            z=Integer.parseInt(br.readLine());
            pw.println(UName);
            execute();
        }
        public void actionPerformed(ActionEvent ae)
        {
            if(ae.getSource()==Next)
               {    
                   try{new Client(UName);}
                   catch(Exception e){}
                   dispose();
               }
               if (ae.getSource()==Buy)
               {
                   try{new ClientChat(UName,Name,z,Value,s,ip,this);}
                   catch(Exception e){}
                   dispose();
               }
        }
}
        
