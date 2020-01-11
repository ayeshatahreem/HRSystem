package Model;

/**
 * Created by ayesh on 3/10/2017.
 */
public class User
{
    protected String Name;
    protected String Email;
    protected String Password;
    protected String Category;

    public String GetUserName(){
        return Name;
    }
    public String GetUserEmail(){
        return Email;
    }
    public String GetUserPassword(){
        return Password;
    }
    public String GetUserCategory(){
        return Category;
    }

    public void SetUserName(String N){
        Name = N;
    }
    public void SetUserEmail(String E){
        Email = E;
    }
    public void SetUserPassword(String P){
        Password = P;
    }
    public void SetUserCategory(String A){
        Category = A;
    }

}
