<%-- 
    Document   : loginpage
    Created on : Dec 13, 2020, 1:39:30 PM
    Author     : Amir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "header-material.jsp" %>
<%@ include file = "../navmenu.jsp" %>

<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../src/css/material.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Ubuntu:regular,bold&subset=Latin">
        <title>CodingSchool Material</title>
        <script type="text/javascript" src="../src/js/script.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 

        <style>  </style>

    </head>



    <body>


        <!--Header-->

        <button id="gotopbtn" onclick="goTop()">
            <i class="material-icons">arrow_upward</i>
        </button>


        <!--Nav body -->


        <div id="nav-body">

            <!--end menu div-->


            <div id="content-wrapper">
                <div id="content">
                    <h2>1.1.2 Ciri-ciri Penyelesaian Masalah Berkesan</h2>

                    <p>Setelah memikirkan strategi untuk menyelesaikan masalah dan
                        melaksanakan strategi tersebut, keputusan yang diperoleh akan
                        menggambarkan keberkesanan strategi penyelesaian masalah yang telah
                        diambil. Misi mencari penyelesaian melibatkan tiga ciri penting iaitu kos,
                        masa dan sumber.</p>

                    <ul>
                        <li ><h3 id="Kos">Kos</h3>Kos ditakrifkan sebagai harga yang perlu dibayar untuk memperoleh,
                            mengeluarkan dan menyenggara, biasanya berupa wang, masa, tenaga,
                            dan perbelanjaan. (Kamus Online Dewan Bahasa)
                            Persoalan yang selalu dibincangkan oleh jawatankuasa yang melaksanakan
                            projek ialah,
                            (a) berapakah kos projek?
                            (b) adakah kos tersebut akan menambah produktiviti?
                            (c) bolehkah kos tersebut menyelesaikan masalah yang dihadapi?
                            Projek yang dilaksanakan mengikut tempoh yang normal ialah projek yang
                            dilaksanakan mengikut masa dan kos yang diperuntukkan. Manakala kos
                            siap masa tercepat (crashing cost ), ialah usaha yang maksimum untuk
                            menyelesaikan projek dalam masa terpendek. Kos siap masa tercepat
                            (crashing cost ) meningkat apabila tempoh masa projek menurun.
                        </li>
                        <li><h3 id="Masa">Masa</h3>
                            Penyelesaian masalah secara berkesan yang melibatkan masa merujuk
                            sesuatu projek yang disiapkan mengikut masa yang telah ditetapkan.
                            Faktor masa dalam penyelesaian masalah ini memainkan peranan yang
                            penting supaya semua perancangan awal dan pelaksanaan penyelesaian
                            masalah dapat dilakukan mengikut tempoh yang ditetapkan. Aktiviti
                            pelaksanaan yang tertunda atau lambat disiapkan akan meningkatkan
                            kos. Selain itu, penyelesaian masalah yang memerlukan masa tersingkat
                            seperti keperluan menyiapkan projek dalam jangka masa terhad, juga
                            akan melibatkan peningkatan kos. Contoh, penambahan bilangan pekerja
                            supaya sesuatu projek dapat disiapkan dalam masa yang dikehendaki.
                            Carta Gantt merupakan jadual perancangan yang dapat melihat
                            perkembangan semua aktiviti projek yang dipaparkan mengikut tempoh
                            masa. Sebelah kiri carta ialah senarai aktiviti manakala bahagian atas
                            ialah tempoh masa. Setiap aktiviti diwakili oleh satu bar, panjang bar
                            mewakili tarikh mula dan tarikh akhir aktiviti tersebut. Penggunaan carta
                            Gantt penting dalam penyelesaian masalah kerana maklumat dapat dilihat
                            sepintas lalu iaitu,
                            <ol type="a">
                                <li>senarai aktiviti projek </li>
                                <li>bila setiap aktiviti bermula dan berakhir </li>
                                <li>tempoh masa setiap aktiviti</li>
                                <li>aktiviti-aktiviti yang bertindih</li>
                                <li>tarikh mula dan tarikh projek dijangka tamat</li>
                            </ol>
                        </li>
                        <br><img src="../material-image/rajah.1.7.png"></br>
                        <li><h3 id="Sumber">Sumber</h3>
                            Sumber didefinisikan sebagai stok atau wang, bahan-bahan mentah, staf dan aset lain yang boleh
                            digunakan dalam organisasi supaya dapat berfungsi dengan efektif (Kamus Online Dewan Bahasa).
                            Dalam perancangan penyelesaian masalah, semua penyelesaian memerlukan sumber. Sumber
                            diperlukan untuk menjana hasil atau perkhidmatan. Contoh sumber adalah seperti sumber kewangan,
                            sumber manusia dan sumber teknologi. Perancangan sumber adalah tanggungjawab pihak pengurusan
                            dan perancangan sumber yang baik adalah untuk mendapatkan keputusan yang optimum. Pembaziran
                            sumber dapat dielakkan dengan perancangan yang rapi. Masalah yang dihadapi apabila kekurangan
                            sumber ialah akan melambatkan masa untuk menyiapkan projek, seterusnya mengakibatkan
                            peningkatan kos projek.
                            Penjadualan sumber projek perlu diadakan untuk mengelakkan berlaku kekurangan supaya tidak
                            menjejaskan penyelesaian masalah yang dihadapi. Langkah-langkah yang berikut perlu diberikan
                            perhatian untuk tujuan ini.
                            <ol type="1"><b>
                                    <li>Memastikan ada pegawai atau unit yang memantau penjadualan sumber.</li>
                                    <li>Menggunakan sistem baris gilir mengikut keutamaan projek (first come first served).</li>
                                    <li>Memastikan keperluan projek diuruskan dengan teliti dengan mengambil kira sumber sedia ada
                                        dan sumber kewangan yang diperuntukkan.</li>
                                    <li>Mengadakan proses penjadualan aktiviti supaya seimbang dan boleh dilaksanakan sepanjang
                                        projek dijalankan.</li></b>
                            </ol>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <!--end nav-body div-->
    </body>
    <footer>

        <%@ include file = "footerMaterial.jsp" %>
    </footer>
</html>
