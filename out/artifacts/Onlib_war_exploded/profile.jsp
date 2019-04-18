<%@ page import="entities.Users" %><%
    Users user=(Users)session.getAttribute("userData");
%>

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
            <li class="breadcrumb-item active" aria-current="page">Profile</li>
        </ol>
    </nav>

        <div class="container bootstrap snippet">

            <div class="row">
                <div class="col-sm-3">

                    <div class="text-center">
                        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
                        <input type="file" class="text-center center-block file-upload" style="margin-top: 5px; width: 57%;">
                    </div></hr><br>



                </div>

                <div class="col-md-9">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>My Profile</h4>
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <form method="post" action="update_profile">
                                        <div class="form-group row">
                                            <label for="username" class="col-4 col-form-label">Student ID</label>
                                            <div class="col-8">
                                                <span><%=user.getStudentID()%></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="name" class="col-4 col-form-label">Reg Date:</label>
                                            <div class="col-8">
                                                <span> <%=user.getReg_date()%> </span>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="name" class="col-4 col-form-label">Last Updation Date :</label>
                                            <div class="col-8">
                                                <span> <%=user.getUpdate_date()%> </span>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-4 col-form-label">Profile Status :</label>
                                            <div class="col-8">
                                                <span style="color: green"> Active </span>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label  class="col-4 col-form-label">Enter Full Name</label>
                                            <div class="col-8">
                                                <input id="fullname" name="fullname" placeholder="Full Name" class="form-control here" type="text" value="<%=user.getFullname()%>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="text" class="col-4 col-form-label">Mobile No.</label>
                                            <div class="col-8">
                                                <input id="text" name="mobile" placeholder="Mobile Number" class="form-control here" required="required" type="text" value="<%=user.getMob_number()%>">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="email" class="col-4 col-form-label">Email*</label>
                                            <div class="col-8">
                                                <input id="email" name="email" placeholder="Email" class="form-control here" autocomplete="off" required readonly type="email" value="<%=user.getEmail()%>">
                                            </div>
                                        </div>


                                        <div class="form-group row">
                                            <div class="offset-4 col-8">
                                                <button name="submit" type="submit" class="btn btn-primary">Update My Profile</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>






            </div>

        </div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="assets/js/bootstrap.min.js"> </script>
<script src="assets/js/bootstrap.bundle.js"> </script>
        <script src="assets/js/script.js"> </script>
</body>
</html>