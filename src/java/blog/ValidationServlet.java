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
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aditi Polkam
 */
public class ValidationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String connectionUrl = "jdbc:mysql://127.0.0.1:3306/adventureblog";
        String dbId = "root";
        String dbPass = "aditi07";
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        if(username.equals("admin") && password.equals("admin")) {
            //session.setAttribute("username",username);
            RequestDispatcher view = request.getRequestDispatcher("adminsection.jsp");
            view.forward(request, response);
            return;
        }
        else{
            List<String> errorMsgs=new ArrayList<String>();
            Connection con = null;  
            PreparedStatement stmt = null;
            ResultSet rs = null;
            //send the ErrorPage view.
            request.setAttribute("errorMsgs", errorMsgs);
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(connectionUrl,dbId,dbPass);
                stmt = con.prepareStatement("select * from users where username = ? and password = ?");
                stmt.setString(1, username);
                stmt.setString(2, password);
                rs = stmt.executeQuery();
                String id = null;

                if(rs.next()){
                   id= rs.getString(1);
                }
                else{
                    errorMsgs.add("Invalid username or password");
                }
                
                User user = new User();
                user.setUsername(username);
                request.setAttribute("user",user);
                
                //Send the ErrorPage view if there were errors
                if(!errorMsgs.isEmpty())  {
                    RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                    view.forward(request, response);
                    return;
                }      

                //Send the success view
                 RequestDispatcher view = request.getRequestDispatcher("mainpage.jsp");
                 view.forward(request, response);
                 return;
            }

            catch (SQLException e) {
                throw new ServletException("Servlet Could not display records.", e);
            }
            catch (ClassNotFoundException e) {
                throw new ServletException("JDBC Driver not found.", e);
            } 
            finally {
                try {
                    if(rs != null) {
                        rs.close();
                        rs = null;
                    }
                    if(stmt != null) {
                        stmt.close();
                        stmt = null;
                    }
                    if(con != null) {
                        con.close();
                        con = null;
                    }
                } 
                catch (SQLException e) {}
            }
        } 
    }
}
