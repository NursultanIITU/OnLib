<style type="text/css">

    .dropbtn {
        background-color: #4CAF50;
        color: white;
        padding: 5px;
        font-size: 16px;
        border: none;
        cursor: pointer;
    }

    .dropdown {
        position: relative;

        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 169px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {background-color: #f1f1f1}

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover .dropbtn {
        background-color: #3e8e41;
    }
</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">ON<span style="color: red;">LIB</span></a>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">


        <%
            boolean userOnline=false, modonline=false;
            userOnline=(boolean)request.getAttribute("userOnline");
            modonline=(boolean)request.getAttribute("modOnline");
            if(userOnline){
        %>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="load?page=dashboard">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="load?page=profile" >Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="load?page=mybooks">My Books</a>
                </li>


                <div class="dropdown">
                    <button class="btn btn-outline-success">${sessionScope.userData.fullname}</button>
                    <div class="dropdown-content">
                        <a href="logout" style="color: red;">Logout</a>
                    </div>
                </div>

            </ul>
        <%
            } else if(modonline){
        %>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="load?mod_page=mdashboard">Dashboard</a>
            </li>

            <li id="parentDropdown" class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="" data-target="#parentDropdown" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Author
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a  href="load?mod_page=author" class="dropdown-item">Add Author</a>
                    <a  href="load?mod_page=mauthor"class="dropdown-item" >Manage Auhtors</a>
                </div>
            </li>

            <li id="parentDropdown1" class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="" data-target="#parentDropdown1" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Category
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                    <a  href="load?mod_page=category" class="dropdown-item">Add Category</a>
                    <a  href="load?mod_page=mcategory"class="dropdown-item" >Manage Category</a>
                </div>
            </li>

            <li id="parentDropdown3" class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="" data-target="#parentDropdown3" id="navbarDropdown3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Book
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
                    <a  href="load?mod_page=addbook" class="dropdown-item">Add Book</a>
                    <a  href="load?mod_page=mbook"class="dropdown-item" >Manage Books</a>
                </div>
            </li>

            <li id="parentDropdown2" class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="" data-target="#parentDropdown2" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Issue Book
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                    <a  href="load?mod_page=issue" class="dropdown-item">Issue new Book</a>
                    <a  href="load?mod_page=missue"class="dropdown-item" >Manage Issue Book</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="load?mod_page=addpost">Add Post</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="load?mod_page=regstudents">Reg Students</a>
            </li>

            <div class="dropdown">
                <button class="btn btn-outline-success">${sessionScope.modData.fullName}</button>
                <div class="dropdown-content">
                    <a href="logoutm" style="color: red;">Logout</a>
                </div>
            </div>


        </ul>

        <% } else if(userOnline==false && modonline==false){
        %>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0);" data-toggle="modal" data-target="#login-modal-moderator">Moderator Sign In</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0);" data-toggle="modal" data-target="#exampleModalCenter">Sign Up</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="javascript:void(0);" data-toggle="modal" data-target="#login-modal">Sign In</a>
            </li>
        </ul>
        <% }
        %>
    </div>
</nav>