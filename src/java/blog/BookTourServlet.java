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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
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
public class BookTourServlet extends HttpServlet {
   
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
        
        Tour tour = new Tour();
        User user = new User();
        List<String> errorMsgs=new ArrayList<String>();
        PrintWriter out = response.getWriter();
        try{            
          
           HttpSession session = request.getSession();
           Object uname = session.getAttribute("username");
           String username = String.valueOf(uname);
           
           if(username == null || username.equals("")){
               errorMsgs.add("Please login and try again.");
           }
           
           if(request.getParameter("tourselection") == null || request.getParameter("tourselection").equals("")){
               errorMsgs.add("Please select atleast 1 tour to book.");
           }
           
           if(request.getParameter("seats").equals("") || request.getParameter("seats") == null){
               errorMsgs.add("Please enter number of seats.");
           }
           
           request.setAttribute("errorMsgs",errorMsgs);
           if(!errorMsgs.isEmpty()){
               RequestDispatcher rd  = request.getRequestDispatcher("booktours.jsp");
               rd.forward(request,response);
           }
           
           String id = request.getParameter("tourselection");
           String seats = request.getParameter("seats");
           
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection(connectionURL,dbId,dbPass);
           
           ptmt = con.prepareStatement("select *from tours where tour_id = ?");
           ptmt.setString(1,id);
           rs = ptmt.executeQuery();
           if(rs.next()){
               tour.setTourId(id);
               tour.setDestination(rs.getString("destination"));
               tour.setDuration(rs.getString("duration"));
               tour.setDeparturePlace(rs.getString("dep_place"));
               tour.setDepartureDate(rs.getString("dep_date"));
               tour.setAmount(rs.getString("amount"));
           }
           
           ptmt = con.prepareStatement("select *from users where username = ?");
           ptmt.setString(1,username);
           rs = ptmt.executeQuery();
           if(rs.next()){
               user.setUsername(username);
               user.setCname(rs.getString("cname"));
               user.setGender(rs.getString("gender"));
               user.setEmail(rs.getString("email"));
               user.setContact(rs.getString("contact"));
           }
           
           int amt = Integer.parseInt(tour.getAmount()) * Integer.parseInt(seats);
           
           session.setAttribute("amount",amt);
           session.setAttribute("user",user);
           session.setAttribute("tour",tour);
           session.setAttribute("seats",seats);
           RequestDispatcher rd = request.getRequestDispatcher("booking.jsp");
           rd.forward(request,response);
        }
        catch(Exception e){
            out.print(e);
        }
    }

}
