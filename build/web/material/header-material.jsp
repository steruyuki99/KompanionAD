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
        <link href="../src/css/material.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Ubuntu:regular,bold&subset=Latin">
        <title>CodingSchool Material</title>
        <script type="text/javascript" src="../src/js/script.js"></script>


        <%if(session.getAttribute("username") !=null) {%>

    <div class="header">
        <a href="../index.jsp"><img src="../src/img/cd2.png" width="132" height="31"></a>
        <div class="header-right">
            <a href="../material_index.jsp">View Material</a>
            <a href="../SummativeQuestion.jsp">Summative</a>
            <a href="../FormativeMenu.jsp">Formative</a>
            <a href="../View-Performance.jsp">View Performance</a>
            <a href="../profile-page.jsp">Manage Profile</a>
            <a class="active" href="<%=request.getContextPath()%>/logoutServlet">Logout</a>
        </div>
    </div>

    <%} else{%>

    <div class="header">
        <a href="../index.jsp"><img src="../src/img/cd2.png">
        <div class="header-right">
            <a href="material_index.jsp">View Material</a>
            <a class="active" href="../loginpage.jsp">Login</a>
        </div>
    </div>
    <% } %>


</head>
<body>

</body>
</html>
