package servlets;

import DB.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteCategoryServlet")
public class DeleteCategoryServlet extends HttpServlet {
    private DBManager db;

    public DeleteCategoryServlet(){
        db=new DBManager();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          int id=Integer.parseInt(request.getParameter("id"));
          db.deleteCategory(id);
          response.sendRedirect("load?mod_page=mcategory");
    }
}
