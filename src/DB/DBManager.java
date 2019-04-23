package DB;
import entities.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBManager {
    private Connection conn;

    public DBManager(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/onlib", "root", "");
        }catch(Exception ex){

        }
    }

    public void addUser(String email, String password, String name, String surname, int age){
        System.out.println("Add User");
        try{
            Statement st=conn.createStatement();
            String sql="INSERT INTO users(id,email,password,name,surname,age) VALUES(NULL, \""+email+"\",   SHA1(\""+password+"\"),\""+name+"\",\""+surname+"\",\""+age+"\")";
            st.executeUpdate(sql);

            st.close();
        }catch(Exception e){
          e.printStackTrace();
        }
    }

    public List<Users> userList(){
        List<Users>lists=new ArrayList<Users>();
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT id,student_id, full_name, email,password, mob_number,status,reg_date, update_date FROM students");

            while(rs.next()){
                int id=rs.getInt("id");
                String student_id=rs.getString("student_id");
                String full_name=rs.getString("full_name");
                String email=rs.getString("email");
                String password=rs.getString("password");
                String mobile=rs.getString("mob_number");
                int status=rs.getInt("status");
                String reg_date=rs.getString("reg_date");
                String update_date=rs.getString("update_date");


                Users u=new Users(id, student_id, full_name, email, password, mobile, status,reg_date,update_date);
                lists.add(u);

            }
            st.close();

        }catch(Exception e){

        }
        return lists;

    }

    public Users getUserByEmailAndPassword(String email, String password){
        Users foundUser=null;
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT id,student_id, full_name, email,password, mob_number, status, reg_date, update_date FROM students WHERE email=\""+email+"\" AND password=SHA1(\""+password+"\")");

            while(rs.next()){
                int id=rs.getInt("id");
                String student_id=rs.getString("student_id");
                String full_name=rs.getString("full_name");
                String email1=rs.getString("email");
                String password1=rs.getString("password");
                String mob_number=rs.getString("mob_number");
                int status=rs.getInt("status");
                String reg_date=rs.getString("reg_date");
                String update_date=rs.getString("update_date");

                Users u=new Users(id,student_id,full_name,email1,password1,mob_number,status,reg_date,update_date);
                foundUser=u;
            }
            st.close();

        }catch(Exception e){
           e.printStackTrace();
        }
        return foundUser;
    }
    public Users getUserByEmailAndPassword1(String email, String password){
        Users foundUser=null;
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT id,student_id, full_name, email,password,mob_number, status, reg_date,update_date FROM students WHERE email=\""+email+"\" AND password=\""+password+"\"");

            while(rs.next()){
                int  id=rs.getInt("id");
                String student_id=rs.getString("student_id");
                String full_name=rs.getString("full_name");
                String useremail=rs.getString("email");
                String userpassword=rs.getString("password");
                String mob_number=rs.getString("mob_number");
                int status=rs.getInt("status");
                String reg_date=rs.getString("reg_date");
                String update_date=rs.getString("update_date");


                Users u=new Users(id,student_id,full_name,useremail, userpassword,mob_number,status,reg_date,update_date);
                foundUser=u;

            }
            st.close();

        }catch(Exception e){

        }
        return foundUser;
    }

    public Users updateProfile(String student_id,String full_name, String  mobile){

        try{
            Statement st=conn.createStatement();
            String sql="UPDATE students SET full_name=\""+full_name+"\", mob_number=\""+mobile +"\" WHERE  student_id=\""+student_id+"\"";
            int rowsUpdated = st.executeUpdate(sql);
            if (rowsUpdated == 0) {
                System.out.println("Profile does not updated");
            } else {
                System.out.println("Profile updated");
            }


        }catch(Exception e){
          e.printStackTrace();
        }
        Users newStudent=null;
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT id,student_id, full_name, email,password,mob_number, status, reg_date,update_date FROM students WHERE student_id=\""+student_id+"\"");

            while(rs.next()){
                int  id=rs.getInt("id");
                String student_id1=rs.getString("student_id");
                String full_name1=rs.getString("full_name");
                String useremail=rs.getString("email");
                String userpassword=rs.getString("password");
                String mob_number=rs.getString("mob_number");
                int status=rs.getInt("status");
                String reg_date=rs.getString("reg_date");
                String update_date=rs.getString("update_date");


                Users u=new Users(id,student_id,full_name,useremail, userpassword,mob_number,status,reg_date,update_date);
                newStudent=u;

            }
            st.close();

        }catch(Exception e){

        }
        return  newStudent;
    }

    public Moderator getModeratorByEmailAndPassword(String email, String password){
        Moderator found=null;
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT id,full_name, email,password, username,updation_date FROM moderators WHERE email=\""+email+"\" AND password=\""+password+"\"");

            while(rs.next()){
                int id=rs.getInt("id");
                String fullname=rs.getString("full_name");
                String memail=rs.getString("email");
                String mpassword=rs.getString("password");
                String username=rs.getString("username");
                String updation_date=rs.getString("updation_date");
                Moderator moderator=new Moderator(id,fullname,email,password,username,updation_date);
                found=moderator;
            }
            st.close();

        }catch(Exception e){
          e.printStackTrace();
        }
        return found;
    }


    public void addAuthor(String author_name){
        try{
            Statement st=conn.createStatement();
            String sql="INSERT INTO authors(id,author_name) VALUES(NULL, \""+author_name+"\")";
            st.executeUpdate(sql);

            st.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public List<Authors> AuthorList(){
        List<Authors>lists=new ArrayList<Authors>();
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT id,author_name, creation_date, updation_date FROM authors");

            while(rs.next()){
                int id=rs.getInt("id");
                String author_name=rs.getString("author_name");
                String creation_date=rs.getString("creation_date");
                String updation_date=rs.getString("updation_date");

                 Authors a=new Authors(id,author_name,creation_date,updation_date);
                lists.add(a);

            }
            st.close();

        }catch(Exception e){

        }
        return lists;

    }

    public void addCategory(String cat_name,int status){
        try{
            Statement st=conn.createStatement();
            String sql="INSERT INTO categories(id,name,status) VALUES(NULL, \""+cat_name+"\",\""+status+"\")";
            st.executeUpdate(sql);

            st.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public List<Categories> CategoryList(){
        List<Categories>lists=new ArrayList<Categories>();
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT id,name, status, creation_date, updation_date FROM categories");

            while(rs.next()){
                int id=rs.getInt("id");
                String name=rs.getString("name");
                int status=rs.getInt("status");
                String creation_date=rs.getString("creation_date");
                String updation_date=rs.getString("updation_date");

               Categories c=new Categories(id,name,status,creation_date,updation_date);
                lists.add(c);

            }
            st.close();

        }catch(Exception e){
           e.printStackTrace();
        }
        return lists;

    }

    public Authors getAuthorByID(int author_id){
        System.out.println("heree");
        Authors foundAuthor=null;
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT id, author_name, creation_date,updation_date FROM authors WHERE id=\""+author_id+"\"");

            while (rs.next()){
               int aid=rs.getInt("id");
               String name=rs.getString("author_name");
               String creation_date=rs.getString("creation_date");
               String updation_Date=rs.getString("updation_date");

               Authors a=new Authors(aid,name,creation_date,updation_Date);
                 foundAuthor=a;
            }
            st.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return foundAuthor;
    }


    public void deleteAuthor(int id){
        try{
            Statement st=conn.createStatement();
            String sql="DELETE FROM authors WHERE id=\""+id+"\"";
            int rowsUpdated = st.executeUpdate(sql);
            if (rowsUpdated == 0) {
                System.out.println("authors does not exist");
            } else {
                System.out.println("authors deleted");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public void updateAuthor(int id,String name){
        try{
            Statement st=conn.createStatement();
            String sql="UPDATE authors SET author_name=\""+name+"\" WHERE id=\""+id+"\"";
            int rowsUpdated=st.executeUpdate(sql);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void deleteCategory(int id){
        try{
            Statement st=conn.createStatement();
            String sql="DELETE FROM categories WHERE id=\""+id+"\"";
            int rowsUpdated = st.executeUpdate(sql);
            if (rowsUpdated == 0) {
                System.out.println("categories does not exist");
            } else {
                System.out.println("categories deleted");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public Categories getCategoryByID(int category_id){
        Categories foundcategory=null;
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT id, name, status, creation_date,updation_date FROM categories WHERE id=\""+category_id+"\"");

            while (rs.next()){
                int aid=rs.getInt("id");
                String name=rs.getString("name");
                int status=rs.getInt("status");
                String creation_date=rs.getString("creation_date");
                String updation_Date=rs.getString("updation_date");

                Categories c=new Categories(aid,name, status,creation_date,updation_Date);
                foundcategory=c;
            }
            st.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return foundcategory;
    }

    public void updateCategory(int id,String name, int status){
        try{
            Statement st=conn.createStatement();
            String sql="UPDATE categories SET name=\""+name+"\", status=\""+status+"\"  WHERE id=\""+id+"\"";
            int rowsUpdated=st.executeUpdate(sql);
            st.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void addBook(String book_name,int catID, int authorID, int isbn,int price){
        try{
            Statement st=conn.createStatement();
            String sql="INSERT INTO books(id,book_name,catID,authorID,ISBN,price) VALUES(NULL, \""+book_name+"\",\""+catID+"\",\""+authorID+"\",\""+isbn+"\", \""+price+"\" )";
            st.executeUpdate(sql);

            st.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public List<Books> BookList(){
        List<Books>lists=new ArrayList<Books>();
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT books.book_name, categories.name,authors.author_name, books.ISBN, books.price, books.id as bookid from books join categories on categories.id=books.catID join authors on authors.id=books.authorID");

            while(rs.next()){
                int id=rs.getInt("bookid");
                String bookname=rs.getString("book_name");
                String catName=rs.getString("name");
                String authorName=rs.getString("author_name");
                int isbn=rs.getInt("ISBN");
                int price=rs.getInt("price");

                Books c=new Books(id,bookname,catName,authorName,isbn,price);
                lists.add(c);

            }
            st.close();

        }catch(Exception e){
            e.printStackTrace();
        }
        return lists;

    }

    public Users getUserByID(String studentsID){
        Users foundUser=null;
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT id,student_id, full_name, email,password, mob_number, status, reg_date, update_date FROM students WHERE student_id=\""+studentsID+"\"");

            while(rs.next()){
                int id=rs.getInt("id");
                String student_id=rs.getString("student_id");
                String full_name=rs.getString("full_name");
                String email1=rs.getString("email");
                String password1=rs.getString("password");
                String mob_number=rs.getString("mob_number");
                int status=rs.getInt("status");
                String reg_date=rs.getString("reg_date");
                String update_date=rs.getString("update_date");

                Users u=new Users(id,student_id,full_name,email1,password1,mob_number,status,reg_date,update_date);
                foundUser=u;
            }
            st.close();

        }catch(Exception e){
            e.printStackTrace();
        }
        return foundUser;
    }

    public String getBook(String book){
        String foundBook=null;
        try{
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("SELECT id,book_name, ISBN, price FROM books WHERE ISBN=\""+book+"\" OR book_name=\""+book+"\"");

            while(rs.next()){
                int id=rs.getInt("id");
                String book_name=rs.getString("book_name");
                int isbn=rs.getInt("ISBN");
                int price=rs.getInt("price");
                foundBook=book_name;
            }
            st.close();

        }catch(Exception e){
            e.printStackTrace();
        }
        return foundBook;
    }

    public void addIssueBook(String studentID,int isbn){
        try{
            Statement st=conn.createStatement();
            String sql="INSERT INTO issuedbooks(id,studentID,ISBN,returnStatus) VALUES(NULL, \""+studentID+"\",\""+isbn+"\",\""+0+"\")";
            st.executeUpdate(sql);

            st.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }



}
