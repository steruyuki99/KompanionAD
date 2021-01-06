/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Question;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;
import Question.Answer;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dzilh
 */
public class SummativeServlet extends HttpServlet {
    
    private JDBCUtility jdbcUtility;
    private Connection con;

    @Override
    public void init() throws ServletException {
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
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, SQLException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession(true);
        String username = (String) session.getAttribute("username");
        String a1 = request.getParameter("jawapan1");
        String a2 = request.getParameter("jawapan2");
        String a3 = request.getParameter("jawapan3");
        String a4 = request.getParameter("jawapan4");
        String a5 = request.getParameter("jawapan5");
        String a6 = request.getParameter("jawapan6");
        
        try ( /* TODO output your page here. You may use following sample code. */
            Statement stmt = con.createStatement()) {
            String sqlFind = "SELECT * FROM summative WHERE username='" + username + "'";
            ResultSet rs = stmt.executeQuery(sqlFind);

            Answer AnsSumm = new Answer();

            if(rs.next()){
                AnsSumm.updateAnswerDB(username, a1, a2, a3, a4, a5, a6);
            }else {
                AnsSumm.setAnswerDB(username, a1, a2, a3, a4, a5, a6);
            }

            request.setAttribute("successMessage", "Successfully Registered");
            request.getRequestDispatcher("/Summative_After.jsp").forward(request, response);
        }
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
//        Answer a = new Answer();
//        a.setAnswerDB(username,
//                        request.getParameter("jawapan1"),
//                        request.getParameter("jawapan2"),
//                        request.getParameter("jawapan3"),
//                        request.getParameter("jawapan4"),
//                        request.getParameter("jawapan5"),
//                        request.getParameter("jawapan6"));
//
//        request.setAttribute("successMessage", "Successfully Registered");
//        request.getRequestDispatcher("/Summative_After.jsp").forward(request, response);
            
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
            Logger.getLogger(SummativeServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(SummativeServlet.class.getName()).log(Level.SEVERE, null, ex);
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
