package servlets;

import DB.DBManager;
import entities.Authors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditAuthorServlet")
public class EditAuthorServlet extends HttpServlet {
    private DBManager db;

    public EditAuthorServlet(){
        db=new DBManager();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          int author_id=Integer.parseInt(request.getParameter("author_id"));
          Authors author=db.getAuthorByID(author_id);
           System.out.println(author);

              request.setAttribute("editauthor", author);
              request.getRequestDispatcher("editauthor.jsp");

    }
}
