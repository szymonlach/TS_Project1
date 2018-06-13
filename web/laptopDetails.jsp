<%--
  Created by IntelliJ IDEA.
  User: Szymi44
  Date: 2018-06-06
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Manage Laptops</title>

    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
          href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.bootstrap.min.css">

    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('table tbody tr').click(function () {
                var currow = $(this).closest('tr');
                var col1 = currow.find("td:eq(1)").text();
                var col2 = currow.find("td:eq(2)").text();
                var col3 = currow.find("td:eq(3)").text();
                var col4 = currow.find("td:eq(4)").text();
                var col5 = currow.find("td:eq(5)").text();

                var result = "Model: " + col1 + '\n' + "CPU: " + col2 + '\n' + "GPU: " + col3 + '\n' + "RAM: " + col4 + '\n' + "Disc: " + col5
                alert(result);
            });
        });
    </script>

    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.1/js/responsive.bootstrap.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable({
                responsive: {
                    details: {
                        display: $.fn.dataTable.Responsive.display.modal({
                            header: function (row) {
                                var data = row.data();
                                return 'Details for ' + data[0] + ' ' + data[1];
                            }
                        }),
                        renderer: $.fn.dataTable.Responsive.renderer.tableAll({
                            tableClass: 'table'
                        })
                    }
                }
            });
        });
    </script>
</head>
<body>
<%@page import="java.util.List,szymon.edu.entities.*" %>

<h4>Available Laptops Details</h4>

<table id="example" class="table table-striped table-bordered nowrap" style="width:100%">
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

    <tbody>
    <c:forEach var="laptop" items="${laptops}">
        <tr>

            <td>${laptop.id}
            </td>
            <td>${laptop.model}
            </td>
            <td>${laptop.cpu}
            </td>
            <td>${laptop.gpu}
            </td>
            <td>${laptop.ram}
            </td>
            <td>${laptop.disc}
            </td>

        </tr>
    </c:forEach>
    </tbody>

</table>


<a href="index.jsp">Back to main menu</a><br>

</body>
</html>
