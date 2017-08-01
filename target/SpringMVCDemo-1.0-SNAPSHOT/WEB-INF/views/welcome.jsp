<%--
  Created by IntelliJ IDEA.
  User: fhani
  Date: 7/21/2017
  Time: 11:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Spring Demo</title>
</head>
<body>
<p>
    Welcome to GC COFFEE! Register to become a member! <a href="/add-user-info">Register</a>
    <br>
</p>

<table border="1">
    <c:forEach var="myVar" items ="${cList}" >
    <tr>
        <td>${myVar.itemName}</td>
        <td>${myVar.description}</td>
        <td>${myVar.quantity}</td>
        <td>${myVar.price}</td>
        <td><a href ="delete?id=${myVar.customerId}">Delete</a></td> <!-- each line will have delete link
            (referencing /"delete" request mapping-->

    </tr>
    </c:forEach>
</table>
</body>

</html>
