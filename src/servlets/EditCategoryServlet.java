package servlets;

import DB.DBManager;
import entities.Categories;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditCategoryServlet")
public class EditCategoryServlet extends HttpServlet {
    private DBManager db;

    public EditCategoryServlet(){
        db=new DBManager();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       int id=Integer.parseInt(request.getParameter("id"));
        Categories c=db.getCategoryByID(id);
        request.setAttribute("category",c);
        request.getRequestDispatcher("editcategory.jsp").forward(request,response);
    }
}
