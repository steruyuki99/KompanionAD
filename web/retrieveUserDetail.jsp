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
        String dbName = "heroku_a8f8953a523fd66";
        String url = "jdbc:mysql://us-cdbr-east-02.cleardb.com/" + dbName + "?reconnect=true";
        String userid = "bd548560f46fb3";
        String password = "360fe00c";
        String driver = "com.mysql.jdbc.Driver";
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

connection = DriverManager.getConnection(url, userid, password);
statement=connection.createStatement();
String sql ="SELECT username,email FROM user WHERE username = '"+username+"'";
resultSet = statement.executeQuery(sql);

if(resultSet.next()){
%>
<p>Username :
<%=resultSet.getString("username") %></p>
<P>Email :
<%=resultSet.getString("email") %></P>

<%}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>