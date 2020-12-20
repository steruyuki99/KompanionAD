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
    private boolean ans;
    private String answer1;
    private String answer2;
    private String answer3;
    private String answer4;
    private String answer5;
    private String answer6;
    
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
    
    public ArrayList<Answer> getAnswerRecords(String user) throws SQLException{
        
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "webapplicationad";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";
        
        jdbcUtility = new JDBCUtility(driver,url,userName,password);
        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
        
        ArrayList<Answer> sqList = new ArrayList();
        
        try (Statement stmt = con.createStatement()) {
            String sql = "SELECT * FROM summative";
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next()){
                
                Answer sq = new Answer();
                
                sq.setUsername(user);
                sq.setAnswer1(rs.getString(2));
                sq.setAnswer2(rs.getString(3));
                sq.setAnswer3(rs.getString(4));
                sq.setAnswer4(rs.getString(5));
                sq.setAnswer5(rs.getString(6));
                sq.setAnswer6(rs.getString(7));
                
                sqList.add(sq);
            }
        }
        con.close();
        
        return sqList;
    }
    
    public int getScore() throws SQLException{
        
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
            String sql = "SELECT * FROM summative";
            ResultSet rs = stmt.executeQuery(sql);
            
            this.answer1 = rs.getString(2);
            this.answer2 = rs.getString(3);
            this.answer3 = rs.getString(4);
            this.answer4 = rs.getString(5);
            this.answer5 = rs.getString(6);
            this.answer6 = rs.getString(7);
            
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
    
    /*public boolean getResult(){
        return ans;
    }*/
        
}
