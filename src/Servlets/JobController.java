package Servlets;
import Model.Job;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import DatabaseConnection.DatabaseConnection;
import java.io.PrintWriter;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
/**
 * Created by ayesh on 3/10/2017.
 */
@WebServlet(name = "JobController")
public class JobController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try
            {
                out.println(DatabaseConnection.connect());
                String T= request.getParameter("tit0");
                String Q= request.getParameter("qua0");
                String E=  request.getParameter("exp0");
                String S= request.getParameter("des0");
                String D= request.getParameter("dea0");
                Job J = new Job();
                /*J.SetJobTitle(T);
                J.SetJobQualification(Q);
                J.SetJobExperience(E);
                J.SetJobDescription(S);
                J.SetJobDeadline(D); */
                J.SetJobTitle(Jsoup.clean(T,Whitelist.basic()));
                J.SetJobQualification(Jsoup.clean(Q,Whitelist.basic()));
                J.SetJobExperience(Jsoup.clean(E,Whitelist.basic()));
                J.SetJobDescription(Jsoup.clean(S,Whitelist.basic()));
                J.SetJobDeadline(Jsoup.clean(D,Whitelist.basic()));

                out.println(DatabaseConnection.PostJob(J));
                response.sendRedirect("HRPDashboard.jsp");
              //  request.getRequestDispatcher("home.jsp").forward(request, response);
            }
            catch (ClassNotFoundException ex)
            {
                System.out.println("9");
                request.getRequestDispatcher("Error.jsp").forward(request, response);
            }
        }
    }
}