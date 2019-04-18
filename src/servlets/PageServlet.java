package servlets;

import DB.DBManager;
import entities.Authors;
import entities.Categories;
import entities.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PageServlet")
public class PageServlet extends HttpServlet {
    private DBManager db;

    public PageServlet(){
        db=new DBManager();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String jspPage="index";
        String page=request.getParameter("page");
        String mod_page=request.getParameter("mod_page");
        boolean userOnline=false,modOnline=false;
        userOnline=(boolean)request.getAttribute("userOnline");
        modOnline=(boolean)request.getAttribute("modOnline");
        if(page!=null && !page.equals("")){
            if(userOnline==true){
                jspPage="dashboard";

                if(page.equals("dashboard")){
                    jspPage="dashboard";
                }
                if(page.equals("profile")){
                    jspPage="profile";
                }
                if(page.equals("mybooks")){
                    jspPage="mybooks";
                }
            }
            else{
                if(page.equals("home")){
                    jspPage="index";
                }
            }
        }
        if(mod_page!=null && !mod_page.equals("")){
            if(modOnline==true){
                jspPage="mdashboard";

                if(mod_page.equals("mdashboard")){
                    jspPage="mdashboard";
                }
                if(mod_page.equals("author")){
                    jspPage="author";
                }

                if(mod_page.equals("mauthor")){
                    jspPage="mauthor";
                }
                if(mod_page.equals("category")){
                    jspPage="category";
                }

                if(mod_page.equals("mcategory")){
                    jspPage="mcategory";
                }

                if(mod_page.equals("missue")){
                    jspPage="missue";
                }

                if(mod_page.equals("regstudents")){
                    jspPage="regstudents";
                }

            }
            else{
                if(page.equals("home")){
                    jspPage="index";
                }
            }
        }

        List<Authors> authors=db.AuthorList();
        request.setAttribute("authors", authors);
        List<Categories> categories=db.CategoryList();
        request.setAttribute("categories", categories);
        List<Users> users=db.userList();
        request.setAttribute("users", users);
        System.out.println(jspPage);
        request.getRequestDispatcher(jspPage+".jsp").forward(request,response);
    }

}
