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
    <style>body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f0f0;
    }

    #container {
        width: 50%;
        margin: 50px auto;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
    }

    h1 {
        text-align: center;
    }

    form {
        margin-top: 20px;
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border-radius: 4px;
        border: 1px solid #ccc;
    }

    input[type="submit"] {
        width: 20%;
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    .ButtonModify{
        display: flex;
        justify-content: end;
        margin-top: 19px;
    }
    </style>
</head>
<body class="body">
<div id="container">
    <h1>Modify Student</h1>
    <form action="${pageContext.request.contextPath}/update" method="post">
        <label for="nom">Name:</label>
        <input type="text" id="nom" name="nom" value="${search.getNom()}" required><br>
        <label for="Numero">Numero:</label>
        <input type="text" id="Numero" name="Numero" value="${search.getNumero()}" required><br>
        <input type="hidden" id="matricule" name="matricule" value="${search.getMatricule()}" required><br>
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="${search.getEmail()}" required><br>
        <div class="ButtonModify"><input type="submit" value="Modify"></div>


    </form>
</div>
</body>
</html>


