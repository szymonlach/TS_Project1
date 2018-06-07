<%--
  Created by IntelliJ IDEA.
  User: Szymi44
  Date: 2018-06-06
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Laptops</title>
    <style>
        tr:hover {
            background-color: forestgreen;
            color: white;
            cursor: pointer;
        }

        table {
            border: 1px solid #000000;
            border-collapse: collapse;
        }
    </style>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('table tbody tr').click(function () {
                alert($(this).text());
            });
        });
    </script>
</head>
<body>
<%@page import="java.util.List,szymon.edu.entities.*" %>

<h4>Available Laptops Details</h4>
<%
    List<LaptopsEntity> laptops = (List<LaptopsEntity>) request.getAttribute("laptops");
%>
<h4>Total number of Laptops are <%= laptops.size()%>
</h4>

<div>
    <table border="1">
        <caption>Click row</caption>
        <thead>
        <tr>
            <th>ID</th>
            <th>Model</th>
            <th>CPU</th>
            <th>GPU</th>
            <th>RAM</th>
            <th>Disc</th>
        </tr>
        </thead>
        <%
            for (LaptopsEntity laptop : laptops) {
                LaptopsEntity laptopp = laptop;

        %>
        <tbody>
        <tr>
            <td><%=laptopp.getId()%>
            </td>
            <td><%=laptopp.getModel()%>
            </td>
            <td><%=laptopp.getCpu()%>
            </td>
            <td><%=laptopp.getGpu()%>
            </td>
            <td><%=laptopp.getRam()%>
            </td>
            <td><%=laptopp.getDisc()%>
            </td>
        </tr>
        </tbody>
        <%
            }
        %>
    </table>
    <br>
</div>
<a href="index.jsp">Back to main menu</a><br>
<a href="GetDataOrderByModelServlet">Order laptops by model</a>

</body>
</html>
