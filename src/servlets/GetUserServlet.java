package servlets;

import DB.DBManager;
import entities.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GetUserServlet")
public class GetUserServlet extends HttpServlet {
    private DBManager db;

    public GetUserServlet(){
        db=new DBManager();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userName = request.getParameter("userName").trim();
        Users user=null;
        String greetings = "Hello ";
        if(userName == null || "".equals(userName)){
            userName = "Guest";
        }
        if(userName!=null){
            user=db.getUserByID(userName);
            if(user!=null){
                greetings+=user.getFullname();
            }else if(user==null){
                greetings="Wrong ID";
            }
        }

        response.setContentType("text/plain");
        response.getWriter().write(greetings);
    }
}
