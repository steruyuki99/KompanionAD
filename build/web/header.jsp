<%-- 
    Document   : header
    Created on : Dec 20, 2020, 9:08:46 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                    <img src="../src/img/cd2.png">
                    <div class="header-right">
                        <a href="../learning-material.html">View Material</a>
                        <a href="../SummativeQuestionHome.html">Summative</a>
                        <a href="../">Formative</a>
                        <a href="../View-Performance.html">View Performance</a>
                        <a href="../">Manage Profile</a>
                        <a class="active" href="logoutServlet">Logout</a>
                    </div>
    </div>
