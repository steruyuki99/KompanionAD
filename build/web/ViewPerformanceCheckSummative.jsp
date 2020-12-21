<%-- 
    Document   : ViewPerformanceCheckSummative
    Created on : Dec 21, 2020, 5:26:18 AM
    Author     : dzilh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

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
                    </div>
                        <li><a href="ViewPerformanceCheckSummative.jsp" style="text-decoration: none; color: white;">Summative</a></li>
                </ul>
            </div>
            
            <div class="content-wrapper">
                
                <h1><%= session.getAttribute("username") %>'s Summative Performance</h1>
                
                <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                    <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3">Soalan 1</h1>
                    <div class="pa3 bt b--black-10">
                      <p class="f6 f5-ns lh-copy measure">
                        1) Yang manakah penyataan yang tidak tepat
                            mengenai mengapa perlunya strategi dalam
                            penyelesaian masalah?
                      </p>
                      <hr>
                      <p class="f6 f5-ns lh-copy measure">
                          <h4 style="color: green;">CORRECT!</h4>your Answer is A.
                      </p>
                    </div>
                </article>
                
                <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                    <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3">Soalan 2</h1>
                    <div class="pa3 bt b--black-10">
                      <p class="f6 f5-ns lh-copy measure">
                        1) Yang manakah penyataan yang tidak tepat
                            mengenai mengapa perlunya strategi dalam
                            penyelesaian masalah?
                      </p>
                      <hr>
                      <p class="f6 f5-ns lh-copy measure">
                          <h4 style="color: green;">CORRECT!</h4>your Answer is A.
                      </p>
                    </div>
                </article>
                
                <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                    <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3">Soalan 3</h1>
                    <div class="pa3 bt b--black-10">
                      <p class="f6 f5-ns lh-copy measure">
                        1) Yang manakah penyataan yang tidak tepat
                            mengenai mengapa perlunya strategi dalam
                            penyelesaian masalah?
                      </p>
                      <hr>
                      <p class="f6 f5-ns lh-copy measure">
                          <h4 style="color: green;">CORRECT!</h4>your Answer is A.
                      </p>
                    </div>
                </article>
                
                <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                    <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3">Soalan 4</h1>
                    <div class="pa3 bt b--black-10">
                      <p class="f6 f5-ns lh-copy measure">
                        1) Yang manakah penyataan yang tidak tepat
                            mengenai mengapa perlunya strategi dalam
                            penyelesaian masalah?
                      </p>
                      <hr>
                      <p class="f6 f5-ns lh-copy measure">
                          <h4 style="color: green;">CORRECT!</h4>your Answer is A.
                      </p>
                    </div>
                </article>
                
                <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                    <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3">Soalan 5</h1>
                    <div class="pa3 bt b--black-10">
                      <p class="f6 f5-ns lh-copy measure">
                        1) Yang manakah penyataan yang tidak tepat
                            mengenai mengapa perlunya strategi dalam
                            penyelesaian masalah?
                      </p>
                      <hr>
                      <p class="f6 f5-ns lh-copy measure">
                          <h4 style="color: green;">CORRECT!</h4>your Answer is A.
                      </p>
                    </div>
                </article>
                
                <article class="center mw5 mw6-ns br3 hidden ba b--black-10 mv4">
                    <h1 class="f1 bg-near-white br3 br--top black-60 mv0 pv2 ph3">Soalan 6</h1>
                    <div class="pa3 bt b--black-10">
                      <p class="f6 f5-ns lh-copy measure">
                        1) Yang manakah penyataan yang tidak tepat
                            mengenai mengapa perlunya strategi dalam
                            penyelesaian masalah?
                      </p>
                      <hr>
                      <p class="f6 f5-ns lh-copy measure">
                          <h4 style="color: green;">CORRECT!</h4>your Answer is A.
                      </p>
                    </div>
                </article>
                
            </div>
            
        </div>
        
    </body>
    
</html>
