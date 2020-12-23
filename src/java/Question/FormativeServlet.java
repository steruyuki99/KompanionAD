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
                    try {

                        String sqlInsert = "INSERT INTO formativeone(username, ans1, ans2, ans3) VALUES(?,?,?,?)";
                        try (PreparedStatement as = con.prepareStatement(sqlInsert)) {
                            as.setString(1, username);
                            as.setString(2, request.getParameter("jawapan1"));
                            as.setString(3, request.getParameter("jawapan2"));
                            as.setString(4, request.getParameter("jawapan3"));

                            as.executeUpdate();
                        }
                        con.close();

                    } catch (SQLException ex) {

                    }

                    request.setAttribute("successMessage", "Successfully Registered");
                    request.getRequestDispatcher("/FormativeQuestion1.jsp").forward(request, response);
                }
                break;
            case "B":
                try (PrintWriter out = response.getWriter()) {
                    /* TODO output your page here. You may use following sample code. */
                    try {

                        String sqlInsert = "INSERT INTO formativetwo(username, ans1, ans2, ans3) VALUES(?,?,?,?)";
                        try (PreparedStatement as = con.prepareStatement(sqlInsert)) {
                            as.setString(1, username);
                            as.setString(2, request.getParameter("jawapan1"));
                            as.setString(3, request.getParameter("jawapan2"));
                            as.setString(4, request.getParameter("jawapan3"));

                            as.executeUpdate();
                        }
                        con.close();

                    } catch (SQLException ex) {

                    }

                    request.setAttribute("successMessage", "Successfully Registered");
                    request.getRequestDispatcher("/FormativeQuestion2.jsp").forward(request, response);
                }
                break;
            case "C":
                try (PrintWriter out = response.getWriter()) {
                    /* TODO output your page here. You may use following sample code. */
                    try {

                        String sqlInsert = "INSERT INTO formativethree(username, ans1, ans2, ans3) VALUES(?,?,?,?)";
                        try (PreparedStatement as = con.prepareStatement(sqlInsert)) {
                            as.setString(1, username);
                            as.setString(2, request.getParameter("jawapan1"));
                            as.setString(3, request.getParameter("jawapan2"));
                            as.setString(4, request.getParameter("jawapan3"));

                            as.executeUpdate();
                        }
                        con.close();

                    } catch (SQLException ex) {

                    }

                    request.setAttribute("successMessage", "Successfully Registered");
                    request.getRequestDispatcher("/FormativeQuestion3.jsp").forward(request, response);
                }
                break;
            case "D":
                try (PrintWriter out = response.getWriter()) {
                    /* TODO output your page here. You may use following sample code. */
                    try {

                        String sqlInsert = "INSERT INTO formativefour(username, ans1, ans2, ans3) VALUES(?,?,?,?)";
                        try (PreparedStatement as = con.prepareStatement(sqlInsert)) {
                            as.setString(1, username);
                            as.setString(2, request.getParameter("jawapan1"));
                            as.setString(3, request.getParameter("jawapan2"));
                            as.setString(4, request.getParameter("jawapan3"));

                            as.executeUpdate();
                        }
                        con.close();

                    } catch (SQLException ex) {

                    }

                    request.setAttribute("successMessage", "Successfully Registered");
                    request.getRequestDispatcher("/FormativeQuestion4.jsp").forward(request, response);
                }
                break;
            case "E":
                try (PrintWriter out = response.getWriter()) {
                    /* TODO output your page here. You may use following sample code. */
                    try {

                        String sqlInsert = "INSERT INTO formativefive(username, ans1, ans2, ans3) VALUES(?,?,?,?)";
                        try (PreparedStatement as = con.prepareStatement(sqlInsert)) {
                            as.setString(1, username);
                            as.setString(2, request.getParameter("jawapan1"));
                            as.setString(3, request.getParameter("jawapan2"));
                            as.setString(4, request.getParameter("jawapan3"));

                            as.executeUpdate();
                        }
                        con.close();

                    } catch (SQLException ex) {

                    }

                    request.setAttribute("successMessage", "Successfully Registered");
                    request.getRequestDispatcher("/FormativeQuestion5.jsp").forward(request, response);
                }
                break;
            case "F":
                try (PrintWriter out = response.getWriter()) {
                    /* TODO output your page here. You may use following sample code. */
                    try {

                        String sqlInsert = "INSERT INTO formativesix(username, ans1, ans2, ans3) VALUES(?,?,?,?)";
                        try (PreparedStatement as = con.prepareStatement(sqlInsert)) {
                            as.setString(1, username);
                            as.setString(2, request.getParameter("jawapan1"));
                            as.setString(3, request.getParameter("jawapan2"));
                            as.setString(4, request.getParameter("jawapan3"));

                            as.executeUpdate();
                        }
                        con.close();

                    } catch (SQLException ex) {

                    }

                    request.setAttribute("successMessage", "Successfully Registered");
                    request.getRequestDispatcher("/FormativeQuestion6.jsp").forward(request, response);
                }
                break;
            case "G":
                try (PrintWriter out = response.getWriter()) {
                    
                    try ( /* TODO output your page here. You may use following sample code. */
                        Statement stmt = con.createStatement()) {
                        String sqlFind = "SELECT * FROM formativeseven WHERE username='" + username + "'";
                        ResultSet rs = stmt.executeQuery(sqlFind);

                        out.println("<h1>" + rs.next() + "</h1>");
                        
                        if(rs.next()){
                            String j1 = request.getParameter("jawapan1");
                            String j2 = request.getParameter("jawapan2");
                            String j3 = request.getParameter("jawapan3");
                            try {

                                String sqlInsert = "UPDATE formativeseven SET ans1=?, ans2= ?, ans3 = ? WHERE username = " + username;
                                PreparedStatement as = con.prepareStatement(sqlInsert);
                                    as.setString(1, j1);
                                    as.setString(2, j2);
                                    as.setString(3, j3);

                                    as.executeUpdate(); 

                                con.close();

                            } catch (SQLException ex) {
                                request.setAttribute("error", ex);
                                out.println(ex);
                            }

                            request.setAttribute("successMessage", "Successfully Registered");
                            request.getRequestDispatcher("/FormativeQuestion7.jsp").forward(request, response);
                            
                        }else {
                            
                            try {

                                String sqlInsert = "INSERT INTO formativeseven(username, ans1, ans2, ans3) VALUES(?,?,?,?)";
                                try (PreparedStatement as = con.prepareStatement(sqlInsert)) {
                                    as.setString(1, username);
                                    as.setString(2, request.getParameter("jawapan1"));
                                    as.setString(3, request.getParameter("jawapan2"));
                                    as.setString(4, request.getParameter("jawapan3"));

                                    as.executeUpdate();
                                }
                                con.close();

                            } catch (SQLException ex) {

                            }

                            request.setAttribute("successMessage", "Successfully Registered");
                            request.getRequestDispatcher("/FormativeQuestion7.jsp").forward(request, response);
                            
                        }
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
