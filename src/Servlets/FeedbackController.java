package Servlets;
import DatabaseConnection.DatabaseConnection;
import java.io.PrintWriter;
import Model.FeedbackForm;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
/**
 * Created by ayesh on 3/13/2017.
 */
@WebServlet(name = "FeedbackController")
public class FeedbackController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try
            {
                out.println(DatabaseConnection.connect());
                String T= request.getParameter("tit0");
                String Q= request.getParameter("emp0");
                String E= request.getParameter("pos0");
                String S= request.getParameter("sal0");
                String D= request.getParameter("wor0");
                FeedbackForm J = new FeedbackForm();
                /* J.SetJobPosition(T);
                J.SetEmpName(Q);
                J.SetPositionRank(E);
                J.SetSalary(S);
                J.SetWorkingHours(D); */
                J.SetJobPosition(Jsoup.clean(T,Whitelist.basic()));
                J.SetEmpName(Jsoup.clean(Q,Whitelist.basic()));
                J.SetPositionRank(Jsoup.clean(E,Whitelist.basic()));
                J.SetSalary(Jsoup.clean(S,Whitelist.basic()));
                J.SetWorkingHours(Jsoup.clean(D,Whitelist.basic()));
                out.println(DatabaseConnection.AddFeedback(J));
                response.sendRedirect("HRMDashboard.jsp");
            }
            catch (ClassNotFoundException ex)
            {
                request.getRequestDispatcher("Error.jsp").forward(request, response);
                Logger.getLogger(SignUp.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}