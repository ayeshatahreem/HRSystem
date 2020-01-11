package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by ayesh on 3/1/2017.
 */
@WebServlet(name = "LogOut")
public class LogOut extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession Session2=request.getSession();
            Session2.removeAttribute("Name");
            Session2.removeAttribute("Email");
            Session2.removeAttribute("Password");
            Session2.removeAttribute("Category");
            Session2.invalidate();
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}
