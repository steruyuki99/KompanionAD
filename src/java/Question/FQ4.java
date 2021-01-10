/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Question;

import java.sql.*;
import java.util.ArrayList;
import jdbc.JDBCUtility;
/**
 *
 * @author dzilh
 */
public class FQ4 {
    private String username;
    private JDBCUtility jdbcUtility;
    private Connection con;
    private boolean ans1;
    private boolean ans2;
    private boolean ans3;
    private String answer1;
    private String answer2;
    private String answer3;
    
    public void setBoolAns1(Boolean a){
        this.ans1 = a;
    }
    
    public void setBoolAns2(Boolean a){
        this.ans2 = a;
    }
    
    public void setBoolAns3(Boolean a){
        this.ans3 = a;
    }
    
    public void setAnswer1 (String a){
        this.answer1 = a;
    }
    
    public void setAnswer2 (String a){
        this.answer2 = a;
    }
    
    public void setAnswer3 (String a){
        this.answer3 = a;
    }
    
    public void setUsername (String user){
        this.username = user;
    }
    
    public String getAnswer1(){
        return answer1;
    }
    
    public String getAnswer2(){
        return answer2;
    }
    
    public String getAnswer3(){
        return answer3;
    }
    
    public ArrayList<String> getAnswerRecords(String user) throws SQLException{
        
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "heroku_a8f8953a523fd66";
        String url = "jdbc:mysql://us-cdbr-east-02.cleardb.com/" + dbName + "?reconnect=true";
        String userName = "bd548560f46fb3";
        String password = "360fe00c";
        
        jdbcUtility = new JDBCUtility(driver,url,userName,password);
        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
        
        ArrayList<String> answerList = new ArrayList();
        
        try (Statement stmt = con.createStatement()) {
            String sql = "SELECT ans1, ans2, ans3 FROM formativefour WHERE username='" + user + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next()){
                answerList.add(rs.getString("ans1"));
                answerList.add(rs.getString("ans2"));
                answerList.add(rs.getString("ans3"));
            }
        }
        con.close();
        
        return answerList;
    }
    
    public int getScore(String user) throws SQLException{
        
        int score = 0;
        
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "heroku_a8f8953a523fd66";
        String url = "jdbc:mysql://us-cdbr-east-02.cleardb.com/" + dbName + "?reconnect=true";
        String userName = "bd548560f46fb3";
        String password = "360fe00c";
        
        jdbcUtility = new JDBCUtility(driver,url,userName,password);
        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
        
        try (Statement stmt = con.createStatement()) {
            String sql = "SELECT ans1, ans2, ans3 FROM formativefour WHERE username='" + user + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next()){
                this.answer1 = rs.getString("ans1");
                this.answer2 = rs.getString("ans2");
                this.answer3 = rs.getString("ans3");
            }
            
            if(rs == null){
                return 5;
            }
            if(this.answer1.equals("A")){
                score++;
            }
            
            if(this.answer2.equals("D")){
                score++;
            }
            
            if(this.answer3.equals("D")){
                score++;
            }
            
        }
        con.close();
        
        return score;
    }
    
    public ArrayList<Boolean> getAnswerBoolean(String user) throws SQLException{
        
        ArrayList<Boolean> answerBool = new ArrayList();
        
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "heroku_a8f8953a523fd66";
        String url = "jdbc:mysql://us-cdbr-east-02.cleardb.com/" + dbName + "?reconnect=true";
        String userName = "bd548560f46fb3";
        String password = "360fe00c";
        
        jdbcUtility = new JDBCUtility(driver,url,userName,password);
        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
        
        try (Statement stmt = con.createStatement()) {
            String sql = "SELECT ans1, ans2, ans3 FROM formativefour WHERE username='" + user + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next()){
                this.answer1 = rs.getString("ans1");
                this.answer2 = rs.getString("ans2");
                this.answer3 = rs.getString("ans3");
            }
            
            answerBool.add(this.ans1 = this.answer1.equals("A"));
            answerBool.add(this.ans2 = this.answer2.equals("D"));
            answerBool.add(this.ans3 = this.answer3.equals("D"));
            
        }
        
        return answerBool;
    }
    
    public void setAnswerDB(String user, String a1, String a2, String a3){
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "heroku_a8f8953a523fd66";
        String url = "jdbc:mysql://us-cdbr-east-02.cleardb.com/" + dbName + "?reconnect=true";
        String userName = "bd548560f46fb3";
        String password = "360fe00c";
        
        jdbcUtility = new JDBCUtility(driver,url,userName,password);
        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
        
        try {
                
                String sqlInsert = "INSERT INTO formativefour(username, ans1, ans2, ans3) VALUES(?,?,?,?)";
                try (PreparedStatement as = con.prepareStatement(sqlInsert)) {
                    as.setString(1, user);
                    as.setString(2, a1);
                    as.setString(3, a2);
                    as.setString(4, a3);
                    
                    as.executeUpdate();
                }
                con.close();
                
            } catch (SQLException ex) {
                
            }        
    }
    
    public void updateAnswerDB(String user, String a1, String a2, String a3){
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "heroku_a8f8953a523fd66";
        String url = "jdbc:mysql://us-cdbr-east-02.cleardb.com/" + dbName + "?reconnect=true";
        String userName = "bd548560f46fb3";
        String password = "360fe00c";
        
        jdbcUtility = new JDBCUtility(driver,url,userName,password);
        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
        
        try {
                
                String sqlInsert = "UPDATE formativefour SET ans1=?, ans2=?, ans3=? WHERE username=?";
                try (PreparedStatement as = con.prepareStatement(sqlInsert)) {
                    
                    as.setString(1, a1);
                    as.setString(2, a2);
                    as.setString(3, a3);
                    as.setString(4, user);
                    
                    as.executeUpdate();
                }
                con.close();
                
            } catch (SQLException ex) {
                
            }        
    }
}
