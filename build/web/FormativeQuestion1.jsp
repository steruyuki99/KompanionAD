<%-- 
    Document   : SummativeQuestion
    Created on : Dec 19, 2020, 11:52:46 PM
    Author     : dzilh
--%>

<%@ include file = "header.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="src/css/question.css" rel="stylesheet">
    <link href="src/css/material.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script type="text/javascript" src="src/js/script.js"></script>
    <link rel="stylesheet" type="text/css"
          href="http://fonts.googleapis.com/css?family=Ubuntu:regular,bold&subset=Latin">
    <link rel="stylesheet" href="https://unpkg.com/tachyons/css/tachyons.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

    <title>CodingSchool</title>
</head>
<%
     if(session.getAttribute("username")==null){
         response.sendRedirect("loginpage.jsp");
     }
%>
<body>
    <div class="container">
        <div class="sidebar">
            <div class="sidebar__item">
                <h5 class="active">Questions</h5>
                <div class="box" >
                    <div class="box_cont" style="margin-left: 15px; width: 250px;">
                        <div class="qNum">
                            <div class="qNumD"><a href="FormativeQuestion1.jsp"> 1 </a> </div>
                        </div>
                    </div>
                    <div class="box_cont" style="margin-left: 15px; width: 250px;">
                        <div class="qNum">
                            <div class="qNumD"><a href="FormativeQuestion2.jsp"> 2 </a></div>
                        </div>
                    </div>
                    <div class="box_cont" style="margin-left: 15px; width: 250px;">
                        <div class="qNum">
                            <div class="qNumD"> <a href="FormativeQuestion3.jsp"> 3 </a></div>
                        </div>
                    </div>
                    <div class="box_cont" style="margin-left: 15px; width: 250px;">
                        <div class="qNum">
                            <div class="qNumD"> <a href="FormativeQuestion4.jsp"> 4 </a></div>
                        </div>
                    </div>
                    <div class="box_cont" style="margin-left: 15px; width: 250px;">
                        <div class="qNum">
                            <div class="qNumD"> <a href="FormativeQuestion5.jsp"> 5 </a></div>
                        </div>
                    </div>
                    <div class="box_cont" style="margin-left: 15px; width: 250px;">
                        <div class="qNum">
                            <div class="qNumD"> <a href="FormativeQuestion6.jsp"> 6 </a></div>
                        </div>
                    </div>
                    <div class="box_cont" style="margin-left: 15px; width: 250px;">
                        <div class="qNum">
                            <div class="qNumD"> <a href="FormativeQuestion7.jsp"> 7 </a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <main class="main">
            <h1><a>Formative Question 1</a></h1>
            <form method="POST" action="FormativeServlet">
                <input type="hidden" name="Formative" value="A">
                <div class="question_card">
                    <div class="question"><a id="q1" class="anchor">1) Yang manakah <b>bukan</b> teknik pemikiran komputasional</a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="A">
                                    A) Algoritma
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="B">
                                    B) Peniskalaan
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="C">
                                    C) Pengecaman Corak
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="D">
                                    D) Pengiraan <!--Correct-->
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="question_card">
                    <div class="question"><a id="q2" class="anchor">2) Susun langkah-langkah proses 
                            penyelasaian masalah berikut mengikut turutan yang betul:<br>
                            <br>&nbsp; I &nbsp;&nbsp; Jana Idea
                            <br>&nbsp; II &nbsp;&nbsp;Tentukan Masalah
                            <br>&nbsp; III &nbsp;Jana Penyelesaian
                            <br>&nbsp; IV &nbsp;&nbsp;Kumpulkan dan Analisis Data</a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="A">
                                    A) I, II, III, IV
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="B">
                                    B) IV, II, III, I
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="C">
                                    C) IV, II, I, III <!--Correct-->
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="D">
                                    D) III, IV, II, I
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="question_card">
                    <div class="question"><a id="q3" class="anchor">3) Yang manakah penyataan yang tepat
                            mengenai teknik dalam penyelesaian
                            masalah?
                            <br>&nbsp; I &nbsp;&nbsp; Teknik Leraian
                            <br>&nbsp; II &nbsp;&nbsp;Pengecaman corak
                            <br>&nbsp; III &nbsp;Peniskalaan
                            <br>&nbsp; IV &nbsp;&nbsp;Algoritma</a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="A">
                                    A) I dan II
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="B">
                                    B) I, II dan III
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="C">
                                    C) II, III dan IV
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="D">
                                    D) Semua di atas<!--Correct-->
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="submit" style="text-align: center; margin-top: 30px; margin-bottom: 50px;">
                    <input type="submit" value="Submit" class="button">
                </div>
            </form>
        </main>
    </div>

</body>

<script>
    $(function () {
        $('a[href^="#"]').click(function () {
            var time = 500;
            var href = $(this).attr("href");
            var target = $(href === "#" || href === "" ? 'html' : href);
            var position = target.offset().top;
            $("html,body").animate({scrollTop: position}, time, "swing");
            return false;
        });
    });
</script>

</html>