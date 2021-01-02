<%-- 
    Document   : profilesetting
    Created on : Dec 16, 2020, 11:20:30 AM
    Author     : akmal
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="javax.servlet.http.HttpSession" %>
        <%@page import="java.sql.*" %>
        <%@page import="jdbc.JDBCUtility" %>
        <%
                String username=(String)session.getAttribute("username");
            %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%
         if(session.getAttribute("username")==null){
             response.sendRedirect("loginpage.jsp");
         }
        %>
    <title>CodingSchool Setting</title>
    <meta charset="utf-8">
    <link href="src/css/profile.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="src/js/profile.js"></script>
    <style>
        .menublock{
            margin-bottom: 80px;
        }

/* Style the tab */
.minitab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.minitab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.minitab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.minitab button.active {
  background-color: lightskyblue;
}

/* Style the tab content */
.minicontent {
  display: none;
  padding: 6px 12px;
  -webkit-animation: fadeEffect 1s;
  animation: fadeEffect 1s;
}


/* Fade in tabs */
@-webkit-keyframes fadeEffect {
  from {opacity: 0;}
  to {opacity: 1;}
}

@keyframes fadeEffect {
  from {opacity: 0;}
  to {opacity: 1;}
}
</style>
    </style>
</head>

<body>
    <div class="menublock">
        <%@ include file="header.jsp" %>
    </div>
    <!--Nav body -->
    <div class="profileblock">
         <div class="mainblock">
            <div class="bar">
                <button class="tablinks" onclick="pageLink1()">Personal Information</button>
                <button class="tablinks">Settings</button>
            </div>
             
            <div class="minitab">
                <button class="tablink" onclick="openTab(event, 'Profile')" >Profile</button>
                <button class="tablink" onclick="openTab(event, 'Account')">Account</button>
                <button class="tablink" onclick="openTab(event, 'Other')">Others</button>
             </div>

              <div id="Profile" class="minicontent" style="display:block">
                              <div class="tabcontent" >
                                  <h3>Edit Profile</h3>
                                  <form method="post" id="usrprofile" action="profileupdate.jsp">
                                      <div class="col-lg-4">
                                        <label for="profil">About me: </label>
                                        <input type="hidden" name="username" value="${username}">  
                                        <textarea rows="4" cols="50" name="personal" form="usrprofile">Ceritakan tentang diri anda.
                                        
                                        </textarea><br>
                                        <input class="btn btn-success" type="submit" value="Submit">
                                        </div>
                                  </form>
                              </div>
                    
              </div>

              <div id="Account" class="minicontent">
                <div class="tab">
                              <div class="tabcontent">
                                  <h3>Edit Account</h3>
                                  <form action="UpdateUserData.jsp" method="post">
                                      <div class="col-lg-4">
                                          <div class="form-group>">
                                             <input type="hidden" name="username" value="${username}">  
                                              <label for="email">Email : </label><input class="form-control" type="email" name="email" placeholder="Email" required><br>
                                          </div>
                                          <div class="form-group>">
                                              <label for="password">Password : </label><input class="form-control" id="password" type="text" name="password" placeholder="Password" onkeyup='check();'><br>
                                          </div>
                                          <div class="form-group>">
                                              <label for="password">Re-enter Password : </label><input class="form-control" type="text" id="confirm_password" name="repassword" placeholder="Re-enter Password" onkeyup='check();'>
                                              <span id='message'></span><br><br><br>
                                          </div>
                                          <input class="btn btn-success" type="submit" value="Save">
                                      </div>
                                  </form>
                              </div>
                    </div>
              </div>

              <div id="Other" class="minicontent" >
                <div class="tab">
                    <div class="tabcontent" >
                        <h3>Delete Account</h3>
                        <form action="deleteuser.jsp"  ><div class="col-lg-4">

                            <div class="form-group>">
                                <label for="username">Username : </label><input class="form-control" type="text" name="username" placeholder="Enter Username" required><br>
                            </div>
                          
                                <input class="btn btn-success" type="submit" value="Delete">    
                            </div>
                        </form>
                    </div>
                </div>
              </div>
   
        </div>
    </div>

    <div class="footer">
    <p>
        This website is under development and maintained by KOMPANION.
    </p>
    </div>
<script>
function openTab(evt, tabName) {
  var i, minicontent, tablink;
  minicontent = document.getElementsByClassName("minicontent");
  for (i = 0; i < minicontent.length; i++) {
    minicontent[i].style.display = "none";
  }
  tablink = document.getElementsByClassName("tablink");
  for (i = 0; i < tablink.length; i++) {
    tablink[i].className = tablink[i].className.replace(" active", "");
  }
  document.getElementById(tabName).style.display = "block";
  evt.currentTarget.className += " active";
}

</script>
</body>


</html>