package DatabaseConnection;

import Model.FeedbackForm;
import Model.Job;
import Model.User;
import Model.JobApplication;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by ayesh on 3/13/2017.
 */
public class DatabaseConnection {
    public static Connection myConnection = null;
    public static boolean connect() throws ClassNotFoundException {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            myConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/webproject?useSSL=false", "root", "admin");
            return true;
        }
        catch (SQLException | ClassNotFoundException e) {
            System.out.println("SQL Exception: " + e.toString());
            return false;
        }
    }
    public static boolean InsertUser(User UObj) {
        try
        {
            String qu = "SELECT userName FROM user WHERE userName=?";
            PreparedStatement st=myConnection.prepareStatement(qu);
            st.setString(1,UObj.GetUserName());
            ResultSet rs= st.executeQuery();
            //Statement st = myConnection.createStatement();
            //ResultSet rs=st.executeQuery("SELECT userName FROM user WHERE userName='"+UObj.GetUserName()+"'");
            if(!rs.next())
            {
                String Query="INSERT INTO user(userName,emailID,password,category)"+"VALUES (?,?,?,?)";
                PreparedStatement sst=myConnection.prepareStatement(Query);
                sst.setString(1,UObj.GetUserName());
                sst.setString(2,UObj.GetUserEmail());
                sst.setString(3,UObj.GetUserPassword());
                sst.setString(4,UObj.GetUserCategory());
                int a=sst.executeUpdate();
               // ResultSet rrs=st.executeQuery("SELECT userID FROM user WHERE userName='"+UObj.GetUserName()+"'");
               // if(rrs.next())
               //     st.execute("INSERT INTO user VALUES ('"+rrs.getInt("userID")+"')");
                return true;
            }
        }
        catch (SQLException ex)
        {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public static Integer UserLogIn(User UObj) {
        Integer ID=-1;
        String cat="";
        try {
           // Statement st = myConnection.createStatement();
           // ResultSet rs = st.executeQuery("SELECT * FROM user WHERE userName='" + UObj.GetUserName() + "' " +
           //         "AND password ='" + UObj.GetUserPassword() + "' ");

            String qu = "SELECT * FROM user WHERE userName=? AND password=? ";
            PreparedStatement st=myConnection.prepareStatement(qu);
            st.setString(1,UObj.GetUserName());
            st.setString(2,UObj.GetUserPassword());
            ResultSet rs= st.executeQuery();

            if (rs.next())
            {
                ID = rs.getInt("userID");
                cat = rs.getString("category");
                UObj.SetUserName(rs.getString("userName"));
                UObj.SetUserEmail(rs.getString("emailID"));
                UObj.SetUserPassword(rs.getString("password"));
                UObj.SetUserCategory(rs.getString("category"));
                if (cat.equals("HRP")) {
                    return 0;
                } else if (cat.equals("HRM")) {
                    return 1;
                } else if (cat.equals("APP")) {
                    return 2;
                } else if (cat.equals("SME")) {
                    return 3;
                }
            }
        }
        catch (SQLException ex)
        {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ID;
    }
    public static boolean PostJob(Job JObj) {
        try
        {
          //  Statement st = myConnection.createStatement();
          //  st.execute("INSERT INTO job(jobTitle, qualification, experience, deadline, description) VALUES ('"+JObj.GetJobTitle()+"','"+JObj.GetJobQualification()+"','"+ JObj.GetJobExperience()+"','"+JObj.GetJobDeadline()+"','"+JObj.GetJobDescription()+"')");

            String Query="INSERT INTO job(jobTitle, qualification, experience, deadline, description) VALUES (?,?,?,?,?)";
            PreparedStatement st=myConnection.prepareStatement(Query);
            st.setString(1,JObj.GetJobTitle());
            st.setString(2,JObj.GetJobQualification());
            st.setString(3,JObj.GetJobExperience());
            st.setString(4,JObj.GetJobDeadline());
            st.setString(5,JObj.GetJobDescription());
            int a=st.executeUpdate();

            return true;
        }
        catch (SQLException ex)
        {
           // System.out.println("1599");
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
     }
    public static boolean AddFeedback(FeedbackForm fObj) {
        try
        {
           // Statement st = myConnection.createStatement();
           // st.execute("INSERT INTO feedbackform(jobPosition, empName, positionRank, salary, workingHours) VALUES ('"+fObj.GetJobPosition()+"','"+fObj.GetEmpName()+"','"+fObj.GetPositionRank()+"','"+fObj.GetSalary()+"','"+fObj.GetWorkingHours()+"')");
           // st.execute("UPDATE jobapplication SET aint2='"+0+"' WHERE userName != '"+fObj.GetEmpName()+"'");
           // st.execute("UPDATE jobapplication SET aint2='"+1+"' WHERE userName = '"+fObj.GetEmpName()+"' ");
            String Query="INSERT INTO feedbackform(jobPosition, empName, positionRank, salary, workingHours) VALUES(?,?,?,?,?)";
            PreparedStatement st=myConnection.prepareStatement(Query);
            st.setString(1,fObj.GetJobPosition());
            st.setString(2,fObj.GetEmpName());
            st.setString(3,fObj.GetPositionRank());
            st.setString(4,fObj.GetSalary());
            st.setString(5,fObj.GetWorkingHours());
            int a=st.executeUpdate();

            String Query1="UPDATE jobapplication SET aint2=? WHERE userName=?";
            PreparedStatement st1=myConnection.prepareStatement(Query1);
            st1.setInt(1,1);
            st1.setString(2,fObj.GetEmpName());
            int b=st1.executeUpdate();
            return true;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public static ArrayList<Job> SearchJob() {
        try
        {
            Statement st = myConnection.createStatement();
            ResultSet rrs=null;
            rrs=st.executeQuery("SELECT * FROM job");
            ArrayList<Job> R=new ArrayList<>();
            while(rrs.next())
            {
                Job Obj=new Job();
                Obj.SetJobID(rrs.getInt("jobID"));
                Obj.SetJobTitle(rrs.getString("jobTitle"));
                Obj.SetJobQualification(rrs.getString("qualification"));
                Obj.SetJobExperience(rrs.getString("experience"));
                Obj.SetJobDeadline(rrs.getString("deadline"));
                Obj.SetJobDescription(rrs.getString("description"));
                R.add(Obj);
            }
            return R;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static boolean ApplyJob(JobApplication B){
        try
        {
            String Query="INSERT INTO jobapplication(UserName,jobID)"+"values (?,?)";
            PreparedStatement st=myConnection.prepareStatement(Query);
            st.setString(1,B.GetUserName());
            st.setInt(2,B.GetJobID());
            int a=st.executeUpdate();
            return true;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public static ArrayList<JobApplication> ReviewApp() {
        try
        {
            Statement st = myConnection.createStatement();
            ResultSet rrs=null;
            rrs=st.executeQuery("SELECT * FROM jobapplication order by jobID ASC");
            ArrayList<JobApplication> R=new ArrayList<>();
            while(rrs.next())
            {
                JobApplication Obj=new JobApplication();
                Obj.SetAppID(rrs.getInt("appID"));
                Obj.SetJobID(rrs.getInt("jobID"));
                Obj.SetUserName(rrs.getString("userName"));
                R.add(Obj);
            }
            return R;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static boolean RateApp(Integer B){
        try
        {
            String Query1="UPDATE jobapplication SET rating=? WHERE appID=?";
            PreparedStatement st1=myConnection.prepareStatement(Query1);
            st1.setInt(1,5);
            st1.setInt(2,B);
            int b=st1.executeUpdate();
           // Statement st = myConnection.createStatement();
           // st.execute("UPDATE jobapplication SET rating='"+5+"' WHERE appID='"+B+"'");
            return true;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public static ArrayList<JobApplication> ViewAppRating() {
        try
        {
            Statement st = myConnection.createStatement();
            ResultSet rrs=st.executeQuery("SELECT * FROM jobapplication order by jobID ASC");
            ArrayList<JobApplication> R=new ArrayList<>();
            while(rrs.next())
            {
                JobApplication Obj=new JobApplication();
                Obj.SetAppID(rrs.getInt("appID"));
                Obj.SetJobID(rrs.getInt("jobID"));
                Obj.SetUserName(rrs.getString("userName"));
                Obj.SetRating(rrs.getInt("rating"));
                R.add(Obj);
            }
            return R;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static ArrayList<JobApplication> ReviewTopApp() {
        try
        {
            //Statement st = myConnection.createStatement();
            //ResultSet rrs=st.executeQuery("SELECT * FROM jobapplication where rating='"+5+"' order by jobID ASC");
            String qu = "SELECT * FROM jobapplication where rating=? order by jobID ASC";
            PreparedStatement st=myConnection.prepareStatement(qu);
            st.setInt(1,5);
            ResultSet rrs= st.executeQuery();

            ArrayList<JobApplication> R=new ArrayList<>();
            while(rrs.next())
            {
                JobApplication Ob=new JobApplication();
                Ob.SetAppID(rrs.getInt("appID"));
                Ob.SetJobID(rrs.getInt("jobID"));
                Ob.SetUserName(rrs.getString("userName"));
                Ob.SetRating(rrs.getInt("rating"));
                R.add(Ob);
            }
            return R;
        }
        catch (SQLException ex)
        {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}