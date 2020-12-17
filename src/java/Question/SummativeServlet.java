/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Question;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;
import Question.Answer;
/**
 *
 * @author Asus
 */
@WebServlet(name = "SummativeServlet", urlPatterns = "/SummativeServlet")
public class SummativeServlet extends HttpServlet {
    private JDBCUtility jdbcUtility;
    private Connection con;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/SummativeQuestion.html");

        requestDispatcher.forward(req, resp);
    }

    @Override
    public void init() throws ServletException
    {
        String driver = "com.mysql.jdbc.Driver";

        String dbName = "webapplicationad";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";

        jdbcUtility = new JDBCUtility(driver,
                                      url,
                                      userName,
                                      password);

        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     HttpSession session = request.getSession();
     String username=(String)request.getAttribute("userID");
     String j1=  request.getParameter("jawapan1");
     String j2=  request.getParameter("jawapan2");
     String j3 = request.getParameter("jawapan3");
     String j4 = request.getParameter("jawapan4");
     String j5 = request.getParameter("jawapan5");
     String j6 = request.getParameter("jawapan6");
     boolean c1,c2,c3,c4,c5,c6;
     
     if(j1.equals("A")){
         c1=true;
     }
     else{
         c1=false;
     }
     
     if(j2.equals("B")){
         c2=true;
     }
     else{
         c2=false;
     }
       
     if(j3.equals("C")){
         c3=true;
     }
     else{
         c3=false;
     }
         
    if(j4.equals("D")){
         c4=true;
     }
     else{
         c4=false;
     }
           
     if(j5.equals("A")){
         c5=true;
     }
     else{
         c5=false;
     }
     
       if(j6.equals("B")){
         c6=true;
     }
     else{
         c6=false;
     }
     try{
         PreparedStatement ps = null;
         ps = con.prepareStatement ("INSERT INTO sumstuans(userID, Ans1, Ans2, Ans3, Ans4, Ans5, Ans6) VALUES(?,?,?,?,?,?,?)");
         username="test";
          ps.setString (1, username);
          ps.setString (2, j1);
          ps.setString (3, j2);
          ps.setString (4, j3);
          ps.setString(5, j4);
          ps.setString(6, j5);
          ps.setString(7, j6);
          ps.executeUpdate();
     }
         catch(SQLException ex){

        }
     
     try(PrintWriter out = response.getWriter()){
      
       ArrayList<Answer> ans = new ArrayList<Answer>();
       
       ans.add(new Answer(c1, j1));
       ans.add(new Answer(c2, j2));
       ans.add(new Answer(c3, j3));
       ans.add(new Answer(c4, j4));
       ans.add(new Answer(c5, j5));
       ans.add(new Answer(c6, j6));
       
       request.setAttribute("data", ans);
       RequestDispatcher rd =  
         request.getRequestDispatcher("AnsSummative.jsp"); 
        rd.forward(request, response); 
        
     }
       response.sendRedirect ("AnsSummative.jsp");
    }
}
