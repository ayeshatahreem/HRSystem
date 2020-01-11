package Servlets;

import Model.Email;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
/**
 * Created by ayesh on 3/11/2017.
 */
@WebServlet(name = "InterviewCallToApp")
public class InterviewCallToApp extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          /*String N= request.getParameter("qName");
            String E= request.getParameter("qEmail");
            String UT=  request.getParameter("qsubject");
            String P= request.getParameter("qmessage");  */

            String N = (Jsoup.clean(request.getParameter("qName"),Whitelist.basic()));
            String E = (Jsoup.clean(request.getParameter("qEmail"),Whitelist.basic()));
            String UT = (Jsoup.clean(request.getParameter("qsubject"),Whitelist.basic()));
            String P= (Jsoup.clean(request.getParameter("qmessage"),Whitelist.basic()));

            String[] strArray = new String[]{E};
            String Link = "Dear Applicant! " + N + "!  " + P + ". Click here to visit the website ! " + "http://localhost:8080/AuthenticateInterviewCallToApp?userName=" + N ;
            Email.send(strArray, UT, Link);
            request.getRequestDispatcher("HRPDashboard.jsp").forward(request, response);
        }
    }
}
