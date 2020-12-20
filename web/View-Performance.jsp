<%-- Document : View-Performance Created on : Dec 20, 2020, 12:28:33 AM Author : dzilh --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@page import="javax.servlet.http.HttpSession" %>
            <%@ include file="header.jsp" %>


                <!DOCTYPE html>
                <html>

                <head>

                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

                    <!--<link href="src/css/viewperformance.css" rel="stylesheet">-->
                    <link href="src/css/vPerformace.css" rel="stylesheet">
                    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
                    <script type="text/javascript" src="../src/js/script.js"></script>
                    <link rel="stylesheet" type="text/css"
                        href="http://fonts.googleapis.com/css?family=Ubuntu:regular,bold&subset=Latin">
                    <link rel="stylesheet" href="https://unpkg.com/tachyons/css/tachyons.min.css">
                    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
                        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
                        crossorigin="anonymous"></script>

                    <title>CodingSchool</title>

                </head>

                <body>


                    <div class="container">

                        <div class="nav">
                            <ul>
                                <div class="dropdown">
                                    <li><a href='#'>Formative</a>
                                        <div class="dropCont">
                                            <a href="#">1. Strategi Penyelesaian Masalah</a>
                                            <a href="#">2. Algoritma </a>
                                            <a href="#">3. Pemboleh Ubah, Pemalar dan Jenis Data</a>
                                            <a href="#">4. Struktur Kawalan</a>
                                            <a href="#">5. Amalan Terbaik Pengaturcaraan</a>
                                            <a href="#">6. Struktur Data dan Modular</a>
                                            <a href="#">7. Pembangunan Aplikasi</a>
                                        </div>
                                    </li>
                                    <li><a href="#">Summative</a></li>
                                </div>
                                
                            </ul>
                        </div>

                        <%String username=(String)session.getAttribute("username");%>
                            <div class="content-wrapper">
                                <h1>Overall Performance by  <%= session.getAttribute("username") %></h1>
         
                                <table border="1">
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
                                        <td style="text-align: center;">0/6</td>
                                        <td style="text-align: center;"><a href="#"
                                                style="text-decoration: underline; color: blue;">view</a></td>
                                    </tr>
                                </table>
                            </div>

                    </div>

                </body>

                </html>