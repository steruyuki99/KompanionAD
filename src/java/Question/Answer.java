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
        String dbName = "webapplicationad";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";
        
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
        String dbName = "webapplicationad";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";
        
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
    
    
        
}
