<%-- 
    Document   : Summative_After
    Created on : Dec 30, 2020, 10:34:57 AM
    Author     : dzilh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
<%@page import="Question.Answer" %>
<%@page import="java.sql.*" %>
<%@page import="jdbc.JDBCUtility" %>

<%
     if(session.getAttribute("username")==null){
         response.sendRedirect("loginpage.jsp");
     }
%>

<%
    String username=(String)session.getAttribute("username");
    
    Answer b = new Answer();
    
    int fq1_score = b.getScore(username);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
</html>
