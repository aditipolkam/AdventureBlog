/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blog;

import blog.model.User;
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
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aditi Polkam
 */
public class AddUserServlet extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String connectionUrl = "jdbc:mysql://127.0.0.1:3306/adventureblog";
        String dbId = "root";
        String dbPass = "aditi07";
        List<String> errorMsgs=new ArrayList<String>();	 
        PrintWriter out = response.getWriter();
	Connection con = null;  
	PreparedStatement pstmt = null;
	Statement stmt =null;
        ResultSet rs = null;
		
	//send the ErrorPage view.
	request.setAttribute("errorMsgs", errorMsgs);
        try{
            String username = request.getParameter("username").trim();
            String password = request.getParameter("password").trim();
            String cpassword = request.getParameter("cpwd").trim();
            String cname = request.getParameter("cname").trim();
            String email = request.getParameter("email").trim();
            String contact = request.getParameter("contact").trim();
            
            String gender = "";
            if(request.getParameter("sex").equals("Male")){
                gender = "Male";
            }
            else if(request.getParameter("sex").equals("Female")){
                gender = "Female";
            }
            else if(request.getParameter("sex").equals("Other")){
                gender = "Other";
            }
            else if(request.getParameter("sex").equals("") || request.getParameter("sex") == null){
                errorMsgs.add("Please select your gender.");
            }
            
            //contact check          
            if(contact.length() != 10){
                errorMsgs.add("Contact number should be a 10 digit number");
            }
            /*String regex = "\\{10}";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(contact);
            if(!matcher.matches()){
                errorMsgs.add("Enter a valid contact number.");
            }*/
            
            
            //password check
            if(!password.equals(cpassword)){
                errorMsgs.add("Confirm password should match the Password field.");
            }
            
            //email format check
            
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(connectionUrl,dbId,dbPass);
                pstmt = con.prepareStatement("select * from users where username = ?");
                pstmt.setString(1, username);
                rs = pstmt.executeQuery();
                
                String id = null;
                if(rs.next()){
                    errorMsgs.add("Username already in use.Try another one.");
                }
                
                User user = new User(username,cname,gender,email,contact,password);
                request.setAttribute("user",user);
                
                //Send the ErrorPage view if there were errors
                if(!errorMsgs.isEmpty())  {
                    RequestDispatcher view = request.getRequestDispatcher("signup.jsp");
                    view.forward(request, response);
                }
                else{
                    pstmt = con.prepareStatement("insert into users values (?,?,?,?,?,?)");
                    pstmt.setString(1,username);
                    pstmt.setString(2,cname);
                    pstmt.setString(3,gender);
                    pstmt.setString(4,email);
                    pstmt.setString(5,contact);
                    pstmt.setString(6,password);
                    pstmt.executeUpdate();
                    
                    RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                    view.forward(request, response);
                }                             
            }
            catch (SQLException e) {
                throw new ServletException("Servlet Could not display records.", e);
            }
            catch (ClassNotFoundException e) {
                throw new ServletException("JDBC Driver not found.", e);
            }            
        }
        catch(Exception e){
            
        }
    }
}
