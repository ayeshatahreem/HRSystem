import DatabaseConnection.DatabaseConnection;
/**
 * Created by ayesh on 3/1/2017.
 */
public class test1 {
    public static void main(String[] args)
    {

        try
        {
            boolean connection = DatabaseConnection.connect();
            if(connection==true)
            {
                System.out.println("Hi");
            }
            else
            {
                System.out.println("jjbj");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally
        {

        }
    }
}
