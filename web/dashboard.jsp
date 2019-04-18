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
    <title>Profile</title>
</head>
<body>
<div class="container">
    <jsp:include page="navigation.jsp"></jsp:include>


    <nav aria-label="breadcrumb" style="margin-top: 30px;">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
        </ol>
    </nav>

        <div class="container bootstrap snippet">
    <div class="row">

        <div class="col-md-4 col-sm-4 col-xs-6">
            <div class="alert alert-warning back-widget-set text-center">
                <i class="fa fa-bars  fa-5x"></i>
                <h3>2</h3>
                Book Issued
            </div>
        </div>

        <div class="col-md-4 col-sm-4 col-xs-6">
            <div class="alert alert-info back-widget-set text-center">
                <i class="fa fa-recycle fa-5x"></i>
                <h3>2</h3>
                Books Not Returned Yet
            </div>
        </div>

        <div class="col-md-4 col-sm-4 col-xs-6">
            <div class="alert alert-info back-widget-set text-center">
                <i class="fa fa-archive fa-5x"></i>
                <h3>2</h3>
                Archieve
            </div>
        </div>

    </div>
    </div>
</div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="assets/js/bootstrap.min.js"> </script>
<script src="assets/js/bootstrap.bundle.js"> </script>
</body>
</html>