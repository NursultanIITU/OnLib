<%@ page import="entities.Categories" %>
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
    <title>Edit Category</title>
</head>
<body>
<div class="container">
    <jsp:include page="navigation.jsp"></jsp:include>


    <nav aria-label="breadcrumb" style="margin-top: 30px;">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Moderator</a></li>
            <li class="breadcrumb-item active" aria-current="page">Update Category</li>
        </ol>
    </nav>
    <%
        Categories c=(Categories)request.getAttribute("category");
    %>
    <form action="update_category" method="post" class="well">
        <div class="form-group ">
            <input type="hidden"  name="id"  value="<%=c.getId()%>" class="form-control">
        </div>
        <div class="form-group ">
            <label>Category Name</label>
            <input type="text"  name="name"  value="<%=c.getName()%>" class="form-control">
        </div>
        <div class="form-group">
            <label>Status</label>
            <%
               if(c.getStatus()==1){
            %>
            <div class="radio">
                <label>
                    <input type="radio" name="status" id="status" value="1" checked="checked">Active
                </label>
            </div>
            <div class="radio">
                <label>
                    <input type="radio" name="status" id="status" value="0">Inactive
                </label>
            </div>
            <%}else {%>
            <div class="radio">
                <label>
                    <input type="radio" name="status" id="status" value="1" >Active
                </label>
            </div>
            <div class="radio">
                <label>
                    <input type="radio" name="status" id="status" value="0" checked="checked">Inactive
                </label>
            </div>

            <%}%>

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