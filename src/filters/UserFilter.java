package filters;

import DB.DBManager;

import entities.Moderator;
import entities.Users;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Nursultan
 */
public class UserFilter implements Filter {
    private FilterConfig filterConfig = null;
    private DBManager db;

    public void init(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
        db=new DBManager();
    }

    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain)
            throws IOException, ServletException {
        boolean userOnline=false,modOnline=false;
        Users user=(Users)((HttpServletRequest)request).getSession().getAttribute("userData");
        Moderator moderator=(Moderator)((HttpServletRequest)request).getSession().getAttribute("modData");
        System.out.println("Filtering user...");



        if(user!=null){
            Users tmpUser=db.getUserByEmailAndPassword1(user.getEmail(), user.getPassword());
            if(tmpUser!=null){
                userOnline=true;
                System.out.println("User Online");
            }
        }

        if(moderator!=null){
            Moderator tmpModerator=db.getModeratorByEmailAndPassword(moderator.getEmail(),moderator.getPassword());
            System.out.println(moderator);

            if(tmpModerator!=null){
                modOnline=true;
                System.out.println("Moderator Online");
            }
        }

        request.setAttribute("userOnline", userOnline);
        request.setAttribute("modOnline", modOnline);
        chain.doFilter(request, response);
    }

    public void destroy() {
    }





}
