package servlets;

import DB.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddCategoryServlet")
public class AddCategoryServlet extends HttpServlet {

    private DBManager db;

    public AddCategoryServlet(){
        db=new DBManager();
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String name=request.getParameter("cname");
       int status=Integer.parseInt(request.getParameter("status"));
       db.addCategory(name,status);
        response.sendRedirect("load?mod_page=mcategory");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
