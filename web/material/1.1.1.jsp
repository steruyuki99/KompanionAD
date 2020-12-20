<%-- 
    Document   : loginpage
    Created on : Dec 13, 2020, 1:39:30 PM
    Author     : Amir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "../header.jsp" %>


<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../src/css/material.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Ubuntu:regular,bold&subset=Latin">
        <title>CodingSchool Material</title>
        <script type="text/javascript" src="../src/js/script.js"></script>
    </head>

    <body>


        <button id="gotopbtn" onclick="goTop()">
            <i class="material-icons">arrow_upward</i>
        </button>


        <!--Header-->
        

        
        
        
        <!--Nav body -->


        <div id="nav-body">

            <div id="menu">

                <ul>

                    <div class="dropdown" id="dropdownnav">
                        <li><a href='1.1.1.html'>Strategi Penyelesaian Masalah</a>
                            <div class="dropCont">
                                <a href="1.1.1.html">Keperluan Penyelesaian Masalah Berstrategi</a>
                                <a href="1.1.2.html">Ciri-ciri Penyelesaian Masalah Berkesan</a>
                                <a href="1.1.3.html">Proses Penyelesaian Masalah</a>
                        </li>
                    </div>

                    <div class="dropdown" id="dropdownnav">
                        <li><a href='1.2.1.html'>Algoritma</a>
                            <div class="dropCont">
                                <a href="1.2.1.html">Penggunaan Algoritma untuk Menyelesaikan Masalah</a>
                                <a href="1.2.2.html">Struktur Kawalan dalam Pengatucaraan</a>
                                <a href="1.2.3.html">Menguji dan Membaiki Ralat dalam Algoritma</a>
                                <a href="1.2.4.html">Pengensanan Nilai Pemboleh Ubah pada Setiap Tahap dalam Algoritma</a>
                                <a href="1.2.5.html">Mengenal Pasti Output yang Betul dari Algoritma Berdasarkan Input yang Diberi</a>
                                <a href="1.2.6.html">Terjemahan Algoritma ke dalam Bahasa Pengaturcaraan</a>
                        </li>
                    </div>

                    <div class="dropdown" id="dropdownnav">
                        <li><a href='1.3.1.html'>Pemboleh Ubah, Pemalar dan Jenis Data</a>
                            <div class="dropCont">
                                <a href="1.3.1.html">Hubungan antara Jenis Data, Saiz Data dan Kapasiti Ingatan Komputer</a>
                                <a href="1.3.2.html">Perbezaan Pemboleh Ubah Sejagat dan Setempat</a>
                                <a href="1.3.3.html">Pengisytiharan, Permulaan dan Penetapan Nilai pada Pemboleh Ubah dan Pemalar</a>
                                <a href="1.3.4.html">Penggunaan Penyataan Umpukan dan Penyataan Aritmetik</a>
                                <a href="1.3.5.html">Penulisan Atur Cara untuk Memasukkan Input daripada Papan Kekunci dan Memaparkan Output</a>
                        </li>
                    </div>

                    <div class="dropdown" id="dropdownnav">
                        <li><a href='1.4.1.html'>Struktur Kawalan</a>
                            <div class="dropCont">
                                <a href="1.4.1.html">Struktur Kawalan Pilihan</a>
                                <a href="1.4.2.html">Operator Hubungan dan Operator Logikal dalam Struktur Kawalan Pilihan</a>
                                <a href="1.4.3.html">Struktur Kawalan Ulangan</a>
                                <a href="1.4.4.html">Struktur Kawalan yang Melibatkan Operator Increment dan Decrement, Class Math dan Boolean</a>
                        </li>
                    </div>

                    <div class="dropdown" id="dropdownnav">
                        <li><a href='1.5.1.html'>Amalan Terbaik Pengatucaraan</a>
                            <div class="dropCont">
                                <a href="1.5.1.html">Jenis Ralat dalam Atur Cara </a>
                                <a href="1.5.2.html">Pengesanan, Pengenalpastian dan Penterjemahan Mesej Ralat serta Pembaikan Ralat</a>
                                <a href="1.5.3.html">Mengenal Pasti Nilai bagi Pemboleh Ubah pada Bahagian Tertentu Atur Cara</a>
                                <a href="1.5.4.html">Penghasilan Atur Cara yang Mudah Dibaca dengan Menggunakan Gaya yang Baik (Komen, Nama Pemboleh Ubah yang Bermakna dan Inden)</a>
                        </li>
                    </div>

                    <div class="dropdown" id="dropdownnav">
                        <li><a href='1.6.1.html'>Struktur Data dan Modular</a>
                            <div class="dropCont">
                                <a href="1.6.1.html">Struktur Tatasusunan (array) Satu Dimensi</a>
                                <a href="1.6.2.html">Menggunakan Subatur Cara, Memahami Konsep Menghantar Parameter ke Subatur Cara dan Mengembalikan Data</a>
                                <a href="1.6.3.html">Perbezaan antara Fungsi (Function) dan Prosedur (Procedure) pada Subatur cara</a>
                                <a href="1.6.4.html">Menulis Atur Cara Bermodular yang Mengandungi Struktur Tatasusunan</a>
                        </li>
                    </div>

                    <div class="dropdown" id="dropdownnav">
                        <li><a href='1.7.1.html'>Pembangunan Aplikasi</a>
                            <div class="dropCont">
                                <a href="1.7.1.html">Kitaran Hayat Pembangunan Sistem</a>
                                <a href="1.7.2.html">Penciptaan Aplikasi atau Aplet</a>
                        </li>
                    </div>

                    <div class="dropdown" id="dropdownnav">
                        <li><a href='Summary.html'>Summary</a>
                            <div class="dropCont">
                            </div>

                            </ul>


                    </div>



                    <!--end menu div-->


                    <div id="content-wrapper">
                        <div id="content">
                            <h1>Strategi Penyelesaian Masalah</h1>
                            <h1>${username}</h1>
                            <p>Masalah ialah keraguan, situasi yang tidak diingini, cabaran dan peluang
                                yang dihadapi dalam kehidupan seseorang. Kemahiran membuat
                                keputusan amat diperlukan untuk melahirkan generasi yang berkebolehan
                                merancang strategi penyelesaian masalah. Contohnya, kita perlu membuat
                                keputusan tentang jenis makanan yang hendak dibeli di kantin dengan
                                jumlah wang yang ada.
                                Penyelesaian masalah ialah tunjang utama dalam sains komputer.
                                Pengatur cara perlu memahami cara penyelesaian sesuatu masalah dan
                                menterjemahkan cara tersebut kepada algoritma yang dapat difahami
                                oleh komputer. Komponen yang bertanggungjawab untuk melaksanakan
                                arahan ialah unit pemprosesan utama (central processing unit, CPU).
                                CPU akan melaksanakan arahan yang diterima dan bermulanya proses
                                penyelesaian masalah. Oleh itu, pengatur cara perlu menulis ?sintaks?
                                yang spesifik, iaitu peraturan yang diperlukan oleh komputer untuk
                                melaksanakan arahan dengan tepat. Rajah 1.1 dan 1.2 menunjukkan
                                contoh penulisan algoritma dan atur cara bagi memaparkan mesej Hello
                                Malaysia. Rajah 1.1 menunjukkan dua format perwakilan algoritma iaitu
                                pseudokod dan carta alir </p>

                            <img src="../material-image/rajah.1.1.png">
                            <img src="../material-image/rajah.1.2.png"> <br>

                            <h2> 1.1.1 Keperluan Penyelesaian Masalah Berstrategi</h2>
                            <p>Pelbagai masalah dalam kehidupan harian merupakan cabaran yang perlu
                                diatasi. Masalah menghalang kita daripada mencapai apa yang diingini, di
                                samping mengganggu kelancaran dan keselesaan hidup. Sesuatu masalah
                                yang rumit memerlukan strategi penyelesaian masalah yang berkesan.
                                Apakah faedah penggunaan strategi dalam penyelesaian masalah?</p>

                            <p>Pembangunan aplikasi komputer berkait rapat dengan strategi penyelesaian
                                masalah dalam pengaturcaraan komputer. Seseorang perlu menguasai
                                strategi penyelesaian masalah supaya dapat memahami masalah dengan
                                mudah bagi mendapatkan strategi penyelesaian yang terbaik.
                            </p>

                            <p><b>Penyelesaian masalah</b> sebagai proses mengkaji butiran sesuatu
                                masalah untuk mendapatkan satu penyelesaian (Businessdictionary.com) </p>

                            <p>Komputer boleh digunakan untuk menyelesaikan masalah. Walau
                                bagaimanapun, cara penyelesaian terhadap masalah yang dihadapi
                                haruslah jelas sebelum mengatasinya. Pemikiran komputasional
                                (computational ) membolehkan kita memahami masalah yang dihadapi dan
                                membangunkan penyelesaian yang munasabah apabila kita menghadapi
                                masalah yang kompleks. </p>

                            <p>Empat teknik pemikiran komputasional dalam penyelesaian masalah
                                ialah: <br><br>

                            <ol>
                                <li><b>Teknik Leraian (Decomposition)</b> ? Memecahkan masalah kepada
                                    bahagian yang lebih kecil dan terkawal. Sebelum komputer
                                    menyelesaikan masalah, masalah dan cara untuk menyelesaikannya
                                    mestilah difahami. Penguraian masalah membantu memecahkan
                                    masalah kompleks kepada bahagian yang mudah diuruskan. Begitu
                                    juga, kita cuba memahami bagaimana sistem yang kompleks berfungsi
                                    menggunakan teknik leraian.
                                    Contoh: Memahami cara sebuah basikal berfungsi akan jadi lebih
                                    mudah jika seluruh basikal itu dipecahkan kepada bahagian yang
                                    kecil. Rujuk rajah di bawah dan labelkan bahagian basikal yang
                                    dilukiskan.
                                    <img src="../material-image/rajah.1.4.png"> <br></li>

                                <li><b>Pengecaman corak <i>(Pattern recognition) </i></b> ? Mencari persamaan
                                    (similarities) antara masalah dan dalam masalah. Apabila kita telah
                                    meleraikan masalah yang kompleks kepada bahagian yang mudah
                                    urus dengan teknik leraian, ini membantu dalam mengenal pasti
                                    persamaan atau corak yang ada pada setiap bahagian masalah
                                    yang kecil. Corak-corak ini dapat membantu menyelesaikan masalah
                                    kompleks dengan lebih efisien.
                                    Bayangkan kita hendak mengetahui cara sesebuah basikal berfungsi.
                                    Ciri-ciri basikal ialah mempunyai dua buah roda yang berputar, hendal
                                    untuk menguasai hala tuju, pedal untuk menggerakkan basikal dan
                                    rantai yang menjadi penyambung supaya basikal dapat berfungsi.
                                    Jadi, kita boleh melukis gambar basikal berdasarkan ciri-ciri di atas.
                                    Dalam pemikiran komputasional, ciri-ciri ini dikenal sebagai corak.
                                    Cuma yang berbeza secara spesifik ialah warna basikal, bunyi loceng
                                    atau saiz roda.
                                    <img src="../material-image/3basikal.png"><br>
                                    Dalam pemikiran komputasional, setelah mengetahui ciri-ciri umum
                                    untuk masalah menggosok gigi, satu corak telah terbentuk. Apabila
                                    kita dapat mengetahui cara menggosok gigi, individu yang lain juga
                                    dapat berbuat demikian dengan mengikuti corak-corak tersebut.<br>
                                    <br></li>
                                <li><b>Peniskalaan <i>(Abstraction) </i></b>? Peniskalaan adalah penting supaya
                                    dapat menjana penyelesaian yang tepat kepada masalah yang
                                    dihadapi. Contohnya, untuk menghasilkan sebuah basikal, jika tidak
                                    meniskalakan ciri-ciri umum dan spesifik, kita berkemungkinan akan
                                    menghasilkan basikal yang beroda kecil dan berbakul di hendalnya,
                                    iaitu merupakan satu penyelesaian yang tidak tepat. Satu model
                                    basikal ialah basikal yang mempunyai dua roda, hendal dan pedal. Ciri
                                    spesifik seperti saiz roda, berbakul atau berloceng dan warna rangka
                                    hendaklah diabaikan.<br>
                                    <img src="../material-image/rajah.abstract.png"><br>
                                    Setelah mendapat model kepada masalah, kita boleh menggunakan
                                    corak di atas untuk melukis basikal dan juga membina algoritma
                                    untuk menyelesaikan masalah yang dihadapi.<br><br>
                                </li>

                                <li><b>Algoritma <i>(Algorithms)</i></b> ? Membangunkan penyelesaian langkah demi
                                    langkah terhadap masalah yang dihadapi atau mematuhi peraturan
                                    untuk menyelesaikan masalah. Algoritma merupakan suatu pelan,
                                    iaitu satu set langkah arahan untuk menyelesaikan masalah. Jika anda
                                    boleh mengikat tali kasut, membuat secawan kopi, atau menyediakan
                                    makanan, anda telah tahu mengikut sesuatu algoritma.
                                    Dalam algoritma, setiap arahan dikenal pasti dan susunan
                                    pelaksanaannya dijalankan seperti yang dirancang. Algoritma juga
                                    digunakan sebagai titik mula untuk rekaan program komputer dalam
                                    bentuk carta alir dan pseudokod.<br>
                                    <img src="../material-image/rajah.1.5.png">
                                </li>

                                </p>

                        </div>
                    </div>

            </div>
            <!--end nav-body div-->
    </body>

</html>