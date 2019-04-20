package servlets;

import DB.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddBookServlet")
public class AddBookServlet extends HttpServlet {
    private DBManager db;

    public AddBookServlet(){
        db=new DBManager();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("book_name");
        int catID=Integer.parseInt(request.getParameter("category"));
        int authorID=Integer.parseInt(request.getParameter("author"));
        int isbn=Integer.parseInt(request.getParameter("isbn"));
        int price=Integer.parseInt(request.getParameter("price"));
        db.addBook(name,catID,authorID,isbn,price);
        response.sendRedirect("load?mod_page=mbook");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
