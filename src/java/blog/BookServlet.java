/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blog;

import blog.model.Tour;
import blog.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Aditi Polkam
 */
public class BookServlet extends HttpServlet {

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
       
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        
        Tour tour = new Tour();
        tour = (Tour)session.getAttribute("tour");
        
        User user = new User();
        user = (User)session.getAttribute("user");
        
        Object sts = session.getAttribute("seats");
        Object amt = session.getAttribute("amount");
        
        int seats = Integer.parseInt(String.valueOf(sts));
        String amount = String.valueOf(amt);
        
        //out.print(amount);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(connectionURL,dbId,dbPass);
           
           ptmt = con.prepareStatement("insert into toursbooked(tour_id,destination,username,seats,totalamount) "
                   + "values (?,?,?,?,?)");
           
           ptmt.setString(1,tour.getTourId());
           ptmt.setString(2,tour.getDestination());
           ptmt.setString(3,user.getUsername());
           ptmt.setInt(4,seats);
           ptmt.setString(5,amount);
                   
           ptmt.executeUpdate();
           
           response.sendRedirect("successbooking.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BookServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(BookServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
           
        
    }

}
