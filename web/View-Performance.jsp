<%-- Document : View-Performance Created on : Dec 20, 2020, 12:28:33 AM Author : dzilh --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="javax.servlet.http.HttpSession" %>
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

    Answer a = new Answer();

    int summative_score = a.getScore(username);
%>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="src/css/viewperformance.css" rel="stylesheet">
        <link href="https://unpkg.com/tachyons/css/tachyons.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Ubuntu:regular,bold&subset=Latin">
        <title>CodingSchool</title>
        <script type="text/javascript" src="src/js/script.js"></script>
    </head>

    <%
        if(session.getAttribute("username")==null){
            response.sendRedirect("loginpage.jsp");
        }
    %>

    <body>

        <% if(session.getAttribute("username") !=null) {%>
        <header>
            <a href="index.jsp" id="left"><img src="src/img/cd2.png"></a>
            <div>
                <a href="#">View Material</a>
                <a href="SummativeQuestion.jsp">Summative</a>
                <a href="#">Formative</a>
                <a href="View-Performance.jsp">View Performance</a>
                <a href="#">Manage Profile</a>
                <a href="<%=request.getContextPath()%>/logoutServlet" id="active">Logout</a>
            </div>
        </header>
        <% } else{ %>
        <header>
            <a href="#" id="left"><img src="src/img/cd2.png"></a>
            <div>
                <a href="#">View Material</a>
                <a href="<%=request.getContextPath()%>/logoutServlet" id="active">Logout</a>
            </div>
        </header>
        <% } %>

        <div class="sidebar">
            <ul>
                <li><a href="#" class="bt">Formative</a></li>
                <ul>
                    <li><a href="#">1. Strategi Penyelesaian Masalah</a></li>
                    <li><a href="#">2. Algoritma</a></li>
                    <li><a href="#">3. Pemboleh Ubah, Pemalar dan Jenis Data</a></li>
                    <li><a href="#">4. Struktur Kawalan</a></li>
                    <li><a href="#">5. Amalan Terbaik Pengaturcaraan</a></li>
                    <li><a href="#">6. Struktur Data dan Modular</a></li>
                    <li><a href="#">7. Pembangunan Aplikasi</a></li>
                </ul>
                <li><a href="ViewPerformanceCheckSummative.jsp">Summative</a></li>
            </ul>
        </div>

        <div class="main-content">
            <h1 style="text-align: center;"><%= session.getAttribute("username") %>'s Overall Performance</h1>

            <table border="1" style="margin: auto; padding: auto;">
                <th colspan="3"
                    style="padding: 15px 15px; text-align: center; background-color: darkblue; color: whitesmoke;">
                    Formative Performance</th>
                </tr>
                <tr>
                    <th
                        style="padding-left: 180px; padding-right: 180px; padding-top: 10px; padding-bottom: 10px;">
                        Subtopic</th>
                    <th style="padding-left: 60px; padding-right: 60px;">Score</th>
                    <th style="padding-left: 60px; padding-right: 60px;">Check</th>
                </tr>
                <tr>
                    <td style="padding: 5px 5px;">1.1 Strategi Penyelesaian Masalah</td>
                    <td style="text-align: center;">0/5</td>
                    <td style="text-align: center;"><a href="#"
                                                       style="text-decoration: underline; color: blue;">view</a></td>
                </tr>
                <tr>
                    <td style="padding: 5px 5px;">1.2 Algoritma</td>
                    <td style="text-align: center;">0/5</td>
                    <td style="text-align: center;"><a href="#"
                                                       style="text-decoration: underline; color: blue;">view</a></td>
                </tr>
                <tr>
                    <td style="padding: 5px 5px;">1.3 Pemboleh Ubah, Pemalar dan Jenis Data</td>
                    <td style="text-align: center;">0/5</td>
                    <td style="text-align: center;"><a href="#"
                                                       style="text-decoration: underline; color: blue;">view</a></td>
                </tr>
                <tr>
                    <td style="padding: 5px 5px;">1.4 Struktur Kawalan</td>
                    <td style="text-align: center;">0/5</td>
                    <td style="text-align: center;"><a href="#"
                                                       style="text-decoration: underline; color: blue;">view</a></td>
                </tr>
                <tr>
                    <td style="padding: 5px 5px;">1.5 Amalan Terbaik Pengatucaraan</td>
                    <td style="text-align: center;">0/5</td>
                    <td style="text-align: center;"><a href="#"
                                                       style="text-decoration: underline; color: blue;">view</a></td>
                </tr>
                <tr>
                    <td style="padding: 5px 5px;">1.6 Struktur Data dan Modular</td>
                    <td style="text-align: center;">0/5</td>
                    <td style="text-align: center;"><a href="#"
                                                       style="text-decoration: underline; color: blue;">view</a></td>
                </tr>
                <tr>
                    <td style="padding: 5px 5px;">1.7 Pembangunan Aplikasi</td>
                    <td style="text-align: center;">0/5</td>
                    <td style="text-align: center;"><a href="#"
                                                       style="text-decoration: underline; color: blue;">view</a></td>
                </tr>
                <tr>
                    <th colspan="3"
                        style="padding: 15px 15px; text-align: center; background-color: darkblue; color: whitesmoke;">
                        Summative Performance</th>
                </tr>
                <tr>
                    <th
                        style="padding-left: 180px; padding-right: 180px; padding-top: 10px; padding-bottom: 10px;">
                        Subtopic</th>
                    <th style="padding-left: 60px; padding-right: 60px;">Score</th>
                    <th style="padding-left: 60px; padding-right: 60px;">Check</th>
                </tr>
                <tr>
                    <td style="padding: 5px 5px;">Summative</td>
                    <td style="text-align: center;"><%=summative_score%>/6</td>
                    <td style="text-align: center;"><a href="ViewPerformanceCheckSummative.jsp"
                                                       style="text-decoration: underline; color: blue;">view</a></td>
                </tr>
            </table>
        </div>

    </body>

</html>