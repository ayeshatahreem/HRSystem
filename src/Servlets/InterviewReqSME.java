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
 * Created by ayesh on 3/15/2017.
 */
@WebServlet(name = "InterviewReqSME")
public class InterviewReqSME extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          /*  String N= request.getParameter("Name");
            String E= request.getParameter("email");
            String UT=  request.getParameter("subject");
            String P= request.getParameter("message"); */

            String N = (Jsoup.clean(request.getParameter("Name"),Whitelist.basic()));
            String E = (Jsoup.clean(request.getParameter("email"),Whitelist.basic()));
            String UT = (Jsoup.clean(request.getParameter("subject"),Whitelist.basic()));
            String P= (Jsoup.clean(request.getParameter("message"),Whitelist.basic()));

            String[] strArray = new String[]{E};
            String Link = "Dear SME ! " + N + " !  " + P + ". Click here to visit the website ! " + "http://localhost:8080/AuthenticatingSMEReq?userName=" + N ;
            Email.send(strArray, UT, Link);
            request.getRequestDispatcher("HRPDashboard.jsp").forward(request, response);
        }
    }
}
