package servlets;

import DB.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateAuthorServlet")
public class UpdateAuthorServlet extends HttpServlet {
    private DBManager db;

    public UpdateAuthorServlet(){
        db=new DBManager();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("author_name");
        int id=Integer.parseInt(request.getParameter("author_id"));
        db.updateAuthor(id,name);
        response.sendRedirect("load?mod_page=mauthor");
    }


}
