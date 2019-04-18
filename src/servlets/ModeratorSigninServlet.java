package servlets;

import DB.DBManager;
import entities.Moderator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ModeratorSigninServlet")
public class ModeratorSigninServlet extends HttpServlet {

    private DBManager db;

    public ModeratorSigninServlet(){
        db=new DBManager();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        Moderator mod=db.getModeratorByEmailAndPassword(email,password);
        if(mod!=null){
            HttpSession session=request.getSession();
            session.setAttribute("modData", mod);
            response.sendRedirect("load?mod_page=mdashboard");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
