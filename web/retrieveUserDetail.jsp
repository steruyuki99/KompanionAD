<%-- 
    Document   : retrieveUserDetail
    Created on : Dec 18, 2020, 5:23:35 PM
    Author     : akmal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "webapplicationad";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>
<%
try{
String username=(String)session.getAttribute("username");


connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT username,email FROM user WHERE username = '"+username+"'";
resultSet = statement.executeQuery(sql);

if(resultSet.next()){
%>
<p>Username :
<%=resultSet.getString("username") %></p>
<P>Email :
<%=resultSet.getString("email") %></P>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>