<%-- 
    Document   : SummativeQuestion
    Created on : Dec 19, 2020, 11:52:46 PM
    Author     : dzilh
--%>

<%@ include file = "header.jsp" %>>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="src/css/question.css" rel="stylesheet">
    <link href="src/css/material.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script type="text/javascript" src="../src/js/script.js"></script>
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
            <h1><a>Formative Question 3</a></h1>
            <form method="POST" action="FormativeServlet">
                <input type="hidden" name="Formative" value="C">
                <div class="question_card">
                    <div class="question"><a id="q1" class="anchor">1) Yang manakah <b>bukan</b> jenis data</a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="A">
                                   A)  null<!--Correct-->
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="B">
                                    B) String
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="C">
                                    C) Boolean
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="D">
                                    D) Integer
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="question_card">
                    <div class="question"><a id="q2" class="anchor">
                            2) Yang manakah adalah pengisytiharan bagi jenis data nombor nyata
                        </a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="A">
                                    A) float<!--Correct-->
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="B">
                                    B) int
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="C">
                                    C) String
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="D">
                                    D) char
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="question_card">
                    <div class="question"><a id="q3" class="anchor">3) (*) Operasi apakah yang menggunakan simbol ini ? 
                        </a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="A">
                                    A) Operasi tambah
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="B">
                                    B) Operasi tolak
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="C">
                                    C) Operasi Darab<!--Correct-->
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="D">
                                    D) Operasi Bahagi
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