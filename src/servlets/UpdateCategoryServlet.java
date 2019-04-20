package servlets;

import DB.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateCategoryServlet")
public class UpdateCategoryServlet extends HttpServlet {
    private DBManager db;

    public UpdateCategoryServlet(){
        db=new DBManager();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        int id=Integer.parseInt(request.getParameter("id"));
        int status=Integer.parseInt(request.getParameter("status"));

        db.updateCategory(id,name,status);
        response.sendRedirect("load?mod_page=mcategory");
    }


}
