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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aditi Polkam
 */

public class AddTourServlet extends HttpServlet {
    
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
        //out.println("hello");
       
        List<String> errorMsgs=new ArrayList<String>();
        request.setAttribute("errorMsgs", errorMsgs);    
                
        try{
            String tourId = request.getParameter("tourid").trim();
            String departurePlace = request.getParameter("deptplace").trim();
            String destination = request.getParameter("destination").trim();
            String duration = request.getParameter("duration").trim();
            String departureDate = request.getParameter("deptdate").trim();
            String amount = request.getParameter("amount").trim();
            
            Tour tour = new Tour(tourId,destination,duration,departurePlace,departureDate,amount);
            request.setAttribute("tour",tour);
            
           
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(connectionURL,dbId,dbPass);
                ptmt = con.prepareStatement("select *from tours where tour_id = ?");
                ptmt.setString(1,tourId);
                rs = ptmt.executeQuery();
                if(rs.next()){
                    errorMsgs.add("Tour Id already exists.");
                }
            } 
            catch (ClassNotFoundException ex) {
                Logger.getLogger(AddTourServlet.class.getName()).log(Level.SEVERE, null, ex);
            } 
            catch (SQLException ex) {
                Logger.getLogger(AddTourServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        
            if(!errorMsgs.isEmpty())  {
                RequestDispatcher view = request.getRequestDispatcher("addtours.jsp");
                view.forward(request, response);
            }
                  
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(connectionURL,dbId,dbPass);
                ptmt = con.prepareStatement("insert into tours values(?,?,?,?,?,?)");
                ptmt.setString(1,tourId);
                ptmt.setString(2,destination);
                ptmt.setString(3,duration);
                ptmt.setString(4,departurePlace);
                ptmt.setString(5,departureDate);    
                ptmt.setString(6,amount);
                int c = ptmt.executeUpdate();
                if(c == 1){
                    request.setAttribute("aStatus","Succesfully Added");
                    RequestDispatcher rd = request.getRequestDispatcher("addtours.jsp");
                    rd.forward(request,response);

                }               
            } 
            catch (ClassNotFoundException ex) {
               out.println(ex);
            }
            catch(SQLException e){
                out.println(e);
            }              
        }
        catch(Exception e){
            
        }     
    }
}
