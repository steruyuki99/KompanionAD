<%-- 
    Document   : UpdateUserData
    Created on : Jan 3, 2021, 4:19:10 AM
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
String password=request.getParameter("password");
String email=request.getParameter("email");

out.println(username);
if(username != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update user set email=?,password=? where username='"+username+"'";
ps = con.prepareStatement(sql);
ps.setString(1,email);
ps.setString(2,password);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
String redirectURL = "profile-page.jsp";
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