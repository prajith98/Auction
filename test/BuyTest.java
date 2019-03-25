import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Prajith Nair
 */
public class BuyTest {
    static boolean status=false;
    @Test
    public void testExtract() throws Exception{
            String ExpectedName="Luiz Gustavo";
            int ExpectedPrice=120;
            String ActualName="";
            int ActualPrice=0;
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","");
            PreparedStatement stmt=con.prepareStatement("select * from prajith where Player=\"Luiz Gustavo\"");
            ResultSet rs=stmt.executeQuery(); 
            status=rs.next();  
            if(status==true)
			{
				ActualName=rs.getString("Player");
                                ActualPrice=rs.getInt("Bought for");
			}
            con.close();
            assertEquals(ExpectedName,ActualName);
            assertEquals(ExpectedPrice,ActualPrice);
    }
}
