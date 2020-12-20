<%-- 
    Document   : header
    Created on : Dec 20, 2020, 9:09:05 AM
    Author     : Amir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="src/css/material.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Ubuntu:regular,bold&subset=Latin">
        <title>CodingSchool Material</title>
        <script type="text/javascript" src="src/js/script.js"></script>

        <c:set var="un" value="${username}"/>
        <c:choose>
            <c:when test="${!un.equals(null)}">

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

        </c:when>
        <c:otherwise>

            <div class="header">
                <img src="../src/img/cd2.png">
                <div class="header-right">
                    <a href="../learning-material.html">View Material</a>
                    <a class="active" href="../loginpage.jsp">Login</a>
                </div>
            </div>
        </c:otherwise>
    </c:choose>


</head>
<body>

</body>
</html>
