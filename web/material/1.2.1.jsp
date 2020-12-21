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
      <h1>Algoritma</h1>
	<p>
    Algoritma ialah satu set arahan untuk menyelesaikan masalah. Arahanarahan terperinci yang dapat diikuti oleh pembaca sehingga tugasan
    terlaksana dengan jayanya ialah suatu bentuk algoritma dalam kehidupan
    harian. Dalam kehidupan harian, terdapat banyak contoh yang boleh
    dikaitkan dengan algoritma. Contohnya, seorang ibu boleh merujuk
    arahan-arahan untuk persediaan memasak dalam buku resepi. <br>
    Algoritma dapat dihalusi dengan menambahkan butiran. Contohcontoh algoritma yang lain dalam kehidupan harian seperti berikut:
  <br></p>
  
  <img src="../material-image/Contoh1&2.png">
  <img src="../material-image/Contoh3.png">

  <p>Perhatikan Contoh 3. Adakah butiran algoritma cukup jelas? Jika tidak, anda
    perlu memperhalus algoritma tersebut dengan idea untuk menyelesaikan
    masalah tersebut. Misalnya, arahan (2) dan (4) memerlukan butiran tambahan.<br>
    Penghalusan arahan (2):<br><br>
    (i) Masukkan wang syiling atau wang kertas di slot wang yang disediakan<br>
    (ii) Perhatikan baki wang yang diperlukan<br>
    (iii) Jika baki masih belum mencapai sifar, masukkan baki wang yang
    dikehendaki<br>
    <br>Penghalusan arahan (4):
    (i) Tunggu air minuman tin keluar di ruangan yang disediakan<br>
    (ii) Ambil air minuman tin tersebut<br>
    (iii) Tunggu baki wang (jika ada) di ruangan yang disediakan<br>
    <br>Berdasarkan contoh-contoh algoritma dalam kehidupan harian yang
    telah diberikan, arahan dapat dikenal pasti mengikut urutan tertentu,
    mempunyai butiran yang jelas dan boleh dilaksanakan dalam waktu yang
    terbatas, yakni mempunyai permulaan dan pengakhiran.</p><br>

    <img src="../material-image/rajah.1.9.png"><br>

    <p>
      Arahan-arahan untuk menghasilkan algoritma berdasarkan ciri-ciri
      pada Rajah 1.9 adalah seperti yang berikut:
      <ol type="1">
        <li>Analisis masalah yang perlu diselesaikan. Kenal pasti input, matlamat
          proses dan output.</li>
        <li>Tulis arahan-arahan umum untuk memproses input kepada output.</li>
        <li>Analisis setiap arahan umum untuk menilai kejelasan arahan itu
          sehingga boleh dilaksanakan.<ol type="a">
            <li>Jika kurang jelas, halusi arahan umum dengan menulis arahanarahan yang terperinci.</li>
            <li>Untuk setiap arahan terperinci, buat penilaian sama ada arahan
              terperinci masih perlu dihalusi atau tidak.</li>
          </ol></li>
        <li>Buat penghalusan bagi setiap arahan umum yang masih kurang jelas.</li>
        <li>Arahan terakhir mestilah menghasilkan output yang dikehendaki oleh
          proses dan perkara ini ialah batasan algoritma yang direka cipta.</li>
      </ol>
    </p>

    <h2> 1.2.1 Keperluan Penyelesaian Masalah Berstrategi</h2>

    <p>Komputer ialah alat elektronik yang berupaya menerima dan memproses
      data input untuk menghasilkan maklumat sebagai output serta menyimpan
      kedua-dua data dan maklumat. Salah satu ciri komputer ialah kebolehan
      menyimpan dan menggunakan pelbagai atur cara untuk melaksanakan
      proses komputer. Semua atur cara komputer ialah perisian yang
      âmenghidupkanâ perkakasan komputer dengan memproses semua input
      kepada output. Apakah perkaitan atur cara komputer dengan algoritma? Atur cara komputer
      ialah algoritma komputer yang ditulis dalam bahasa pengaturcaraan yang
      boleh dilaksanakan oleh komputer.
      Rajah 1.10 menunjukkan ilustrasi perisian komputer sebagai model
      Input-Proses-Output (IPO). Sistem komputer menerima Input daripada
      pengguna. Input ialah nombor, aksara, perkataan, suara atau gambar yang
      dimasukkan oleh pengguna melalui papan kekunci. Proses mengubah
      input menggunakan formula matematik atau logik untuk menghasilkan
      output. Output ialah nilai yang dipaparkan pada skrin.<br>
      </p>

      <img src="../material-image/rajah.1.10.png">

      <h3>Analisis IPO</h3>
      <p>
        Sebelum menulis algoritma untuk suatu masalah, analisa IPO perlu
        dibuat. Analisis IPO adalah untuk mengenal pasti data input, proses untuk
        mengubah nilai data kepada maklumat dan paparan output maklumat
        setelah proses.<br>
        Untuk menganalisis masalah, carta Input-Proses-Output (IPO) boleh
        digunakan. Lihat Rajah 1.11.<br>
        <img src="../material-image/rajah.1.11.png">
        <br>Langkah-langkah membuat analisis IPO adalah: 
        <ol type="1">
          <li>Input: Harus mengenal pasti data yang perlu dibaca daripada pengguna
            atau persekitaran.</li>
          <li>Proses: Langkah-langkah ataupun rumusan untuk memproses data
            input kepada output.</li>
          <li>Output: Harus mengenal pasti output yang dikehendaki, yakni apa yang
            perlu dipaparkan pada skrin di akhir atur cara.</li>
        </ol><br>
        Langkah-langkah terperinci dalam proses komputer diberikan oleh algoritma. Algoritma ialah
        idea atau cara penyelesaian masalah dalam bentuk abstrak berasaskan arahan-arahan asas. Arahanarahan asas ini merujuk ciri-ciri dan struktur kawalan yang sedia ada dalam bahasa pengaturcaraan.
        Jika suatu proses itu tidak dapat dihuraikan dengan arahan-arahan asas komputer, proses tersebut
        berkemungkinan tidak sesuai untuk dilaksanakan oleh komputer.
      </p>

      <h3>Perwakilan Algoritma</h3>
      <p>Terdapat dua format perwakilan algoritma, iaitu pseudokod dan carta alir.<br>
        <b>â¢ Pseudokod</b> ialah senarai struktur kawalan komputer yang ditulis dalam bahasa pertuturan manusia
        dan mempunyai nombor turutan.<br>
        <b>â¢ Carta alir</b> adalah alternatif kepada pseudokod menggunakan simbol grafik untuk mewakili arahanarahan penyelesaian.</p>

        <h3>Pseudokod</h3>
        <p>Pseudokod bukanlah bahasa pengaturcaraan komputer. Arahan ditulis dalam bahasa pertuturan
          harian. Setiap arahan ialah ungkapan matematik, ungkapan logik, penggunaan struktur kawalan
          ataupun penggunaan fungsi komputer (contohnya membaca input). Setiap arahan diletakkan dalam
          baris baharu yang diberikan nombor siri.<br>
          Langkah-langkah menulis pseudokod:
          <ol type="1">
            <li>Tulis kenyetaan MULA.</li>
            <li>Baca INPUT.</li>
            <li>Proses data menggunakan ungkapan logik atau matematik.</li>
            <li>Papar OUTPUT.</li>
            <li>Tulis kenyataan TAMAT.</li>
          </ol>

          <h3>Carta Alir</h3>
        <p>Carta alir terdiri daripada nod dan garis penghubung. Simbol piawai
          mewakili setiap nod, lihat Jadual 1.1. Setiap nod dihubungkan oleh garis
          penghubung beranak panah. Anak panah menunjukkan aliran aktiviti.<br>
          
          <img src="../material-image/jadual.1.1.png"><br>

          Pembinaan carta alir tidak jauh berbeza daripada pseudokod. Melalui carta alir, IPO, simbol nod untuk
          semua formula, hubungan antara data dan fakta berkaitan dengan masalah dapat dikenal pasti.<br>

          Langkah-langkah membina carta alir
          <ol type="1">
            <li>Lukis nod terminal Mula.</li>
            <li>Lukis garis penghubung.</li>
            <li>Lukis nod input. Masukkan butiran seperti umpukan data.</li>
            <li>Lukis garis penghubung.</li>
            <li>Tulis kenyataan TAMAT.</li>
          </ol>
        </p>
  </div>

</div>
<!--end nav-body div-->
</body>
</html>