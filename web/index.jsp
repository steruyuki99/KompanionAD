<%-- 
    Document   : index
    Created on : Dec 20, 2020, 10:57:03 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="src/css/home.css" rel="stylesheet">
    <link href="src/css/question.css" rel="stylesheet">
    <link href="src/css/material.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script type="text/javascript" src="../src/js/script.js"></script>
    <link rel="stylesheet" type="text/css"
        href="http://fonts.googleapis.com/css?family=Ubuntu:regular,bold&subset=Latin">
    <link rel="stylesheet" href="https://unpkg.com/tachyons/css/tachyons.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <title>CodingSchool</title>
</head>
<%
         if(session.getAttribute("username")==null){
             response.sendRedirect("loginpage.jsp");
         }
        %>
<body>
    <div class="header">
  
        <button id="gotopbtn" onclick="goTop()">
          <i class="material-icons">arrow_upward</i>
        </button>
      
        <img src="src/img/cd2.png">
        <div class="header-right">
          <a href="learning-material.html">View Material</a>
          <a href="SummativeQuestionHome.html">Summative</a>
          <a href="">Formative</a>
          <a href="View-Performance.html">View Performance</a>
          <a href="">Manage Profile</a>
          <a class="active" href="../loginpage.html">Login</a>
        </div>
      </div>

<!--Nav Body-->

    <div class="main_visual">
        <div class="slide-bottom show">
            <h2>Home</h2>
            <a href="questions.html" class="button">Learning Material</a>
            <a href="questions.html" class="button">Summative</a>
            <a href="questions.html" class="button">Edit Profile</a>
            <a href="questions.html" class="button">View Performance</a>

        </div>
    </div>
</body>

</html>