<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 06/05/2024
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
</head>
<body>
<h1>Add Student</h1>
<form action="saveEtudiant" method="post">
    <label for="nom">Name:</label>
    <input type="text" id="nom" name="nom"><br><br>
    <label for="Numero">Numero:</label>
    <input type="text" id="Numero" name="Numero"><br><br>
    <label for="matricule">Matricule:</label>
    <input type="text" id="matricule" name="matricule"><br><br>
    <input type="submit" value="Add Student">

    <input type="button" value="Afficher">

</form>
</body>
</html>