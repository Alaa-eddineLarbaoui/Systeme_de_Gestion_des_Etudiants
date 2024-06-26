<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des Etudiants</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        h2 {
            text-align: center;
            color:#ffffff;
            margin-top: 20px;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color:#caa863;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        a {
            color: #16829f;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .action-links {
            display: flex;
            justify-content: space-between;
        }
        .body{
            background-image: url("https://en.idei.club/uploads/posts/2023-06/1686191971_en-idei-club-p-artificial-intelligence-background-dizain-48.jpg" );
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;

        }
        .ButtonReturnn{
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }

        .ButtonReturn {
            width: 104%;
            padding: 10px;
            background-color: #caa863;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .ButtonReturn {
            background-color: #caa863;
        }
    </style>
</head>
<body class="body">
<h2>Liste des Etudiants</h2>
<table>
    <thead>
    <tr>
        <th>Nom</th>
        <th>Numero</th>
        <th>Matricule</th>
        <th>Email</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="Etudiant" items="${Etudiants}">
        <tr>
            <td>${Etudiant.getNom()}</td>
            <td>${Etudiant.getNumero()}</td>
            <td>${Etudiant.getMatricule()}</td>
            <td>${Etudiant.getEmail()}</td>
            <td class="action-links">
                <a href="deleteEtudiant/${Etudiant.getMatricule()}">Supprimer</a>
                <a href="searchEtudiant/${Etudiant.getMatricule()}">Modifier</a>
            </td>
        </tr>
    </c:forEach>

    </tbody>

</table>
<div class="ButtonReturnn">
    <a href="${pageContext.request.contextPath}/">
        <button class="ButtonReturn" type="button">return to home page</button>
    </a>

</div>

</body>
</html>
