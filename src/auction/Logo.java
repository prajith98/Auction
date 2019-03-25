import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import java.awt.image.BufferedImage;
import java.net.*;
import java.io.InputStream;
import javax.imageio.ImageIO;
import java.util.Random;
class Logo extends JFrame 
{
    Logo() 
    {try{
        setUndecorated(true);
        setVisible(true);
        setSize(600, 348);
        setBackground(Color.white);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
        this.setLocation(dim.width/2-this.getSize().width/2, dim.height/2-this.getSize().height/2);
        setResizable(false);
        JPanel p=new JPanel(); 
        URL url_back=new URL("https://i.ibb.co/R4GddTk/Load.gif");
        Image Q=ImageIO.read(url_back.openStream());
        JLabel J=new JLabel(new ImageIcon(Q));
        J.setBounds(0,0,600, 348);
        p.setLayout(null);
        p.add(J);
        add(p);
        setVisible(true);
        }catch(Exception e){}
    }
    public static void main(String args[])
    {
        System.setProperty("http.agent", "Chrome");
        Logo l=new Logo();
     
        for(long i=0;i<999999999;i++);
        for(long i=0;i<999999999;i++);
        for(long i=0;i<999999999;i++);
        for(long i=0;i<999999999;i++);
        for(long i=0;i<999999999;i++);
        for(long i=0;i<999999999;i++);
        for(long i=0;i<999999999;i++);
        try
        {
            //to create an instance of class login
            new Login();
            l.dispose();
        }
        catch(Exception e){}
    }
}