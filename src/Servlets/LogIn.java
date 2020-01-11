package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import DatabaseConnection.DatabaseConnection;
import Model.User;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
/**
 * Created by ayesh on 3/1/2017.
 */
@WebServlet(name = "LogIn")
public class LogIn extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String N = request.getParameter("uname");
        String P = request.getParameter("password");
        User U = new User();
       /* U.SetUserName(N);
        U.SetUserPassword(P); */
        U.SetUserName(Jsoup.clean(N,Whitelist.basic()));
        U.SetUserPassword(Jsoup.clean(P,Whitelist.basic()));
        try
        {
            DatabaseConnection.connect();
        }
        catch (ClassNotFoundException ex)
        {
            Logger.getLogger(LogIn.class.getName()).log(Level.SEVERE, null, ex);
        }
        Integer Status = DatabaseConnection.UserLogIn(U);
        response.getWriter().print(Status);
        if (Status != -1) {
            HttpSession Session = request.getSession();
            Session.setAttribute("Type", Status);
            Session.setAttribute("Name", U.GetUserName());
            Session.setAttribute("Email", U.GetUserEmail());
            Session.setAttribute("Password", U.GetUserPassword());
            Session.setAttribute("Category", U.GetUserCategory());
            if (Status == 0 || Status == 1 || Status == 3) {
                request.getRequestDispatcher("home.jsp").forward(request, response);
            }
            else if (Status == 2) {
                request.getRequestDispatcher("Profile.jsp").forward(request, response);
            }
        }
        else
        {
            request.getRequestDispatcher("Error.jsp").forward(request, response);
        }
    }
}