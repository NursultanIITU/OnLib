package servlets;

import DB.DBManager;
import entities.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
    private DBManager db;

    public UpdateProfileServlet(){
        db=new DBManager();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname=request.getParameter("fullname");
        String mobile=request.getParameter("mobile");
        Users user=(Users)((HttpServletRequest)request).getSession().getAttribute("userData");
        Users newStudent=db.updateProfile(user.getStudentID(),fullname,mobile);
        request.getSession().removeAttribute("userData");
        HttpSession session=request.getSession();
        session.setAttribute("userData", newStudent);

        response.sendRedirect("load?page=profile");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
