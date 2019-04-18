package servlets;

import DB.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddAuthorServlet")
public class AddAuthorServlet extends HttpServlet {
    private DBManager db;

    public AddAuthorServlet(){
        db=new DBManager();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String author_name=request.getParameter("author_name");
        System.out.println(author_name);
         db.addAuthor(author_name);
         response.sendRedirect("load?mod_page=mauthor");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
