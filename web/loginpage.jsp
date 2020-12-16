<%-- 
    Document   : loginpage
    Created on : Dec 13, 2020, 1:39:30 PM
    Author     : Amir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>CodingSchool Login</title>
        <link rel="stylesheet" href="src/css/login.css">  
        <!--===============================================================================================-->	 
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="src/Login_v1/images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        
    </head>

    <body>
        
        <div style="color:red">${errorMessage}</div>
        <div style="color:green">${successMessage}</div>
        
        
        <button id="homebtn" onclick="history.back()">
            <i class="material-icons">first_page</i>
        </button>
        
        <div class="login-page">
            <div class="form">

                <form class="register-form" action="userRegisterServlet" method="POST">
                    <h1 class="login-title">Registration</h1>
                    <input type="text" placeholder="Username" name="username"  required/>
                    <input type="password" placeholder="Password" name="password"  required/>
                    <input type="email" placeholder="Email" name="email" required/>
                     <button type="submit">Register</button>
                    <p class="message">Already Registered? <a href="#">Login</a></p>
                </form>

                <form class="login-form" action="loginServlet" method="POST" >
                    <h1 class="login-title">Member Login</h1>
                    <input type="text" placeholder="Username" name="username"  required/>
                    <input type="password" placeholder="Password" name="password"  required />
                     <button type="submit" ${message} >Login</button>
                    <p class="message">Dont have an account? <a href="#">Register</a></p>
                </form>
                    
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.min.js">
        </script>

        <script>
            $('.message a').click(function () {
                $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
            })
        </script>

    </body>

</html>
