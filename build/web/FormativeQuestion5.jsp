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
            <h1><a>Formative Question 5</a></h1>
            <form method="POST" action="FormativeServlet" >
                <input type="hidden" name="Formative" value="E">
                <div class="question_card">
                    <div class="question"><a id="q1" class="anchor">
                            1) Yang manakah penyataan yang betul tentang amalan terbaik pengatucaraan<br>
                            <br>&nbsp; I &nbsp;&nbsp; Inden yang konsisten
                            <br>&nbsp; II &nbsp;&nbsp;Jenis Data
                            <br>&nbsp; III &nbsp;Pemboleh ubah yang bermakna;
                            <br>&nbsp; IV &nbsp;&nbsp;Komen
                    </a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="A">
                                    A) I dan II
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="B">
                                    B) I, II dan III
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="C">
                                    C) II, III dan IV
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="D">
                                    D) Semua di atas<!--Correct-->
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="question_card">
                    <div class="question"><a id="q2" class="anchor">
                            2)<br><br>
                            public class LuasSegitiga {<br>
                            <span style="padding-left:2em">public static void main (String[] args){</span><br>
                            <span style="padding-left:3em">int Tapak = 6;</span><br>
                            <span style="padding-left:3em">Tinggi = 4;</span><br>
                            <span style="padding-left:3em">double Luas;</span><br><br>
                            <span style="padding-left:3em">Luas = (1.0 / 2) * Tapak * Tinggi;</span><br><br>
                            <span style="padding-left:3em">System.out.println ("Luas Segitiga ialah : " + Luas);</span><br>
                            <span style="padding-left:2em">}</span><br>
                            }<br><br>
                            Apakah ralat yang terdapat dalam atur cara tersebut ?
                    </a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="A">
                                    A) Ralat Larian Masa
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="B">
                                    B) Ralat Sintaks<!--Correct-->
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="C">
                                    C) Ralat Logik
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="D">
                                    D) Tiada Ralat
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="question_card">
                    <div class="question"><a id="q3" class="anchor">
                            3)<br><br>
                            public class LuasBulatan {<br>
                            <span style="padding-left:2em">public static void main(String[]args){</span><br><br>
                            <span style="padding-left:3em">int jejari = 5</span><br>
                            <span style="padding-left:3em">double luasBulatan;</span><br>
                            <span style="padding-left:3em">final double pi= 3.142;</span><br><br>
                            <span style="padding-left:3em">luasBulatan = pi * jejari;</span><br><br>
                            <span style="padding-left:3em">System.out.println("Luas bulatan ialah " + luasbulatan);</span><br>
                            <span style="padding-left:2em">}</span><br>
                            }<br><br>
                            Apakah pembetulan yang betul bagi atur cara tersebut ?
                    </a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="A">
                                    A) LuasBulatan
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="B">
                                    B) luasbulatan
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="C">
                                    C) luasBulatan<!--Correct-->
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="D">
                                    D) tiada kesalahan
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