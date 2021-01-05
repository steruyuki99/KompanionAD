
<%-- 
    Document   : retrieveUserDetail
    Created on : Dec 18, 2020, 5:23:35 PM
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

out.println(username);
if(username != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Delete from user where username='"+username+"'";
ps = con.prepareStatement(sql);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Delete Successfully");

session.removeAttribute("username");
session.invalidate();  
String redirectURL = "index.jsp";
response.sendRedirect(redirectURL);
}
else
{
out.print("There is a problem in deleting Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>