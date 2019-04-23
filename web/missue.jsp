<%@ page import="entities.Authors" %>
<%@ page import="java.util.List" %>
<%@ page import="entities.Categories" %>
<%@ page import="entities.IBooks" %>
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
    <title>Manage Issued Books</title>
</head>
<body>
<div class="container">
    <jsp:include page="navigation.jsp"></jsp:include>


    <nav aria-label="breadcrumb" style="margin-top: 30px;">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Moderator</a></li>
            <li class="breadcrumb-item active" aria-current="page">Manage Issued Books</li>
        </ol>
    </nav>

    <table id="example" class="display" style="width:100%">
    <thead>
    <tr>
        <th>ID</th>
        <th>Book Name</th>
        <th>Student Name</th>
        <th>ISBN</th>
        <th>Issued date</th>
        <th>Return date</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<IBooks>ibooks=(List<IBooks>)request.getAttribute("ibooks");
        if(ibooks!=null){
            for(IBooks i: ibooks){
    %>
    <tr>
        <td><%=i.getId()%></td>
        <td><%=i.getBook_name()%></td>
        <td><%=i.getStudentName()%></td>
        <td><%=i.getIsbn()%></td>
        <td><%=i.getIssuedDate()%></td>
        <%
            if(i.getReturnstatus()==1){
        %>
        <td><%=i.getReturnedDate()%></td>
        <%
            }else{
        %>
        <td>Not returned</td>
        <%
            }
        %>
        <td><a href=""><button class="btn btn-primary"><i class="fa fa-edit "></i> Edit</button></a>
        </td>
    </tr>
    <%
            }
        }
    %>



    </tbody>
    <tfoot>
    <tr>
        <th>ID</th>
        <th>Book Name</th>
        <th>Student Name</th>
        <th>ISBN</th>
        <th>Issued date</th>
        <th>Updation date</th>
        <th>Action</th>
    </tr>
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
</script>
</body>
</html>