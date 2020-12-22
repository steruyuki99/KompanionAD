<%-- 
    Document   : ViewPerformanceCheckSummative
    Created on : Dec 21, 2020, 5:26:18 AM
    Author     : dzilh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Question.Answer" %>
<%@page import="java.util.ArrayList"%>

<%
         if(session.getAttribute("username")==null){
             response.sendRedirect("loginpage.jsp");
         }
%>

<%
    String username=(String)session.getAttribute("username");

    Answer a = new Answer();
    
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
                <li class="bt"><a href="#">Formative</a></li>
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
            <h1 style="text-align: center"><%= session.getAttribute("username") %>'s Summative Performance</h1>
            <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3" style="text-align: center">Soalan 1</h1>
                <div class="pa3 bt b--black-10">
                    <p class="f6 f5-ns lh-copy measure">
                        1) Yang manakah penyataan yang tidak tepat
                        mengenai mengapa perlunya strategi dalam
                        penyelesaian masalah?
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
                        2) Yang manakah penyataan yang tepat
                        untuk menerangkan konsep penyelesaian
                        masalah?
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
                        3) Yang manakah penyataan yang tepat
                        mengenai teknik dalam penyelesaian
                        masalah?
                        <br>&nbsp; I &nbsp;&nbsp; Teknik Leraian
                        <br>&nbsp; II &nbsp;&nbsp;Pengecaman corak
                        <br>&nbsp; III &nbsp;Peniskalaan
                        <br>&nbsp; IV &nbsp;&nbsp;Algoritma
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

            <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3" style="text-align: center">Soalan 4</h1>
                <div class="pa3 bt b--black-10">
                    <p class="f6 f5-ns lh-copy measure">
                        4) Apakah ciri-ciri yang tepat bagi algoritma?
                        <br>&nbsp;I&nbsp;&nbsp; Arahan terperinci
                        <br>&nbsp;II&nbsp;&nbsp; Butiran jelas
                        <br>&nbsp;III&nbsp; Mempunyai batasan
                        <br>&nbsp;IV &nbsp;&nbsp; Boleh dilaksanakan
                    </p>
                    <hr>
                    <p class="f6 f5-ns lh-copy measure">
                        <% if(answerBool.get(3)){ %>
                    <h4 style="color: green;">CORRECT!</h4>
                    your Answer is <%= answerList.get(3) %>.<br>
                    <% } else { %>
                    <h4 style="color: red;">FALSE!</h4>
                    your Answer is <%= answerList.get(3) %>.<br>
                    <% } %>
                    </p>
                </div>
            </article>

            <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3" style="text-align: center">Soalan 5</h1>
                <div class="pa3 bt b--black-10">
                    <p class="f6 f5-ns lh-copy measure">
                        5) Al Rahmat ialah sebuah kedai runcit di
                        Taman Iskandar. Untuk memudahkan
                        pengiraan bagi barang-barang runcit,
                        pemilik kedai tersebut, iaitu Encik
                        Rahmat meminta anda membantunya
                        untuk membina sebuah perisian bagi
                        menghitung jumlah harga runcit.
                        Antara muka sudah disiapkan dengan
                        nama-nama kontrol seperti rajah
                        yang berikut. Data bagi input kuantiti
                        barang dan harga barang boleh
                        berubah dan dapat dimasukkan dari
                        papan kekunci.
                        <br><br>
                        <img src="src/img/question_material/summative/pic1.PNG" alt="q5">
                    </p>
                    <hr>
                    <p class="f6 f5-ns lh-copy measure">
                        <% if(answerBool.get(4)){ %>
                    <h4 style="color: green;">CORRECT!</h4>
                    your Answer is <%= answerList.get(4) %>.<br>
                    <% } else { %>
                    <h4 style="color: red;">FALSE!</h4>
                    your Answer is <%= answerList.get(4) %>.<br>
                    <% } %>
                    </p>
                </div>
            </article>

            <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3" style="text-align: center">Soalan 6</h1>
                <div class="pa3 bt b--black-10">
                    <p class="f6 f5-ns lh-copy measure">
                        6) Apakah yang dimaksudkan dengan amalan
                        terbaik dalam pengaturcaraan?
                    </p>
                    <hr>
                    <p class="f6 f5-ns lh-copy measure">
                        <% if(answerBool.get(5)){ %>
                    <h4 style="color: green;">CORRECT!</h4>
                    your Answer is <%= answerList.get(5) %>.<br>
                    <% } else { %>
                    <h4 style="color: red;">FALSE!</h4>
                    your Answer is <%= answerList.get(5) %>.<br>
                    <% } %>
                    </p>
                </div>
            </article>
        </div>

    </body>

</html>
