package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<title>Sign Up form</title>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"nav.css\"> \r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"signup.css\">  \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"navbar\">\r\n");
      out.write("\t<center>\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<font size=\"20\">\r\n");
      out.write("\t\t<span style=\"color:red;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px red;\">Destination</span>\r\n");
      out.write("\t\t<span style=\"color:lightblue;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px lightblue;\">Seekers.</span>\r\n");
      out.write("\t</font>\r\n");
      out.write("\t</center><br>\r\n");
      out.write("</div>\r\n");
      out.write("<br><br><br><br><br>\r\n");
      out.write("<form action=\"store.jsp\" onSubmit=\"return formValidation();\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("      <h1>Sign Up</h1>\r\n");
      out.write("      <p>Please fill in this form to create an account.</p>\r\n");
      out.write("      <hr>\r\n");
      out.write("      <label for=\"cname\"><b>Name</b></label>\r\n");
      out.write("      <input type=\"text\" placeholder=\"Enter your name\" name=\"cname\" required>\r\n");
      out.write("\r\n");
      out.write("      <label for=\"email\"><b>Email</b></label>\r\n");
      out.write("      <input type=\"text\" placeholder=\"Enter Email\" name=\"email\" required>\r\n");
      out.write("\r\n");
      out.write("\t<label for=\"contact\"><b>Contact</b></label>\r\n");
      out.write("      <input type=\"text\" placeholder=\"Enter your mobile number\" name=\"contact\" required>\r\n");
      out.write("\r\n");
      out.write("\t<label for=\"email\"><b>Sex</b></label><br>\r\n");
      out.write("\t<input type=\"radio\" name=\"sex\" value=\"Male\" />Male &emsp; &emsp; &emsp;\r\n");
      out.write("\t<input type=\"radio\" name=\"sex\" value=\"Female\" />Female  &emsp; &emsp; &emsp;\r\n");
      out.write("\t<input type=\"radio\" name=\"sex\" value=\"Other\" />Other<br> \r\n");
      out.write("\r\n");
      out.write("\t<label for=\"username\"><b>Username</b></label>\r\n");
      out.write("      <input type=\"text\" placeholder=\"Enter Username\" name=\"username\" required>\r\n");
      out.write("      \r\n");
      out.write("\t<label for=\"password\"><b>Password</b></label>\r\n");
      out.write("      <input type=\"password\" placeholder=\"Enter Password\" name=\"password\" required>\r\n");
      out.write("\r\n");
      out.write("      <label for=\"cpwd\"><b>Confirm Password</b></label>\r\n");
      out.write("      <input type=\"password\" placeholder=\"Repeat Password\" name=\"cpwd\" required>\r\n");
      out.write("\r\n");
      out.write("      <p>By creating an account you agree to our <a href=\"#\" style=\"color:dodgerblue\">Terms & Privacy</a>.</p>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"clearfix\">\r\n");
      out.write("        <button type=\"submit\" class=\"signupbtn\">Sign Up</button>\r\n");
      out.write("\t<button type=\"button\" class=\"cancelbtn\">Cancel</button>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
