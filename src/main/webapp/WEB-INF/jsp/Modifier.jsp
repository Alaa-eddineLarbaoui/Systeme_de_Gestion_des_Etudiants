<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 09/05/2024
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upgrade</title>
</head>
<body>
<div id="container">
    <h1>Add Student</h1>
    <form action="${pageContext.request.contextPath}/update" method="post">
        <label for="nom">Name:</label>
        <input type="text" id="nom" name="nom" value="${search.getNom()}"><br>
        <label for="Numero">Numero:</label>
        <input type="text" id="Numero" name="Numero" value="${search.getNumero()}"><br>
        <label for="matricule">Matricule:</label>
        <input type="text" id="matricule" name="matricule" value="${search.getMatricule()}"><br>
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="${search.getEmail()}"><br>
        <input type="submit" value="Add Student">

    </form>
</div>
</body>
</html>
