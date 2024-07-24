package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class navigation_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!-- navigation -->\r\n");
      out.write("<header class=\"navigation bg-tertiary\">\r\n");
      out.write("    <nav class=\"navbar navbar-expand-xl navbar-light text-center py-3\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <a class=\"navbar-brand\" href=\"index\"> <img\r\n");
      out.write("                    class=\"img-fluid logo-size\" width=\"160\" src=\"images/logo.png\"\r\n");
      out.write("                    alt=\"Wallet\">\r\n");
      out.write("            </a>\r\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\"\r\n");
      out.write("                    data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("                    aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\"\r\n");
      out.write("                    aria-label=\"Toggle navigation\">\r\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("                <ul class=\"navbar-nav mx-auto mb-2 mb-lg-0\">\r\n");
      out.write("                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"index\">Home</a></li>\r\n");
      out.write("                    <li class=\"nav-item \"><a class=\"nav-link\" href=\"about\">About</a></li>\r\n");
      out.write("                    <li class=\"nav-item \"><a class=\"nav-link\" href=\"index#how-i-vote\">How I Vote ?</a></li>\r\n");
      out.write("                    <li class=\"nav-item \"><a class=\"nav-link\" href=\"contact\">Contact Us</a></li>\r\n");
      out.write("                    <li class=\"nav-item dropdown\">\r\n");
      out.write("                        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\"\r\n");
      out.write("                           role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">More</a>\r\n");
      out.write("\r\n");
      out.write("                        <ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                            <li><a class=\"dropdown-item \" href=\"index#developers-corner\">Developers</a></li>\r\n");
      out.write("                            <li><a class=\"dropdown-item \" href=\"faqs\">FAQ&#39;s</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                \r\n");
      out.write("                <!-- account btn -->\r\n");
      out.write("                <!--<a href=\"login\" class=\"btn btn-outline-primary\">Log In</a>-->\r\n");
      out.write("                \r\n");
      out.write("                <!-- Profile Nav -->\r\n");
      out.write("                <li class=\"nav-item dropdown pe-3\">\r\n");
      out.write("                        <!-- /Profile Image Icon -->\r\n");
      out.write("                        <a class=\"nav-link nav-profile d-flex align-items-center pe-0\" href=\"#\" data-bs-toggle=\"dropdown\">\r\n");
      out.write("                            <img src=\"assets/img/profile-img.jpg\" alt=\"Profile\" class=\"rounded-circle\">\r\n");
      out.write("                            <span class=\"d-none d-md-block dropdown-toggle ps-2\">K. Anderson</span>\r\n");
      out.write("                        </a><!-- /Profile Image Icon -->\r\n");
      out.write("                        \r\n");
      out.write("                        <!-- /Profile Dropdown Items -->\r\n");
      out.write("                        <ul class=\"dropdown-menu dropdown-menu-end dropdown-menu-arrow profile\">\r\n");
      out.write("                            <li class=\"dropdown-header\">\r\n");
      out.write("                                <h6>Kevin Anderson</h6>\r\n");
      out.write("                                <span>Web Designer</span>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <hr class=\"dropdown-divider\">\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a class=\"dropdown-item d-flex align-items-center\" href=\"users-profile.html\">\r\n");
      out.write("                                    <i class=\"bi bi-person\"></i>\r\n");
      out.write("                                    <span>My Profile</span>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <hr class=\"dropdown-divider\">\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a class=\"dropdown-item d-flex align-items-center\" href=\"users-profile.html\">\r\n");
      out.write("                                    <i class=\"bi bi-gear\"></i>\r\n");
      out.write("                                    <span>Account Settings</span>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <hr class=\"dropdown-divider\">\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a class=\"dropdown-item d-flex align-items-center\" href=\"pages-faq.html\">\r\n");
      out.write("                                    <i class=\"bi bi-question-circle\"></i>\r\n");
      out.write("                                    <span>Need Help?</span>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <hr class=\"dropdown-divider\">\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a class=\"dropdown-item d-flex align-items-center\" href=\"#\">\r\n");
      out.write("                                    <i class=\"bi bi-box-arrow-right\"></i>\r\n");
      out.write("                                    <span>Sign Out</span>\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                        </ul><!-- /Profile Dropdown Items -->\r\n");
      out.write("                    </li><!-- /Profile Nav -->\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("</header>\r\n");
      out.write("<!-- /navigation -->\r\n");
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
