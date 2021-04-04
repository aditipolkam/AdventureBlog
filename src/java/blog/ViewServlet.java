/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blog;

import java.io.IOException;
import java.io.PrintWriter;
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
public class ViewServlet extends HttpServlet {
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       List<String> errorMsgs=new ArrayList<String>();
        try{
            
            if(request.getParameter("tourselection") == null || request.getParameter("tourselection").equals("")){
               errorMsgs.add("Please select a tour to view details.");
           }
           
           request.setAttribute("errorMsgs",errorMsgs);
           
           if(!errorMsgs.isEmpty()){
               RequestDispatcher rd  = request.getRequestDispatcher("camps.jsp");
               rd.forward(request,response);
           }
           
            String view = request.getParameter("tourselection");
            PrintWriter out = response.getWriter();
            RequestDispatcher rd = null;
            switch(view)
            {
                case "LD234":
                    rd = request.getRequestDispatcher("Tours/ladakh.html");
                    break;
                    
                case "GO897":
                    rd = request.getRequestDispatcher("Tours/goa.html");
                    break;
                    
                 case "DG183":
                    rd = request.getRequestDispatcher("Tours/darjeelinggangtok.html");
                    break;
                    
                case "HG972":
                    rd = request.getRequestDispatcher("Tours/hgad.html");
                    break;
                 
                 case "CI352":
                    rd = request.getRequestDispatcher("Tours/italy.html");
                    break;
                
                 case "MA659":
                    rd = request.getRequestDispatcher("Tours/maldives.html");
                    break;    
                
                 case "Pl348":
                    rd = request.getRequestDispatcher("Tours/pawna.html");
                    break;
                 
                 default:
                    rd = request.getRequestDispatcher("Tours/default.html");
                    break;
            }
            
                rd.forward(request, response);
         
        }
        catch(Exception e){
            
        }
    }


}
