
<%-- 
    Document   : retrieveUserDetail
    Created on : Dec 18, 2020, 5:23:35 PM
    Author     : akmal
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String username=request.getParameter("username");
out.println(username);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webapplicationad", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM user WHERE username="+username);
out.println("Data Deleted Successfully!");
String redirectURL = "index.jsp";
response.sendRedirect(redirectURL);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>