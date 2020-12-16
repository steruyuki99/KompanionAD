<%-- 
    Document   : AnsSummative
    Created on : Dec 16, 2020, 10:42:52 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="src/css/material.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script type="text/javascript" src="../src/js/script.js"></script>
    <link rel="stylesheet" type="text/css"
        href="http://fonts.googleapis.com/css?family=Ubuntu:regular,bold&subset=Latin">
       <link rel="stylesheet" href="https://unpkg.com/tachyons/css/tachyons.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    
    <title>CodingSchool</title>
    </head>
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
            <a class="active" href="loginpage.html">Login</a>
        </div>
        
        <div class="pa4">
            <div class="overflow-auto">
              <table class="f6 w-100 mw8 center" cellspacing="0">
                <thead>
                  <tr>
                    <th class="fw6 bb b--black-20 tl pb3 pr3 bg-white"> Jawapan</th>
                    <th class="fw6 bb b--black-20 tl pb3 pr3 bg-white"> Jawapan Murid</th>
                  </tr>
                </thead>
                <tbody class="lh-copy">
                <% 
               ArrayList<Answer> ans  =  
            (ArrayList<Answer>)request.getAttribute("data"); 
             for(Ansd a:ans){%> 
        <%-- Arranging data in tabular form 
        --%> 
                  <tr>
                    <td class="pv3 pr3 bb b--black-20"><%=ans.getAnswer()%></td>
                    <td class="pv3 pr3 bb b--black-20"><%=ans.getResult()%></td>
                  </tr>
                  <%  }%> 
                  
                </tbody>
              </table>
            </div>
          </div>
    </body>
</html>
