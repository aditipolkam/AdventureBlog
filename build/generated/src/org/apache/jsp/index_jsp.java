package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import blog.model.User;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">  \n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"nav.css\"> \n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("\t<div class=\"navbar\">\n");
      out.write("\t\t<center>\n");
      out.write("\t\t<br>\n");
      out.write("\t\t<font size=\"20\">\n");
      out.write("\t\t\t<span style=\"color:red;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px red;\">Destination</span>\n");
      out.write("\t\t\t<span style=\"color:lightblue;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px lightblue;\">Seekers.</span>\n");
      out.write("\t\t</font>\n");
      out.write("\t\t</center><br>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("    <div class=\"login-box\">\n");
      out.write("    <img src=\"images/av2.png\" class=\"avatar\">\n");
      out.write("        <h1>Login Here</h1>\n");

	User user = new User();
	if(request.getAttribute("errorMsgs") != null){
            java.util.List<String> errorMsgs = (java.util.List<String>)request.getAttribute("errorMsgs");
            for(String errorMsg: errorMsgs){	

      out.write("\n");
      out.write("                <li style=\"color:red; background: wheat\"> ");
      out.print( errorMsg);
      out.write("</li>\t\t\n");
          }		
            user = (User)request.getAttribute("user");	
	}

      out.write("\n");
      out.write("                <br>\n");
      out.write("            <form name=\"login\" action=\"ValidationServlet\" method=\"POST\">\n");
      out.write("                <p>Username:</p>\n");
      out.write("                <input type=\"text\" name=\"username\" placeholder=\"Enter Username\" value=\"");
      out.print(user.getUsername());
      out.write("\" required>\n");
      out.write("                <p>Password:</p>\n");
      out.write("                <input type=\"password\" name=\"password\" placeholder=\"Enter Password\" required>\n");
      out.write("                <input type=\"submit\" name=\"submit\" value=\"Login\">\n");
      out.write("                <a href=\"#\">Forgot Password</a>   <br><br>\n");
      out.write("                <a href=\"signup.jsp\">Not a member?Sign Up.</a>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
