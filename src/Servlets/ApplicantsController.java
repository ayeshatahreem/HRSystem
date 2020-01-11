package Servlets;

import DatabaseConnection.DatabaseConnection;
import Model.JobApplication;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by ayesh on 3/17/2017.
 */
@WebServlet(name = "ApplicantsController")
public class ApplicantsController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try {
                out.println(DatabaseConnection.connect());
                ArrayList<JobApplication> S_Apps = DatabaseConnection.ReviewApp();
                request.setAttribute("S_Apps", S_Apps);
                request.getRequestDispatcher("SearchAppResults.jsp").forward(request, response);
            }
            catch (ClassNotFoundException ex)
            {
                request.getRequestDispatcher("Error.jsp").forward(request, response);
                Logger.getLogger(SignUp.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
