<%@ page import="entities.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="entities.Authors" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/font-awesome.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Add Books</title>
</head>
<body>
<div class="container">
    <jsp:include page="navigation.jsp"></jsp:include>


    <nav aria-label="breadcrumb" style="margin-top: 30px;">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Moderator</a></li>
            <li class="breadcrumb-item active" aria-current="page">Add Book</li>
        </ol>
    </nav>

    <form action="to_add_book" method="post" class="well">

        <div class="form-group ">
            <label>Book Name<span style="color:red;">*</span></label>
            <input type="text"  name="book_name" class="form-control">
        </div>

        <div class="form-group ">
            <label>Book Category<span style="color:red;">*</span></label>
            <select class="form-control" name="category" required="required">
                <option value=""> Select Category</option>
                <%
                    List<Categories>categories=(List<Categories>)request.getAttribute("categories");
                    if(categories!=null){
                        for(Categories cat: categories){
                %>
                    <option value="<%=cat.getId()%>"> <%=cat.getName()%></option>
                <%
                        }
                    }
                %>
            </select>
        </div>

        <div class="form-group ">
            <label>Author<span style="color:red;">*</span></label>
            <select class="form-control" name="author" required="required">
                <option value=""> Select Author</option>
                <%
                    List<Authors>authors=(List<Authors>)request.getAttribute("authors");
                    if(authors!=null){
                        for(Authors a: authors){
                %>
                <option value="<%=a.getId()%>"> <%=a.getName()%></option>
                <%
                        }
                    }
                %>
            </select>
        </div>

        <div class="form-group">
            <label>Book Number<span style="color:red;">*</span></label>
            <input class="form-control" type="text" name="isbn"  required="required" autocomplete="off"  />
        </div>

        <div class="form-group">
            <label>Price<span style="color:red;">*</span></label>
            <input class="form-control" type="text" name="price" autocomplete="off"   required="required" />
        </div>

        <button type="submit" class="btn btn-success ">Save</button>
        <button type="button" class="btn btn-danger ">Close</button>
    </form>

</div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="assets/js/bootstrap.min.js"> </script>
<script src="assets/js/bootstrap.bundle.js"> </script>
</body>
</html>