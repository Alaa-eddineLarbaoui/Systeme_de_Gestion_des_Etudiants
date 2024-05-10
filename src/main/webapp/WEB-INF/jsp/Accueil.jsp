<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        #container {
            width: 400px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 25px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 85px;


        }
        h1 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #666;
        }
        input[type="text"] {
            width: 96%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"]{
            width: 28%;
            padding: 10px;
            border: none;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            border-radius: 4px;
        }
        input[type="submit"]:hover,
        input[type="button"]:hover {
            background-color: #0056b3;
        }
        .body {
            background-image: url('https://en.idei.club/uploads/posts/2023-06/1687224636_en-idei-club-p-scientific-background-dizain-krasivo-9.jpg');
            background-size: cover;
            background-position: center;
        }
        .ButtonAdd{
            display: flex;
            justify-content: end;
        }

    </style>
</head>
<body class="body">
<div id="container">
    <h1>Add Student</h1>
    <form action="saveEtudiant" method="post">
        <label for="nom">Name:</label>
        <input type="text" id="nom" name="nom" required ><br>
        <label for="Numero">Numero:</label>
        <input type="text" id="Numero" name="Numero" required><br>
        <label for="matricule">Matricule:</label>
        <input type="text" id="matricule" name="matricule" required><br>
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" required><br>

        <div class="ButtonAdd"><input type="submit" value="Add Student"></div>
        <a href="/Gestion_Des_Entudients_war_exploded/etudiants">
            <button type="button">Afficher la liste des étudiants</button>
        </a>



    </form>
</div>
</body>
</html>
