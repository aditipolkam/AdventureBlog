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

/**
 *
 * @author Aditi Polkam
 */
public class DeleteTourServlet extends HttpServlet {

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
        try {
            List<String> errorMsgs=new ArrayList<String>();
            if(request.getParameter("tourselection") == null || request.getParameter("tourselection").equals("")){
                errorMsgs.add("Please select atleast 1 tour to book.");
            }
            request.setAttribute("errorMsgs",errorMsgs);
            if(!errorMsgs.isEmpty()){
                RequestDispatcher rd  = request.getRequestDispatcher("listtours.jsp");
                rd.forward(request,response);
            }
            
            String id = request.getParameter("tourselection");
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(connectionURL,dbId,dbPass);
            
            ptmt = con.prepareStatement("delete from tours where tour_id = ?");
            ptmt.setString(1,id);
            int r = ptmt.executeUpdate();
            if(r == 1){
                request.setAttribute("dStatus","Succesfully Deleted");
                RequestDispatcher rd = request.getRequestDispatcher("listtours.jsp");
                rd.forward(request,response);
            }
            
        } 
        catch (ClassNotFoundException ex) {
            Logger.getLogger(DeleteTourServlet.class.getName()).log(Level.SEVERE, null, ex);
        } 
        catch (SQLException ex) {
            Logger.getLogger(DeleteTourServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
