/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Question;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;
import Question.*;
/**
 *
 * @author dzilh
 */
public class FormativeServlet extends HttpServlet {
    
    private JDBCUtility jdbcUtility;
    private Connection con;

    @Override
    public void init() throws ServletException {
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "heroku_a8f8953a523fd66";
        String url = "jdbc:mysql://us-cdbr-east-02.cleardb.com/" + dbName + "?reconnect=true";
        String userName = "bd548560f46fb3";
        String password = "360fe00c";

        jdbcUtility = new JDBCUtility(driver,
                url,
                userName,
                password);

        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
    }
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession(true);
        String username = (String) session.getAttribute("username");
        
        String Formative = request.getParameter("Formative");
        
        switch (Formative) {
            case "A":
                try (PrintWriter out = response.getWriter()) {
                    /* TODO output your page here. You may use following sample code. */
                    try ( /* TODO output your page here. You may use following sample code. */
                        Statement stmt = con.createStatement()) {
                        String sqlFind = "SELECT * FROM formativeone WHERE username='" + username + "'";
                        ResultSet rs = stmt.executeQuery(sqlFind);
                        
                        String j1 = request.getParameter("jawapan1");
                        String j2 = request.getParameter("jawapan2");
                        String j3 = request.getParameter("jawapan3");

                        FQ1 fq1 = new FQ1();
                        
                        if(rs.next()){
                            fq1.updateAnswerDB(username, j1, j2, j3);
                        }else {
                            fq1.setAnswerDB(username, j1, j2, j3);
                        }
                        
                        request.setAttribute("successMessage", "Successfully Registered");
                        request.getRequestDispatcher("/FQ1_After.jsp").forward(request, response);
                    }
                }
                break;
            case "B":
                try (PrintWriter out = response.getWriter()) {
                    /* TODO output your page here. You may use following sample code. */
                    try ( /* TODO output your page here. You may use following sample code. */
                        Statement stmt = con.createStatement()) {
                        String sqlFind = "SELECT * FROM formativetwo WHERE username='" + username + "'";
                        ResultSet rs = stmt.executeQuery(sqlFind);
                        
                        String j1 = request.getParameter("jawapan1");
                        String j2 = request.getParameter("jawapan2");
                        String j3 = request.getParameter("jawapan3");

                        FQ2 fq2 = new FQ2();
                        
                        if(rs.next()){
                            fq2.updateAnswerDB(username, j1, j2, j3);
                        }else {
                            fq2.setAnswerDB(username, j1, j2, j3);
                        }
                        
                        request.setAttribute("successMessage", "Successfully Registered");
                        request.getRequestDispatcher("/FQ2_After.jsp").forward(request, response);
                    }
                }
                break;
            case "C":
                try (PrintWriter out = response.getWriter()) {
                    /* TODO output your page here. You may use following sample code. */
                    try ( /* TODO output your page here. You may use following sample code. */
                        Statement stmt = con.createStatement()) {
                        String sqlFind = "SELECT * FROM formativethree WHERE username='" + username + "'";
                        ResultSet rs = stmt.executeQuery(sqlFind);
                        
                        String j1 = request.getParameter("jawapan1");
                        String j2 = request.getParameter("jawapan2");
                        String j3 = request.getParameter("jawapan3");

                        FQ3 fq3 = new FQ3();
                        
                        if(rs.next()){
                            fq3.updateAnswerDB(username, j1, j2, j3);
                        }else {
                            fq3.setAnswerDB(username, j1, j2, j3);
                        }
                        
                        request.setAttribute("successMessage", "Successfully Registered");
                        request.getRequestDispatcher("/FQ3_After.jsp").forward(request, response);
                    }
                }
                break;
            case "D":
                try (PrintWriter out = response.getWriter()) {
                    /* TODO output your page here. You may use following sample code. */
                    try ( /* TODO output your page here. You may use following sample code. */
                        Statement stmt = con.createStatement()) {
                        String sqlFind = "SELECT * FROM formativefour WHERE username='" + username + "'";
                        ResultSet rs = stmt.executeQuery(sqlFind);
                        
                        String j1 = request.getParameter("jawapan1");
                        String j2 = request.getParameter("jawapan2");
                        String j3 = request.getParameter("jawapan3");

                        FQ4 fq4 = new FQ4();
                        
                        if(rs.next()){
                            fq4.updateAnswerDB(username, j1, j2, j3);
                        }else {
                            fq4.setAnswerDB(username, j1, j2, j3);
                        }
                        
                        request.setAttribute("successMessage", "Successfully Registered");
                        request.getRequestDispatcher("/FQ4_After.jsp").forward(request, response);
                    }
                }
                break;
            case "E":
                try (PrintWriter out = response.getWriter()) {
                    /* TODO output your page here. You may use following sample code. */
                    try ( /* TODO output your page here. You may use following sample code. */
                        Statement stmt = con.createStatement()) {
                        String sqlFind = "SELECT * FROM formativefive WHERE username='" + username + "'";
                        ResultSet rs = stmt.executeQuery(sqlFind);
                        
                        String j1 = request.getParameter("jawapan1");
                        String j2 = request.getParameter("jawapan2");
                        String j3 = request.getParameter("jawapan3");

                        FQ5 fq5 = new FQ5();
                        
                        if(rs.next()){
                            fq5.updateAnswerDB(username, j1, j2, j3);
                        }else {
                            fq5.setAnswerDB(username, j1, j2, j3);
                        }
                        
                        request.setAttribute("successMessage", "Successfully Registered");
                        request.getRequestDispatcher("/FQ5_After.jsp").forward(request, response);
                    }
                }
                break;
            case "F":
                try (PrintWriter out = response.getWriter()) {
                    /* TODO output your page here. You may use following sample code. */
                    try ( /* TODO output your page here. You may use following sample code. */
                        Statement stmt = con.createStatement()) {
                        String sqlFind = "SELECT * FROM formativesix WHERE username='" + username + "'";
                        ResultSet rs = stmt.executeQuery(sqlFind);
                        
                        String j1 = request.getParameter("jawapan1");
                        String j2 = request.getParameter("jawapan2");
                        String j3 = request.getParameter("jawapan3");

                        FQ6 fq6 = new FQ6();
                        
                        if(rs.next()){
                            fq6.updateAnswerDB(username, j1, j2, j3);
                        }else {
                            fq6.setAnswerDB(username, j1, j2, j3);
                        }
                        
                        request.setAttribute("successMessage", "Successfully Registered");
                        request.getRequestDispatcher("/FQ6_After.jsp").forward(request, response);
                    }
                }
                break;
            case "G":
                try (PrintWriter out = response.getWriter()) {
                    
                    try ( /* TODO output your page here. You may use following sample code. */
                        Statement stmt = con.createStatement()) {
                        String sqlFind = "SELECT * FROM formativeseven WHERE username='" + username + "'";
                        ResultSet rs = stmt.executeQuery(sqlFind);
                        
                        String j1 = request.getParameter("jawapan1");
                        String j2 = request.getParameter("jawapan2");
                        String j3 = request.getParameter("jawapan3");

                        FQ7 fq7 = new FQ7();
                        
                        if(rs.next()){
                            fq7.updateAnswerDB(username, j1, j2, j3);
                        }else {
                            fq7.setAnswerDB(username, j1, j2, j3);
                        }
                        
                        request.setAttribute("successMessage", "Successfully Registered");
                        request.getRequestDispatcher("/FQ7_After.jsp").forward(request, response);
                    }
                         
                }
                break;
            default:
                break;
        }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(FormativeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(FormativeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
