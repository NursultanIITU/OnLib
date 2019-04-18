<%@ page import="entities.Authors" %>
<%@ page import="java.util.List" %>
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
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <title>Student Books</title>
</head>
<body>
<div class="container">
    <jsp:include page="navigation.jsp"></jsp:include>


    <nav aria-label="breadcrumb" style="margin-top: 30px;">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Profile</a></li>
            <li class="breadcrumb-item active" aria-current="page">Manage Student Books</li>
        </ol>
    </nav>

    <table id="example" class="display" style="width:100%">
    <thead>
    <tr>
        <th>ID</th>
        <th>Book Name</th>
        <th>ISBN</th>
        <th>Issued Date</th>
        <th>Return date</th>
        <th>Comment</th>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>SDP10</td>
            <td>#31265</td>
            <td>2019-03-28 23:17:04</td>
            <td style="color: red;">Not Return Yet</td>
            <td class="center">  </td>
        </tr>
        <tr>
            <td>2</td>
            <td>PHP And MySql programming	</td>
            <td>#31265</td>
            <td>2019-03-28 23:09:06</td>
            <td>2019-10-28 23:09:06</td>
            <td class="center">  </td>
        </tr>
        <tr>
            <td>3</td>
            <td>Java Spring	</td>
            <td>#31265</td>
            <td>2019-03-28 23:09:06</td>
            <td>2019-10-28 23:09:06</td>
            <td class="center">  </td>
        </tr>
  </tbody>
    <tfoot>
    <tr>
        <th>ID</th>
        <th>Book Name</th>
        <th>ISBN</th>
        <th>Issued Date</th>
        <th>Return date</th>
        <th>Comment</th>
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