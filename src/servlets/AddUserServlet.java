package servlets;

import DB.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddUserServlet")
public class AddUserServlet extends HttpServlet {

    private DBManager db;

    public AddUserServlet(){
        db=new DBManager();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String student_id = request.getParameter("student_id");
        String full_name = request.getParameter("full_name");
        String email = request.getParameter("email");
        String mob_number = request.getParameter("mob_number");
        String password = request.getParameter("password");
        db.addUser(student_id, full_name, email, mob_number, password);


        response.sendRedirect("load?page=home");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
