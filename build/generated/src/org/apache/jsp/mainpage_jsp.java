package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mainpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t<title>Adventure Blog</title>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"nav.css\">  \r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"mainpage.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"navbar\">\r\n");
      out.write("\t\t<center>\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\t\t<font size=\"20\">\r\n");
      out.write("\t\t\t<span style=\"color:red;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px red;\">Destination</span>\r\n");
      out.write("\t\t\t<span style=\"color:lightblue;size:15;font-family:Segoe Script;text-shadow: 3px 3px 5px lightblue;\">Seekers.</span>\r\n");
      out.write("\t\t</font>\r\n");
      out.write("\t\t</center>\r\n");
      out.write("\t<div class=\"topnav\">\r\n");
      out.write("\t<a class=\"active\"  href=\"mainpage.jsp\">Home</a>\r\n");
      out.write("\t<a href=\"camps.jsp\">Predestined Camps</a>\r\n");
      out.write("\t<a href=\"gallery.jsp\">Gallery</a>\r\n");
      out.write("\t<a href=\"crewD.jsp\">Crew</a>\r\n");
      out.write("\t<a href=\"bookc.jsp\">Booking&Cancellation</a>\r\n");
      out.write("\t<a href=\"feedback.jsp\">FeedBack</a>\r\n");
      out.write("\t<a  href=\"aboutus.jsp\">About</a>\r\n");
      out.write("\t<a href=\"profile.jsp\">My Profile</a>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"main\">\r\n");
      out.write("\t<br><br><br><br><br><br>\r\n");
      out.write("\t<div class=\"bg-image\"></div>\r\n");
      out.write("\t<div class=\"slideshow-container\">\r\n");
      out.write("\t<br><br><br>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"mySlides fade\">\r\n");
      out.write(" \t <div class=\"numbertext\">1 / 4</div>\r\n");
      out.write(" \t <img src=\"images/dudhsagar.jpg\" style=\"width:100%\">\r\n");
      out.write(" \t <div class=\"text\">Dudhsagar Waterfall</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"mySlides fade\">\r\n");
      out.write("\t  <div class=\"numbertext\">2 / 4</div>\r\n");
      out.write(" \t <img src=\"images/tadoba1.jpeg\" style=\"width:100%\">\r\n");
      out.write(" \t <div class=\"text\">Tadoba National Park</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"mySlides fade\">\r\n");
      out.write("\t  <div class=\"numbertext\">3 / 4</div>\r\n");
      out.write("  \t<img src=\"images/scuba.jpg\" style=\"width:100%\">\r\n");
      out.write("\t  <div class=\"text\">Scuba Diving at Maldives. </div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"mySlides fade\">\r\n");
      out.write(" \t <div class=\"numbertext\">4 / 4</div>\r\n");
      out.write(" \t <img src=\"images/forest2.jpg\" style=\"width:100%\">\r\n");
      out.write(" \t <div class=\"text\">Forests in India</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("<br>\r\n");
      out.write("\r\n");
      out.write("\t<div style=\"text-align:center\">\r\n");
      out.write("\t  <span class=\"dot\"></span> \r\n");
      out.write(" \t <span class=\"dot\"></span> \r\n");
      out.write(" \t <span class=\"dot\"></span> \r\n");
      out.write("\t<span class=\"dot\"></span> \r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\tvar slideIndex = 0;\r\n");
      out.write("\t\tshowSlides();\r\n");
      out.write("\r\n");
      out.write("\t\tfunction showSlides() \r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t  var i;\r\n");
      out.write("\t\t  var slides = document.getElementsByClassName(\"mySlides\");\r\n");
      out.write("\t\t  var dots = document.getElementsByClassName(\"dot\");\r\n");
      out.write("\t\t  for (i = 0; i < slides.length; i++)\r\n");
      out.write("\t\t {\r\n");
      out.write("  \t\t\t  slides[i].style.display = \"none\";  \r\n");
      out.write("\t\t  }\r\n");
      out.write("\t\t  slideIndex++;\r\n");
      out.write("\t\t  if (slideIndex > slides.length) {slideIndex = 1}    \r\n");
      out.write("\t\t  for (i = 0; i < dots.length; i++) \r\n");
      out.write("\t\t  {\r\n");
      out.write("   \t\t\t dots[i].className = dots[i].className.replace(\" active\", \"\");\r\n");
      out.write("\t\t  }\r\n");
      out.write("\t\t  slides[slideIndex-1].style.display = \"block\";  \r\n");
      out.write(" \t\t dots[slideIndex-1].className += \" active\";\r\n");
      out.write("\t\t  setTimeout(showSlides, 3000); // Change image every 3 seconds\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<h2 align=\"center\"><u><span style=\"color:white\">About holidays</span></u></h2>\r\n");
      out.write("\t<font size=\"4\">\r\n");
      out.write("\t\t\t\t<span style=\"color:white;font-family:Comic Sans MS\">\r\n");
      out.write("\t<p>\r\n");
      out.write("\t\tDestination Seekers is a brand synonymous with the best in adventure, wildlife and leisure camping for children. \r\n");
      out.write("\t\tFun and Learn is the underlying motto of all Destination Seekers camps. \r\n");
      out.write("\t\tThe camps are so well designed and conducted that nervous first time campers get invariably converted into lifetime camping enthusiasts. \r\n");
      out.write("\t\tTheir parents observe the safety precautions taken by us, the care that we take of their children and the professionalism in the overall conduct of the camps, and have no apprehensions about entrusting their children to us year after year.\r\n");
      out.write("\t\tCamping bestows many benefits to the participants. The campers are physically and mentally active throughout the duration.\r\n");
      out.write("\t\tSocially, they are constantly interacting with the other children they have met for the first time  playing as a team, sharing the lodging facilities, sitting down together for their meals, showing off their varied talents during the campfire.\r\n");
      out.write("\t\tAll this leads to a feeling of self-worth, self-confidence and independence that translates into maturity.\r\n");
      out.write(" \t\tAnd all this while they are having a great time  quite different from the type of fun they have at home or at the school.\r\n");
      out.write("\t\tDestination Seekers has a large platter of camps designed for various interests and various age groups.\r\n");
      out.write("\t</p></span><br><br>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
