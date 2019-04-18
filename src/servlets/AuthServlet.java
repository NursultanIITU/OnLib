package servlets;

import DB.DBManager;
import entities.Users;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AuthServlet")
public class AuthServlet extends HttpServlet {
    private DBManager db;
    public AuthServlet(){
        db=new DBManager();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        Users user=db.getUserByEmailAndPassword1(email,password);

        if(user!=null){
            HttpSession session=request.getSession();
            session.setAttribute("userData", user);
            response.sendRedirect("load?page=dashboard");
        }else{
            response.sendRedirect("load?error=1");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
