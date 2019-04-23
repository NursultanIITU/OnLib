package servlets;

import DB.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ToIssueBookServlet")
public class ToIssueBookServlet extends HttpServlet {
    private DBManager db;

    public ToIssueBookServlet(){
        db=new DBManager();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          String studentID=request.getParameter("studentID");
          int isbn=Integer.parseInt(request.getParameter("isbn"));
          db.addIssueBook(studentID,isbn);
          response.sendRedirect("load?mod_page=missue");
    }


}
