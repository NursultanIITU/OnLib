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
    <title>Add Auhtor</title>
</head>
<body>
<div class="container">
    <jsp:include page="navigation.jsp"></jsp:include>


    <nav aria-label="breadcrumb" style="margin-top: 30px;">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Moderator</a></li>
            <li class="breadcrumb-item active" aria-current="page">Add Author</li>
        </ol>
    </nav>
    <%
        Authors author=(Authors)request.getAttribute("editauthor");
    %>
    <form action="updateauthor" method="post" class="well">
        <div class="form-group ">
            <input type="hidden"  name="author_id" value="<%=author.getId()%>" class="form-control">
        </div>
        <div class="form-group ">
            <label>Author Name</label>
            <input type="text"  name="author_name" value="<%=author.getName()%>" class="form-control">
        </div>
        <button type="submit" class="btn btn-success ">Update</button>
        <button type="button" class="btn btn-danger ">Close</button>
    </form>

</div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="assets/js/bootstrap.min.js"> </script>
<script src="assets/js/bootstrap.bundle.js"> </script>
</body>
</html>