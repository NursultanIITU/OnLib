<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1251 /">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/font-awesome.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Home</title>
</head>
<body>
<div class="container">
    <jsp:include page="navigation.jsp"></jsp:include>
    <div class="row" style="margin-top: 20px;">


        <div class="col-md-8">


            <div class="card mb-4">
                <div class="card-body">
                    <h2 class="card-title">
                        Competition for the best name of the new university</h2>
                    <p class="card-text">
                        In connection with the opening of a new university of information technologies in the capital Nur-Sultan, we are announcing a competition for the best name for a new university!
                        All you need to do:
                        1) Come up with a name
                        2) Fill out the form
                        3) Wait for the results of the competition
                        The most original and best name to receive a valuable prize in the form of 50 000 tenge!
                        Deadline April 10, 2019!</p>
                    <a href="#" class="btn btn-primary">Read More &rarr;</a>
                </div>
                <div class="card-footer text-muted">
                    Posted on Wednesday, April 3, 2019, 12:33 by
                    <a href="#"> Mikhail Sabyanin </a>
                </div>
            </div>



            <div class="card mb-4">
                <div class="card-body">
                    <h2 class="card-title">
                        Elections</h2>
                    <p class="card-text">
                        Hello, dear students!
                        In connection with the termination of the powers of the current President of the Youth Organization of the International University of Information Technologies Tynyshbaeva Elnura, we announce the early presidential elections to be held on April 26!
                        Applications for participation in elections are accepted until April 14, inclusive, in the following format:
                        1. Last name, first name
                        2. Group
                        3. Portfolio of the work done while studying at MUIT
                        Applications to bring to the PR department (room 105):
                        Vladimir - 87089853386</p>
                    <a href="#" class="btn btn-primary">Read More &rarr;</a>
                </div>
                <div class="card-footer text-muted">
                    Posted on Wednesday, April 10, 2019, 12:35 by
                    <a href="#"> Mikhail Sabyanin </a>
                </div>
            </div>

            <div class="card mb-4">
                <div class="card-body">
                    <h2 class="card-title">
                        Mobility to Germany</h2>
                    <p class="card-text">
                        In connection with the opening of a new university of information technologies in the capital Nur-Sultan, we are announcing a competition for the best name for a new university!
                        All you need to do:
                        1) Come up with a name
                        2) Fill out the form
                        3) Wait for the results of the competition
                        The most original and best name to receive a valuable prize in the form of 50 000 tenge!
                        Deadline April 10, 2019!</p>
                    <a href="#" class="btn btn-primary">Read More &rarr;</a>
                </div>
                <div class="card-footer text-muted">
                    Posted on Wednesday, April 3, 2019, 12:33 by
                    <a href="#"> Mikhail Sabyanin </a>
                </div>
            </div>




        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

            <!-- Search Widget -->
            <div class="card my-4">
                <h5 class="card-header">Search</h5>
                <div class="card-body">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
                    </div>
                </div>
            </div>



        </div>

    </div>
    <!-- /.row -->


</div>


<div class="modal fade" id="login-modal-moderator" tabindex="-1" role="dialog" aria-labelledby="login-modalTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="login-modal-moderatorTitle">Moderator Sign Up</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="moderator_sign_in" method="post">
                    <div class="form-group">
                        <label for="" class="col-form-label">Email:</label>
                        <input type="text" name="email" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="" class="col-form-label">Password:</label>
                        <input type="password" name="password" class="form-control">
                    </div>
                    <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary" >Sign In</button>
            </div>
            </form>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="login-modalTitle">Sign In</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form  action="auth" method="post">
                    <div class="form-group">
                        <label for="" class="col-form-label">Email:</label>
                        <input type="text" name="email" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="" class="col-form-label">Password:</label>
                        <input type="password" name="password" class="form-control">
                    </div>

                <%
                    String error=request.getParameter("error");
                    if(error!=null){
                        if(error.equals("1")){
                            out.print("<b style='color:red; font-style:72px;'>Username or password is not correct</b>");
                        }
                    }
                %>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary" >Sign In</button>
            </div>
            </form>
        </div>
    </div>
</div>



<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitle">Sign Up</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="to_add_user" method="post">
                    <div class="form-group">
                        <label for="" class="col-form-label">Student ID:</label>
                        <input type="text" name="student_id" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="" class="col-form-label">Fullname:</label>
                        <input type="text" name="full_name" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="" class="col-form-label">Email:</label>
                        <input type="text" name="email" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="" class="col-form-label">Password:</label>
                        <input type="password" name="password" class="form-control">
                    </div>




            </div>
            <div class="modal-footer">

                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary">Sign Up</button>
                </form>
            </div>
        </div>
    </div>
</div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="assets/js/bootstrap.min.js"> </script>
<script src="assets/js/bootstrap.bundle.js"> </script>
<%
    String errors=request.getParameter("error");
    if(errors!=null){
        if(errors.equals("1")){
            out.print("<script> $(document).ready(function(){ $('#login-modal').modal();}); </script>");
        }
    }
%>
</body>
</html>