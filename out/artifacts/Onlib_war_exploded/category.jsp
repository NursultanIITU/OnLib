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
            <li class="breadcrumb-item active" aria-current="page">Add Category</li>
        </ol>
    </nav>
    <%
        String error=request.getParameter("success");
        if(error!=null){
            if(error.equals("1")){
                out.print("<b style='color:red; font-style:72px;'>Author added!!!</b>");
            }
        }
    %>
    <form action="to_add_category" method="post" class="well">
        <div class="form-group ">
            <label>Category Name</label>
            <input type="text"  name="cname" class="form-control">
        </div>
        <div class="form-group">
            <label>Status</label>
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