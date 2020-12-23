<%-- 
    Document   : deleteuser
    Created on : Dec 23, 2020, 3:12:24 AM
    Author     : akmal
--%>
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

out.println(username);
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="DELETE * FROM user WHERE username = '"+username+"'";
resultSet = statement.executeQuery(sql);
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>