package servlets;

import DB.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GetBookServlet")
public class GetBookServlet extends HttpServlet {
    private DBManager db;

    public GetBookServlet(){
        db=new DBManager();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookName = request.getParameter("bookName").trim();
        String book=null;
        String greetings = "";
        if(bookName == null || "".equals(bookName)){
            bookName = "Wrong ID";
        }
        if(bookName!=null){
            book=db.getBook(bookName);
            if(book!=null){
                greetings+=book;
            }else if(book==null){
                greetings="Wrong input";
            }
        }

        response.setContentType("text/plain");
        response.getWriter().write(greetings);
    }
}
