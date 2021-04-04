/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blog;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Aditi Polkam
 */
public class AddReviewServlet extends HttpServlet {

    String connectionURL = "jdbc:mysql://localhost:3306/adventureblog";
    String dbId = "root";
    String dbPass = "aditi07";
    Connection con = null;
    PreparedStatement ptmt = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<String> errorMsgs=new ArrayList<String>();
        request.setAttribute("errorMsgs", errorMsgs); 
        PrintWriter out = response.getWriter();
        
        try{           
         
            HttpSession session = request.getSession();
            Object uname = session.getAttribute("username");
            String username = String.valueOf(uname);
            String cname = request.getParameter("cname");
            String reviewtext = request.getParameter("rev");
            
           // out.println(username);
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(connectionURL,dbId,dbPass);
                ptmt = con.prepareStatement("insert into reviews values(?,?,?)");
                ptmt.setString(1,username);
                ptmt.setString(2,cname);
                ptmt.setString(3,reviewtext);
                int row1 = ptmt.executeUpdate();
                if(row1 == 1)
                {	
                    response.sendRedirect("feedback.jsp");
                }
            } 
            catch (ClassNotFoundException ex) {
                Logger.getLogger(AddReviewServlet.class.getName()).log(Level.SEVERE, null, ex);
            } 
            catch (SQLException ex) {
                Logger.getLogger(AddReviewServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        catch(Exception e){}       
    }

}
