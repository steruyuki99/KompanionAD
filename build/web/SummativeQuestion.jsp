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
        </div>
    
    <!--Nav Body-->

    <div class="container">
        <div class="sidebar">
            <div class="sidebar__item">

                <h5 class="active">Questions</h5>
                <div class="box" style="margin-left: 40px;">
                    <div class="box_cont">
                        <div class="qNum">
                            <div class="qNumD"><a href="#q1"> 1 </a> </div>
                        </div>
                        <div class="qNum">
                            <div class="qNumD"><a href="#q2"> 2 </a></div>
                        </div>
                    </div>
                    <div class="box_cont">
                        <div class="qNum">
                            <div class="qNumD"> <a href="#q3"> 3 </a></div>
                        </div>
                        <div class="qNum">
                            <div class="qNumD"> <a href="#q4"> 4 </a></div>
                        </div>

                    </div>
                    <div class="box_cont">
                        <div class="qNum">
                            <div class="qNumD"> <a href="#q5"> 5 </a></div>
                        </div>
                        <div class="qNum">
                            <div class="qNumD"> <a href="#q6"> 6 </a></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <main class="main">
            <h1><a>Summative Question</a></h1>
            <form method="POST" action="SummativeServlet" >
                <div class="question_card">
                    <div class="question"><a id="q1" class="anchor">1) Yang manakah penyataan yang tidak tepat
                            mengenai mengapa perlunya strategi dalam
                            penyelesaian masalah?</a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="A">
                                    Membantu pengembangan sesuatu
                                    konsep
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="B">
                                    Menggalakkan pembelajaran kendiri
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="C">
                                    Menggalakkan pembelajaran kendiri
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan1" value="D">
                                    Mewujudkan komunikasi sehala
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="question_card">
                    <div class="question"><a id="q2" class="anchor">2) Yang manakah penyataan yang tepat
                            untuk menerangkan konsep penyelesaian
                            masalah?</a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="A">
                                    Proses mendalami butiran sesuatu
                                    masalah untuk mendapatkan satu
                                    penyelesaian.
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="B">
                                    Proses mengkaji butiran sesuatu
                                    masalah untuk mendapatkan satu
                                    penyelesaian.
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="C">
                                    Proses mengulang kaji butiran sesuatu
                                    masalah untuk mendapatkan satu
                                    penyelesaian.
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan2" value="D">
                                    Proses mereka bentuk butiran sesuatu
                                    masalah untuk mendapatkan satu
                                    penyelesaian.
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
                            <br>&nbsp; IV &nbsp;&nbsp;Algoritma?</a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="A">
                                    a) I dan II
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="B">
                                    b) I, II dan III
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="C">>
                                    c) II, III dan IV
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan3" value="D">
                                    d) Semua di atas
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>

                <hr>
                <div class="question_card">
                    <div class="question"><a id="q4" class="anchor">4) Apakah ciri-ciri yang tepat bagi algoritma?
                            <br>&nbsp;I&nbsp;&nbsp; Arahan terperinci
                            <br>&nbsp;II&nbsp;&nbsp; Butiran jelas
                            <br>&nbsp;III&nbsp; Mempunyai batasan
                            <br>&nbsp;IV &nbsp;&nbsp; Boleh dilaksanakan</a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan4" value="A">
                                    a) I dan II
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan4" value="B">
                                    b) I, II dan III
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan4" value="C">
                                    c) II, III dan IV
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan4" value="D">
                                    d) Semua di atas
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="question_card">
                    <div class="question"><a id="q5" class="anchor">5) Al Rahmat ialah sebuah kedai runcit di
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
                            <img src="src/img/question_material/summative/pic1.PNG" alt="q5"> </a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan5" value="A">
                                    Membantu pengembangan sesuatu
                                    konsep
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan5" value="B">
                                    Menggalakkan pembelajaran kendiri
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan5" value="C">
                                    Menggalakkan pembelajaran kendiri
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan5" value="D">
                                    Mewujudkan komunikasi sehala
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="question_card">
                    <div class="question"><a id="q6" class="anchor">6) Apakah yang dimaksudkan dengan amalan
                            terbaik dalam pengaturcaraan?</a></div>

                    <div class="answer">
                        <ul class="ansList">
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan6" value="A">
                                    Pengatur cara dapat menjalankan atur
                                    cara tanpa sebarang ralat.
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan6" value="B">
                                    Pengatur cara dapat menulis kod atur
                                    cara dengan baik.
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan6" value="C">
                                    pengatur cara dapat mempraktikkan
                                    amalan-amalan yang biasa diikuti untuk
                                    menghasilkan atur cara yang baik.
                                </label>
                            </li>
                            <li class="list_item">
                                <label class="label--checkbox">
                                    <input type="radio" class="radio" name="jawapan6" value="D">
                                    pengatur cara dapat menghasilkan atur
                                    cara yang bebas ralat yang senang
                                    untuk difahami.
                                </label>
                            </li>
                        </ul>
                    </div>

                    <div class="submit" style="text-align: center; margin-top: 30px; margin-bottom: 50px;">
                        <input type="submit" value="Submit" class="button">
                    </div>

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
                $("html,body").animate({ scrollTop: position }, time, "swing");
                return false;
            });
        });
    </script>
    
</html>
