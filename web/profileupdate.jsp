<%-- 
    Document   : profileinsert
    Created on : Jan 3, 2021, 1:19:06 AM
    Author     : akmal
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/webapplicationad";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String username = request.getParameter("username");
String personal=request.getParameter("personal");
out.println(username);
out.println(personal);
if(username != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update userprofile set personal=? where username='"+username+"'";
ps = con.prepareStatement(sql);
ps.setString(1, personal);

int i = ps.executeUpdate();
if(i > 0)
{

String redirectURL = "profile-setting.jsp";
response.sendRedirect(redirectURL);
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>