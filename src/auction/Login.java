import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.sql.*;
import java.net.*;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
public class Login extends JFrame implements ActionListener
{
    JButton l,a;
    JTextField user=new JTextField(20);
    JPasswordField password;
    boolean status=false;
    Login()
    {    try{
        setTitle("FIFA 18| Auction ");
	setSize(434, 558);
        setBackground(Color.white);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        //setUndecorated(true);
        setResizable(false);
        Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
        this.setLocation(dim.width/2-this.getSize().width/2, dim.height/2-this.getSize().height/2);
        JPanel p=new JPanel();
        URL url_back=new URL("https://i.ibb.co/q9jQLS5/lOGIN.jpg");
        Image Q=ImageIO.read(url_back.openStream());
        JLabel J=new JLabel(new ImageIcon(Q));
        l=new JButton("LOGIN");
        a=new JButton("ADMIN");
        user.setBounds(65,220,310,50);
        l.setBounds(149,380,107,33);
        a.setBounds(149,425,107,34);
        password=new JPasswordField(20);
        password.setBounds(65,315,310,50);
        J.setBounds(0,0,428,536);
        Font font = new Font("Calibri",Font.BOLD+Font.ITALIC,25);
        Font font1 = new Font("Calibri",Font.BOLD,23);
        user.setFont(font);
        l.setFont(font1);
        a.setFont(font1);
        password.setFont(font);
        user.setBorder(javax.swing.BorderFactory.createEmptyBorder());
        password.setBorder(javax.swing.BorderFactory.createEmptyBorder());
        p.setLayout(null);
        p.add(user);
        p.add(l);
        p.add(a);
        p.add(password);
        p.add(J);
        add(p);
        setVisible(true);
        this.getRootPane().setDefaultButton(l);
        l.addActionListener(this);
        a.addActionListener(this);
        }catch(Exception e){}
    }
    int Check()throws Exception
        {   
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","");
            PreparedStatement stmt=con.prepareStatement("select name from Users where name=\""+user.getText()+"\"");
            ResultSet rs=stmt.executeQuery(); 
            status=rs.next();  
            if(status==true)
		return 1;
            else
		JOptionPane.showMessageDialog(this,"We cannot find an account with that User Name","There was a problem",JOptionPane.ERROR_MESSAGE);   
		
            con.close();
            return 0;
        }
    public void actionPerformed(ActionEvent ae)
    {
        int i=0;
        if(ae.getSource()==a)
        {
            try{    dispose();
            new Server();
            }
            catch(Exception e){}
        }
        else if(ae.getSource()==l)
        {
            try{i=Check();}
                catch(Exception e){}
            System.out.println(i);
            if(i==1)
                try{    dispose();
                        
                       //
                       new Client(user.getText());
                }
            catch(Exception e){
            System.out.println("from login :"+e);
            }
        }
    }
    /*public static void main(String args[])
    {
        System.setProperty("http.agent", "Chrome");
        Login l=new Login();
    }*/
}

