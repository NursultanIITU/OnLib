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
    <script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="assets/js/app-ajax.js" type="text/javascript"></script>
    <title>Issue Book</title>
</head>
<body>
<div class="container">
    <jsp:include page="navigation.jsp"></jsp:include>


    <nav aria-label="breadcrumb" style="margin-top: 30px;">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Moderator</a></li>
            <li class="breadcrumb-item active" aria-current="page">Issue New Book</li>
        </ol>
    </nav>

    <form action="to_issue_book" method="post" class="well">
        <div class="form-group">
            <label>Student id<span style="color:red;">*</span></label>
            <input type="text" id="userName" name="studentID" class="form-control" />
        </div>

        <div class="form-group">
            <div id="ajaxGetUserServletResponse" style="color: green;"></div>
        </div>

        <div class="form-group">
            <label>Book Name<span style="color:red;">*</span></label>
            <input type="text" id="bookName" name="isbn" class="form-control" />
        </div>

        <div class="form-group">
            <div id="ajaxGetBookServletResponse" style="color: green;"></div>
        </div>


        <button type="submit" class="btn btn-success ">Save</button>
        <button type="button" class="btn btn-danger ">Close</button>
    </form>



</div>



<script src="assets/js/bootstrap.min.js"> </script>
<script src="assets/js/bootstrap.bundle.js"> </script>
</body>
</html>