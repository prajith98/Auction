// Java implementation of Server side 
// It contains two classes : Server and ClientHandler 
// Save file as Server.java 

import java.io.*; 
import java.net.*; 
import java.util.*;
import java.util.Random;
import java.util.concurrent.atomic.*;
import java.sql.*;
// Server class 
public class Server 
{  
        Vector<String> users = new Vector<String>();
        Vector<ClientHandler> clients = new Vector<ClientHandler>();
        static int i=0;
        
        Server() throws IOException 
	{ 
            ServerSocket ss = new ServerSocket(5056); 
		
                
		// running infinite loop for getting 
		// client request 
		while (true) 
		{ 
			Socket s = null; 
			
			try
			{ 
				// socket object to receive incoming client requests 
				s = ss.accept(); 
				
				System.out.println("A new client is connected : " + s); 
				System.out.println("Assigning new thread for this client"); 
                                ClientHandler CH=new ClientHandler(s);
                                clients.add(CH);
                                i++;
				// create a new thread object 
				Thread t = new Thread(CH); 
				t.start(); 
                                
				
			} 
			catch (Exception e){ 
				s.close(); 
				e.printStackTrace(); 
			}
                        
		}
                
	}
        public void sendtoall(String user, String message) 
        {
            for (ClientHandler c : clients) 
            {
                if (!c.getchatusers().equals(user)) 
                {
                    c.sendMessage(user, message);
                }
            }
        }
        class ClientHandler extends ObserverC implements Runnable 
        { 
            BufferedReader input;
            PrintWriter output;
            final Socket s;int q;
            public AtomicInteger z= new AtomicInteger(0);
            int i=0;
            boolean isloggedin;
            String gotuser = "";
            public ClientHandler(Socket s) throws Exception
            { 
		this.s = s; 
                input = new BufferedReader(new InputStreamReader(s.getInputStream()));
                output = new PrintWriter(s.getOutputStream(), true);
                z.set(Observer());
                q=z.get();
		output.println("Player Number : "+q); 
                output.println(q);
                gotuser = input.readLine();
                users.add(gotuser);
            } 
            public void sendMessage(String chatuser, String chatmsg) 
            {
                    if(chatmsg.equals("leave"))
                    {   output.println(1); 
                        output.println(chatuser.toUpperCase() + " HAS LEFT THE ROOM");
                    }
                    else
                    {
                        output.println(0); 
                        output.println(chatuser.toUpperCase() + " Says: " + chatmsg+" M");
                    }
            }
            public String getchatusers() 
            {
                return gotuser;
            }
            int Observer()
            {
		if(ObserverC.flag.compareAndSet(false, true))
		{
			Random randomNum = new Random();
                        try{i=M(r);}catch(Exception e){System.out.println("ERROR");}
			ObserverC.x.set(i);
                        System.out.println("Now changed to true");
			return ObserverC.x.get();
		}
		else
		{
			ObserverC.flag.set(false);
                        System.out.println("in Else part");
			return ObserverC.x.get();
		}
            }
            @Override
            public void run() 
            { 
		String received=""; 
                try
                {
                    while (true)  
                    { 
			received = input.readLine();
                        System.out.println(received); 
                        if(received.equals("end")) 
                        {
                            clients.remove(this);
                            users.remove(gotuser);
                            break;
                        }
                        sendtoall(gotuser, received);
                    } 
                } 
                catch (Exception ex) {
                System.out.println(ex.getMessage());
                }  
                
		} 
                
        }  
}
class ObserverC
{
	static public AtomicBoolean flag=new AtomicBoolean(false);
	static public final AtomicInteger x= new AtomicInteger(0);
        public int getValue() 
        {
        return x.get();
        }
        Random randomNum = new Random();
    int r= randomNum.nextInt(177);
    static boolean status=false;
    int M(int x)throws Exception
    {
        System.out.println("Inside M: "+x);
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

}

                 
        
                
                
		
		
	

