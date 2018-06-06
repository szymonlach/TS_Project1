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
</head>
<body>
<%@page import="java.util.List,szymon.edu.entities.*" %>

<h4>Available Laptops Details</h4>
<%
    List<LaptopsEntity> laptops = (List<LaptopsEntity>)request.getAttribute("laptops");
%>
<h4>Total number of Laptops are <%= laptops.size()%></h4>
<table border="1">
    <tr>
        <td>ID</td><td>Model</td><td>CPU</td><td>GPU</td><td>RAM</td><td>Disc</td>
    </tr>
    <%
        for (LaptopsEntity laptop:laptops){
            LaptopsEntity laptopp = laptop;

    %>
    <tr>
        <td><%=laptopp.getId()%></td>
        <td><%=laptopp.getModel()%></td>
        <td><%=laptopp.getCpu()%></td>
        <td><%=laptopp.getGpu()%></td>
        <td><%=laptopp.getRam()%></td>
        <td><%=laptopp.getDisc()%></td>
    </tr>
    <%
        }
    %>
</table><br>
<a href="index.jsp">Back to main menu</a>
</body>
</html>
