<%-- 
    Document   : ViewPerformanceCheckSummative
    Created on : Dec 21, 2020, 5:26:18 AM
    Author     : dzilh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Question.FQ6" %>
<%@page import="java.util.ArrayList"%>

<%
         if(session.getAttribute("username")==null){
             response.sendRedirect("loginpage.jsp");
         }
%>

<%
    String username=(String)session.getAttribute("username");

    FQ6 a = new FQ6();
    
    ArrayList<Boolean> answerBool = new ArrayList<Boolean>();
    ArrayList<String> answerList = new ArrayList<String>();
    
    answerList = a.getAnswerRecords(username);
    answerBool = a.getAnswerBoolean(username);
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
                <li><a href="#" class="bt" style="user-select: none;">Formative</a></li>
                <ul>
                    <li><a href="ViewPerformanceCheckFQ1.jsp">1. Strategi Penyelesaian Masalah</a></li>
                    <li><a href="ViewPerformanceCheckFQ2.jsp">2. Algoritma</a></li>
                    <li><a href="ViewPerformanceCheckFQ3.jsp">3. Pemboleh Ubah, Pemalar dan Jenis Data</a></li>
                    <li><a href="ViewPerformanceCheckFQ4.jsp">4. Struktur Kawalan</a></li>
                    <li><a href="ViewPerformanceCheckFQ5.jsp">5. Amalan Terbaik Pengaturcaraan</a></li>
                    <li><a href="ViewPerformanceCheckFQ6.jsp">6. Struktur Data dan Modular</a></li>
                    <li><a href="ViewPerformanceCheckFQ7.jsp">7. Pembangunan Aplikasi</a></li>
                </ul>
                <li><a href="ViewPerformanceCheckSummative.jsp">Summative</a></li>
            </ul>
        </div>

        <div class="main-content">
            <h1 style="text-align: center"><%= session.getAttribute("username") %>'s Summative Performance</h1>
            <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3" style="text-align: center">Soalan 1</h1>
                <div class="pa3 bt b--black-10">
                    <p class="f6 f5-ns lh-copy measure">
                        package perisianSaya;<br>
                            public class MyClass {<br>
                            <span style="padding-left:2em">public static void main(String[] args){</span><br>
                            <span style="padding-left:3em">String [] senaraiNama = new String[4];</span><br>
                            <span style="padding-left:3em">senaraiNama[0] = "Adam";</span><br>
                            <span style="padding-left:3em">senaraiNama[1] = "Alia";</span><br>
                            <span style="padding-left:3em">senaraiNama[2] = "Wong";</span><br>
                            <span style="padding-left:3em">senaraiNama[3] = "Devi";</span><br><br>
                            <span style="padding-left:3em">int [] senaraiUmur = {16, 17, 16, 17};</span><br><br>
                            <span style="padding-left:3em">double [] senaraiTinggi = {182.1,172.5,173.2,175.0};</span><br>
                            <span style="padding-left:3em">System.out.println("NAMA\tUMUR\tTINGGI(cm)");</span><br>
                            <span style="padding-left:3em">for(int i=0;i<4;i++){</span><br>
                            <span style="padding-left:5em">System.out.print(senaraiNama[i] + "\t");</span><br>
                            <span style="padding-left:5em">System.out.print(senaraiUmur[i] + "\t");</span><br>
                            <span style="padding-left:5em">System.out.print(senaraiTinggi[i]);</span><br>
                            <span style="padding-left:5em">System.out.println();</span><br>
                            <span style="padding-left:3em">}</span><br>
                            <span style="padding-left:2em">}</span><br>
                            }<br><br>
                            Merujuk atur cara diatas jawab soalan dibawah:<br><br><br><br>
                            1)Apakah elemen pada senaraiNama[2] ?
                    </p>
                    <hr>
                    <p class="f6 f5-ns lh-copy measure">
                        <% if(answerBool.get(0)){ %>
                    <h4 style="color: green;">CORRECT!</h4>
                    your Answer is <%= answerList.get(0) %>.<br>
                    <% } else { %>
                    <h4 style="color: red;">FALSE!</h4>
                    your Answer is <%= answerList.get(0) %>.<br>
                    <% } %>
                    </p>
                </div>
            </article>

            <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3" style="text-align: center">Soalan 2</h1>
                <div class="pa3 bt b--black-10">
                    <p class="f6 f5-ns lh-copy measure">
                        2)Apakah elemen pada senaraiUmur[1] ?
                    </p>
                    <hr>
                    <p class="f6 f5-ns lh-copy measure">
                        <% if(answerBool.get(1)){ %>
                    <h4 style="color: green;">CORRECT!</h4>
                    your Answer is <%= answerList.get(1) %>.<br>
                    <% } else { %>
                    <h4 style="color: red;">FALSE!</h4>
                    your Answer is <%= answerList.get(1) %>.<br>
                    <% } %>
                    </p>
                </div>
            </article>

            <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3" style="text-align: center">Soalan 3</h1>
                <div class="pa3 bt b--black-10">
                    <p class="f6 f5-ns lh-copy measure">
                        3)Apakah elemen pada senaraiTinggi[3] ?
                    </p>
                    <hr>
                    <p class="f6 f5-ns lh-copy measure">
                        <% if(answerBool.get(2)){ %>
                    <h4 style="color: green;">CORRECT!</h4>
                    your Answer is <%= answerList.get(2) %>.<br>
                    <% } else { %>
                    <h4 style="color: red;">FALSE!</h4>
                    your Answer is <%= answerList.get(2) %>.<br>
                    <% } %>
                    </p>
                </div>
            </article>
        </div>

    </body>

</html>
