<%-- 
    Document   : afterExercise
    Created on : Dec 23, 2020, 11:11:54 AM
    Author     : dzilh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
<%@page import="Question.FQ1" %>
<%@page import="java.sql.*" %>
<%@page import="jdbc.JDBCUtility" %>

<%
     if(session.getAttribute("username")==null){
         response.sendRedirect("loginpage.jsp");
     }
%>

<%
    String username=(String)session.getAttribute("username");
    
    FQ1 b = new FQ1();
    
    int fq1_score = b.getScore(username);
%>

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
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Ubuntu:regular,bold&subset=Latin">
        <link rel="stylesheet" href="https://unpkg.com/tachyons/css/tachyons.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
        <title>CodingSchool</title>
    </head>
    <body>
        <div class="main_visual">
            <div class="slide-bottom show" style="text-align: center;">
                <h2>Congratulation</h2>
                <a>YOUR MARK IS</a>
                <h1><%=fq1_score%>/3</h1>
                <br><br><br><br><br>
                <a href="ViewPerformanceCheckFQ1.jsp" style="color: blue; text-decoration: underline">See details result here</a>
            </div>
        </div>
    </body>

    <footer>

        <%@ include file = "footer.jsp" %>
    </footer>
</html>
