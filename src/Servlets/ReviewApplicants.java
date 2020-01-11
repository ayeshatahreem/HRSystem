package Servlets;

import DatabaseConnection.DatabaseConnection;
import Model.JobApplication;
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

/**
 * Created by ayesh on 3/11/2017.
 */
@WebServlet(name = "ReviewApplicants")
public class ReviewApplicants extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
            String [] Applied =request.getParameterValues("appid");
            Integer AID=0;
            for(int i=0; i<Applied.length;++i)
            {
                AID=Integer.valueOf(Applied[i]);
            }
                out.println(DatabaseConnection.connect());
                if(DatabaseConnection.RateApp(AID))
                    request.getRequestDispatcher("RateApplicants.jsp").forward(request, response);

        }
        catch (ClassNotFoundException ex)
        {
            request.getRequestDispatcher("Error.jsp").forward(request, response);
            Logger.getLogger(SignUp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}