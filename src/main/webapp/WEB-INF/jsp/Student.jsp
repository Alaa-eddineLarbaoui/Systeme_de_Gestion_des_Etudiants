<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Etu</title>
</head>
<body>
<h2>Liste des Etudiants</h2>
<table>
    <tr>
        <th>Nom</th>
        <th>Numero</th>
        <th>Matricule</th>
        <th>Email</th>
    </tr>
    <c:forEach var="Etudiant" items="${Etudiants}">
        <tr>
            <td>${Etudiant.getNom()}</td>
            <td>${Etudiant.getNumero()}</td>
            <td>${Etudiant.getMatricule()}</td>

            <td><a href="deleteEtudiant/${Etudiant.getMatricule()}">Supprimer</a></td>
            <td><a href="">Modifier</a></td>
            <td><a href="${pageContext.request.contextPath}/">Retour</a></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>