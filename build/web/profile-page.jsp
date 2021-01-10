<%-- 
    Document   : profilepage.jsp
    Created on : Dec 16, 2020, 11:19:34 AM
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
    <title>CodingSchool Profile</title>
    <meta charset="utf-8">
    <link href="src/css/profile.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="src/js/profile.js"></script>
    <style>
        .menublock{
            margin-bottom: 80px;
        }
    </style>
</head>

<body>
    <div class="menublock">
        <%@ include file="header.jsp" %>
    </div>
    <!--Nav body -->


    <div class="profileblock">
        <div class="sideblock">
            <div class="sidetab">
                <div id="AboutMe" class="tabcontent">
                    <h3>Account Detail
                    </h3>
                    <jsp:include page="retrieveUserDetail.jsp"/>
                </div>
            </div>

        </div>
        <div class="mainblock">
            <div class="bar">
                <button class="tablinks" >Profile</button>
                <button class="tablinks" onclick="pageLink2()">Settings</button>
            </div>
            <div class=" tab ">
                <div id="Personal" class="tabcontent">
                    <h3>Personal Information

                    </h3>
                    <div id="edit">
                        <jsp:include page="personalread.jsp"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
 
    
    
</body>

</html>