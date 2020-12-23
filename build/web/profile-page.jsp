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
                    <h3>Account Settings
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
                    <div id="edit" contenteditable="true">
                        "Praesent suscipit fringilla enim et mollis. Phasellus dictum suscipit velit sit amet condimentum. Sed at aliquam nunc, accumsan tincidunt lacus. Phasellus et consectetur turpis, a pellentesque mi. Aenean eu tincidunt magna, eu dapibus neque. Donec fringilla
                        venenatis vulputate. Integer pharetra urna quis nibh ultrices, eget egestas sapien rhoncus. Aliquam eros nulla, facilisis vel nisl in, tempus scelerisque urna. Duis eget nulla id ante eleifend congue. Mauris eu ornare nisl, sit
                        amet consectetur turpis. Morbi erat metus, euismod ac sem tincidunt, luctus efficitur dui. Pellentesque at nibh vel magna tincidunt fringilla et ac urna. ""
                    </div>
                    <input type="button" value="Save" onclick="saveEdits()">
                </div>
            </div>
        </div>
    </div>
 
    <div class="footer">
    <p>
        This website is under development and maintained by KOMPANION.
    </p>
    </div>
    
</body>

</html>