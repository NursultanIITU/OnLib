package servlets;

import DB.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteAuthorServlet")
public class DeleteAuthorServlet extends HttpServlet {
    private DBManager db;

    public DeleteAuthorServlet(){
        db=new DBManager();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int author_id=Integer.parseInt(request.getParameter("author_id"));
        db.deleteAuthor(author_id);
        response.sendRedirect("load?mod_page=mauthor");
    }
}
