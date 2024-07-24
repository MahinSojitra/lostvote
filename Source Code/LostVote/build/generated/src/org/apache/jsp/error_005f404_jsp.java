package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class error_005f404_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    Throwable exception = org.apache.jasper.runtime.JspRuntimeLibrary.getThrowable(request);
    if (exception != null) {
      response.setStatus((Integer)request.getAttribute("javax.servlet.error.status_code"));
    }
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <title>404 - Players Not Found !</title>\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\"\r\n");
      out.write("          content=\"width=device-width, initial-scale=1, maximum-scale=5\">\r\n");
      out.write("    <meta name=\"description\" content=\"This is meta description\">\r\n");
      out.write("    <meta name=\"author\" content=\"Themefisher\">\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"images/favicon.png\" type=\"image/x-icon\">\r\n");
      out.write("    <link rel=\"icon\" href=\"images/favicon.png\" type=\"image/x-icon\">\r\n");
      out.write("\r\n");
      out.write("    <!-- theme meta -->\r\n");
      out.write("    <meta name=\"theme-name\" content=\"LostVote\" />\r\n");
      out.write("\r\n");
      out.write("    <!-- # Google Fonts -->\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\r\n");
      out.write("    <link\r\n");
      out.write("        href=\"https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;700&display=swap\"\r\n");
      out.write("        rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- # CSS Plugins -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../plugins/font-awesome/fontawesome.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../plugins/font-awesome/solid.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"plugins/font-awesome/fontawesome.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"plugins/font-awesome/solid.css\">\r\n");
      out.write("\r\n");
      out.write("    <!-- # Main Style Sheet -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("    <!-- # error Style Sheet -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/error/error_404_style.css\">\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"site\">\r\n");
      out.write("            <div class=\"sketch\">\r\n");
      out.write("                <div class=\"bee-sketch red\"></div>\r\n");
      out.write("                <div class=\"bee-sketch blue\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <h1>\r\n");
      out.write("                <small class=\"error-font\">404</small>\r\n");
      out.write("                <small class=\"error-font\">Players Not Found</small>\r\n");
      out.write("                <a href=\"index\" class=\"btn btn-outline-primary\">\r\n");
      out.write("                    <span style=\"font-size: 14px;\" class=\"ms-2 fas fa-arrow-left\"></span> \r\n");
      out.write("                    &nbsp; Back to Home\r\n");
      out.write("                </a>\r\n");
      out.write("            </h1>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
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
