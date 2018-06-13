<%--
  Created by IntelliJ IDEA.
  User: Szymi44
  Date: 2018-06-06
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Laptops</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.bootstrap.min.css">
</head>
<body>
<h2>Insert Laptop</h2>
<h3>Enter Laptops Details</h3>

<form action="InsertLaptopServlet" method="post">

    <table>
        <tr>
            <td>Model</td>
            <td><input type="text" name="model"/></td>
        </tr>
        <tr>
            <td>CPU</td>
            <td><input type="text" name="cpu"/></td>
        </tr>
        <tr>
            <td>GPU</td>
            <td><input type="text" name="gpu"/></td>
        </tr>
        <tr>
            <td>RAM</td>
            <td><input type="text" name="ram"/></td>
        </tr>
        <tr>
            <td>Disc</td>
            <td><input type="text" name="disc"/></td>
        </tr>
        <tr>
            <td><input type="submit" name="save" value="Save"/></td>
        </tr>
    </table>
</form>
</body>
</html>
