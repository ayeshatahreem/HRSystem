package Servlets;

import DatabaseConnection.DatabaseConnection;
import Model.User;
import Model.Email;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
/**
 * Created by ayesh on 3/3/2017.
 */
@WebServlet(name = "SignUp")
public class SignUp extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try
            {
                out.println(DatabaseConnection.connect());
                String N= request.getParameter("uname");
                String E= request.getParameter("email");
                String UT= request.getParameter("UserType");
                String P= request.getParameter("password");
                User U = new User();
                /*U.SetUserName(N);
                U.SetUserEmail(E);
                U.SetUserPassword(P);
                U.SetUserCategory(UT); */

                U.SetUserName(Jsoup.clean(N,Whitelist.basic()));
                U.SetUserEmail(Jsoup.clean(E,Whitelist.basic()));
                U.SetUserPassword(Jsoup.clean(P,Whitelist.basic()));
                U.SetUserCategory(Jsoup.clean(UT,Whitelist.basic()));

                String[] strArray = new String[]{U.GetUserEmail()};
                String Link = "http://localhost:8080/Authenticate?userName="+U.GetUserName();
                Email.send(strArray, "Welcome to CodeClan! Email approval required! ", Link);
                out.println(DatabaseConnection.InsertUser(U));
                request.getRequestDispatcher("home.jsp").forward(request, response);
            }
            catch (ClassNotFoundException ex)
            {
                request.getRequestDispatcher("Error.jsp").forward(request, response);
            }
        }
    }
}