<%-- 
    Document   : personalread
    Created on : Jan 3, 2021, 1:16:37 AM
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
        String userName = "bd548560f46fb3";
        String password = "360fe00c";
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
String sql ="SELECT * FROM userprofile WHERE username = '"+username+"'";
resultSet = statement.executeQuery(sql);

if(resultSet.next()){

out.println(resultSet.getString("personal"));
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>