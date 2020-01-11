package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.JobApplication;
import DatabaseConnection.DatabaseConnection;
import Model.User;
import Model.Email;
/**
 * Created by ayesh on 3/14/2017.
 */
@WebServlet(name = "ApplyJob")
public class ApplyJob extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
            System.out.println("0000");
            String [] Applied =request.getParameterValues("Apply");
            Integer JID=0;
            for(int i=0; i<Applied.length;++i)
            {
                JID=Integer.valueOf(Applied[i]);
            }
            System.out.println(JID);
            HttpSession Session=request.getSession();
            String UName=(String)Session.getAttribute("Name");
            String UEmail=(String)Session.getAttribute("Email");
            if(UName==null)
            {
                request.getRequestDispatcher("Error.jsp").forward(request, response);
            }
            else
            {
                JobApplication B=new JobApplication();
                B.SetJobID(JID);
                B.SetUserName(UName);
                out.println(DatabaseConnection.connect());
                if(DatabaseConnection.ApplyJob(B))
                {
                    //email to applicant that he has successfully applied
                    String[] strArray = new String[]{UEmail};
                    String Link = "http://localhost:8080/SuccessfullyApplied?userName="+UName;
                    Email.send(strArray, "You have successfully applied for job! ", Link);
                    //notification email to HRP that this user has successfully applied
                    String[] strArray1 = new String[]{UEmail};
                    String Link1 = "Dear HRP !! ";
                    Email.send(strArray1,"There's a new applicant "+UName+"for Job ID "+JID, Link1);
                    request.getRequestDispatcher("home.jsp").forward(request, response);
                }
            }
        }
        catch (ClassNotFoundException ex)
        {
            request.getRequestDispatcher("Error.jsp").forward(request, response);
            Logger.getLogger(SignUp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}