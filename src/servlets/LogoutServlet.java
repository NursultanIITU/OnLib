package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LogoutServlet")
public class LogoutServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession()!=null && request.getSession().getAttribute("userData")!=null){
            request.getSession().removeAttribute("userData");
            response.sendRedirect("load");
        }else{
            response.sendRedirect("load?error=1");
        }
    }
}
