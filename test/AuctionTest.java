import org.junit.Test;
import static org.junit.Assert.*;

public class AuctionTest {

    @Test
    public void testExtract() throws Exception{
            String Expected="L. Messi";
            String Actual=Auction.Extract(1);
            System.out.println(Actual);
            assertEquals(Expected,Actual);
    }
}
