/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

/**
 *
 * @author Amir Imran
 */
@WebServlet(name = "userRegisterServlet", urlPatterns = {"/userRegisterServlet"})
public class userRegisterServlet extends HttpServlet {

    private JDBCUtility jdbcUtility;
    private Connection con;

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
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //HttpSession session = request.getSession();
        //GET data form 
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String personal = "Hello "+username+", We're so glad you decided to try out CodingSchool. If you've want to learn something new, we bet you'll find our website a fresh, calm and orderly alternative. Learning doesn't have to be hard.";

        try {

            String sqlInsert = "INSERT INTO user( email, username, password) VALUES(?,?,?)";
            String sqlInsert2 = "INSERT INTO userprofile(username, personal) VALUES(?,?)";
            PreparedStatement as = con.prepareStatement(sqlInsert);
            PreparedStatement as2 = con.prepareStatement(sqlInsert2);
            
            as.setString(1, email);
            as.setString(2, username);
            as.setString(3, password);
            
            as2.setString(1, username);
            as2.setString(2, personal);

            as.executeUpdate();
            as2.executeUpdate();
  
        } catch (SQLException ex) {

        }
        request.setAttribute("successMessage", "Successfully Registered");
        request.getRequestDispatcher("/loginpage.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
