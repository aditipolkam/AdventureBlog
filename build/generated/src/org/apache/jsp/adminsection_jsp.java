package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminsection_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Section</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"nav.css\">  \n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"adminsection.css\">\n");
      out.write("    </head>\n");
      out.write("    <body bgColor='white'>\n");
      out.write("    <div class=\"navbar\">\n");
      out.write("\t<center>\n");
      out.write("\t\t<br>\n");
      out.write("\t\t<font size=\"20\">\n");
      out.write("\t\t\t<span style=\"color:red;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px red;\">Destination</span>\n");
      out.write("\t\t\t<span style=\"color:lightblue;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px lightblue;\">Seekers.</span>\n");
      out.write("\t\t</font>\n");
      out.write("\t</center>\n");
      out.write("        <div class=\"topnav\">\n");
      out.write("\t<a class=\"active\"  href=\"adminsection.jsp\">Home</a>\n");
      out.write("\t<a href=\"AdminServlet\">Upcoming tours</a>\n");
      out.write("\t<a href=\"listbookedtours.jsp\">Booked tours</a>\n");
      out.write("        <a href=\"listusers.jsp\">List of Users</a>\n");
      out.write("        <a href=\"addtours.jsp\">Add new tours</a>\n");
      out.write("\t</div>\n");
      out.write("    </div>\n");
      out.write("        <br><br><br><br><br><br><br><br><br>\n");
      out.write("\n");
      out.write("        <center>\n");
      out.write("            <table border='1' cellpadding='5' cellspacing='0' width='400'>\n");
      out.write("                <tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>\n");
      out.write("                    <td><h3>Destination Seekers: Admin Section</h3></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </center>\n");
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
