<%@ page import="entities.Authors" %>
<%@ page import="java.util.List" %>
<%@ page import="entities.Categories" %>
<%@ page import="entities.Users" %>
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
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <title>REG Students</title>
</head>
<body>
<div class="container">
    <jsp:include page="navigation.jsp"></jsp:include>


    <nav aria-label="breadcrumb" style="margin-top: 30px;">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Moderator</a></li>
            <li class="breadcrumb-item active" aria-current="page">Manage Category</li>
        </ol>
    </nav>

    <table id="example" class="display" style="width:100%">
    <thead>
    <tr>
        <th>ID</th>
        <th>Student ID</th>
        <th>Student Full Name</th>
        <th>Email</th>
        <th>Mobile No.</th>
        <th>Reg. date</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Users>users=(List<Users>)request.getAttribute("users");
        if(users!=null){
            for(Users u: users){
    %>
    <tr>
        <td><%=u.getId()%></td>
        <td><%=u.getStudentID()%></td>
        <td><%=u.getFullname()%></td>
        <td><%=u.getEmail()%></td>
        <td><%=u.getMob_number()%></td>
        <td><%=u.getReg_date()%></td>
        <td><%
                if(u.getActive()==1){
                %>
               Active
               <%}else{%>
                Blocked
            <%}%>
        </td>
        <td class="center">
            <a href=""><button class="btn btn-primary"><i class="fa fa-edit "></i> Edit</button></a>
                <a href="" onclick="return confirm('Are you sure you want to delete?');">  <button class="btn btn-danger"><i class="fa fa-pencil"></i> Delete</button></a>
        </td>
    </tr>
    <%
            }
        }
    %>


    </tbody>
    <tfoot>
    <%--<tr>--%>
        <%--<th>ID</th>--%>
        <%--<th>Author Name</th>--%>
        <%--<th>Status</th>--%>
        <%--<th>Creation date</th>--%>
        <%--<th>Updation date</th>--%>
    <%--</tr>--%>
    </tfoot>
    </table>


</div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="assets/js/bootstrap.min.js"> </script>
<script src="assets/js/bootstrap.bundle.js"> </script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<script>
    $(document).ready(function() {
        $('#example').DataTable();
    } );

    $(document).ready(function() {
        var table = $('#example').DataTable();

        $('#example tbody').on('click', 'tr', function () {
            var data = table.row( this ).data();
            alert( 'You clicked on '+data[0]+'\'s row' );
        } );
    } );


</script>
</body>
</html>