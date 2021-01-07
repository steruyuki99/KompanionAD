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
 * @author Asus
 */
public class Answer {
    private String username;
    private JDBCUtility jdbcUtility;
    private Connection con;
    private boolean ans1;
    private boolean ans2;
    private boolean ans3;
    private boolean ans4;
    private boolean ans5;
    private boolean ans6;
    private String answer1;
    private String answer2;
    private String answer3;
    private String answer4;
    private String answer5;
    private String answer6;
    
    public Answer(){
        
    }
    
    public void setBoolAns1(Boolean a){
        this.ans1 = a;
    }
    
    public void setBoolAns2(Boolean a){
        this.ans2 = a;
    }
    
    public void setBoolAns3(Boolean a){
        this.ans3 = a;
    }
    
    public void setBoolAns4(Boolean a){
        this.ans4 = a;
    }
    
    public void setBoolAns5(Boolean a){
        this.ans5 = a;
    }
    
    public void setBoolAns6(Boolean a){
        this.ans6 = a;
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
    
    public void setAnswer4 (String a){
        this.answer4 = a;
    }
    
    public void setAnswer5 (String a){
        this.answer5 = a;
    }
    
    public void setAnswer6 (String a){
        this.answer6 = a;
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
    
    public String getAnswer4(){
        return answer4;
    }
    
    public String getAnswer5(){
        return answer5;
    }
    
    public String getAnswer6(){
        return answer6;
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
            String sql = "SELECT ans1, ans2, ans3, ans4, ans5, ans6 FROM summative WHERE username='" + user + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next()){
                answerList.add(rs.getString("ans1"));
                answerList.add(rs.getString("ans2"));
                answerList.add(rs.getString("ans3"));
                answerList.add(rs.getString("ans4"));
                answerList.add(rs.getString("ans5"));
                answerList.add(rs.getString("ans6"));
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
            String sql = "SELECT ans1, ans2, ans3, ans4, ans5, ans6 FROM summative WHERE username='" + user + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next()){
                this.answer1 = rs.getString("ans1");
                this.answer2 = rs.getString("ans2");
                this.answer3 = rs.getString("ans3");
                this.answer4 = rs.getString("ans4");
                this.answer5 = rs.getString("ans5");
                this.answer6 = rs.getString("ans6");
            }
            
            
            if(this.answer1.equals("A")){
                score++;
            }
            
            if(this.answer2.equals("B")){
                score++;
            }
            
            if(this.answer3.equals("C")){
                score++;
            }
            
            if(this.answer4.equals("D")){
                score++;
            }
            
            if(this.answer5.equals("A")){
                score++;
            }
            
            if(this.answer6.equals("B")){
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
            String sql = "SELECT ans1, ans2, ans3, ans4, ans5, ans6 FROM summative WHERE username='" + user + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next()){
                this.answer1 = rs.getString("ans1");
                this.answer2 = rs.getString("ans2");
                this.answer3 = rs.getString("ans3");
                this.answer4 = rs.getString("ans4");
                this.answer5 = rs.getString("ans5");
                this.answer6 = rs.getString("ans6");
            }
            
            answerBool.add(this.ans1 = this.answer1.equals("A"));
            answerBool.add(this.ans2 = this.answer2.equals("B"));
            answerBool.add(this.ans3 = this.answer3.equals("C"));
            answerBool.add(this.ans4 = this.answer4.equals("D"));
            answerBool.add(this.ans5 = this.answer5.equals("A"));
            answerBool.add(this.ans6 = this.answer6.equals("B"));
            
        }
        
        return answerBool;
    }
    
    public void setAnswerDB(String user, String a1, String a2, String a3, String a4, String a5, String a6){
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "heroku_a8f8953a523fd66";
        String url = "jdbc:mysql://us-cdbr-east-02.cleardb.com/" + dbName + "?reconnect=true";
        String userName = "bd548560f46fb3";
        String password = "360fe00c";
        
        jdbcUtility = new JDBCUtility(driver,url,userName,password);
        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
        
        try {
                
                String sqlInsert = "INSERT INTO summative(username, ans1, ans2, ans3, ans4, ans5, ans6) VALUES(?,?,?,?,?,?,?)";
                try (PreparedStatement as = con.prepareStatement(sqlInsert)) {
                    as.setString(1, user);
                    as.setString(2, a1);
                    as.setString(3, a2);
                    as.setString(4, a3);
                    as.setString(5, a4);
                    as.setString(6, a5);
                    as.setString(7, a6);
                    
                    as.executeUpdate();
                }
                con.close();
                
            } catch (SQLException ex) {
                
            }        
    }
    
    public void updateAnswerDB(String user, String a1, String a2, String a3, String a4, String a5, String a6){
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "heroku_a8f8953a523fd66";
        String url = "jdbc:mysql://us-cdbr-east-02.cleardb.com/" + dbName + "?reconnect=true";
        String userName = "bd548560f46fb3";
        String password = "360fe00c";
        
        jdbcUtility = new JDBCUtility(driver,url,userName,password);
        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
        
        try {
                
                String sqlInsert = "UPDATE summative SET ans1=?, ans2=?, ans3=?, ans4=?, ans5=?, ans6=? WHERE username=?";
                try (PreparedStatement as = con.prepareStatement(sqlInsert)) {
                    
                    as.setString(1, a1);
                    as.setString(2, a2);
                    as.setString(3, a3);
                    as.setString(4, a4);
                    as.setString(5, a5);
                    as.setString(6, a6);
                    as.setString(7, user);
                    
                    as.executeUpdate();
                }
                con.close();
                
            } catch (SQLException ex) {
                
            }        
    }
        
}
