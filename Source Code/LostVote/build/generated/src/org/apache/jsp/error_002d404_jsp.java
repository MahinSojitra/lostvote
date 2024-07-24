package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class error_002d404_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\"\r\n");
      out.write("              content=\"width=device-width, initial-scale=1, maximum-scale=5\">\r\n");
      out.write("        <meta name=\"description\" content=\"This is meta description\">\r\n");
      out.write("        <meta name=\"author\" content=\"Themefisher\">\r\n");
      out.write("\r\n");
      out.write("        <!-- theme meta -->\r\n");
      out.write("        <meta name=\"theme-name\" content=\"LostVote\" />\r\n");
      out.write("\r\n");
      out.write("        <!-- # Google Fonts -->\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\r\n");
      out.write("        <link\r\n");
      out.write("            href=\"https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;700&display=swap\"\r\n");
      out.write("            rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!--<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\" />-->\r\n");
      out.write("        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            // for load appropriate css and icon files \r\n");
      out.write("            $(window).ready(function () {\r\n");
      out.write("                var URL = window.location.pathname.split('/');\r\n");
      out.write("                var currentFolder = URL[URL.length - 2];\r\n");
      out.write("\r\n");
      out.write("                if (currentFolder === \"admin\" || currentFolder === \"user\") {\r\n");
      out.write("\r\n");
      out.write("                    /* # Icon png file */\r\n");
      out.write("                    $(\"head\").prepend(\"<link>\");\r\n");
      out.write("                    var iconFile = $(\"head\").children(\":first\");\r\n");
      out.write("                    iconFile.attr({\r\n");
      out.write("                        rel: \"icon\",\r\n");
      out.write("                        type: \"image/x-icon\",\r\n");
      out.write("                        href: \"../images/favicon.png\"\r\n");
      out.write("                    });\r\n");
      out.write("\r\n");
      out.write("                    /* # Main Style Sheet */\r\n");
      out.write("                    $(\"head\").append(\"<link>\");\r\n");
      out.write("                    var mainCss = $(\"head\").children(\":last\");\r\n");
      out.write("                    mainCss.attr({\r\n");
      out.write("                        rel: \"stylesheet\",\r\n");
      out.write("                        type: \"text/css\",\r\n");
      out.write("                        href: \"../css/style.css\"\r\n");
      out.write("                    });\r\n");
      out.write("\r\n");
      out.write("                    /* # Error Style Sheet */\r\n");
      out.write("                    $(\"head\").append(\"<link>\");\r\n");
      out.write("                    var errorCss = $(\"head\").children(\":last\");\r\n");
      out.write("                    errorCss.attr({\r\n");
      out.write("                        rel: \"stylesheet\",\r\n");
      out.write("                        type: \"text/css\",\r\n");
      out.write("                        href: \"../css/error/error_404_style.css\"\r\n");
      out.write("                    });\r\n");
      out.write("\r\n");
      out.write("                    // code for setting btnBackToHome button href\r\n");
      out.write("                    if (currentFolder === \"admin\") {\r\n");
      out.write("\r\n");
      out.write("                        // for admin \r\n");
      out.write("                        $(\"a[href]\").attr(\"href\", \"../index\");\r\n");
      out.write("                    } else {\r\n");
      out.write("\r\n");
      out.write("                        // for user \r\n");
      out.write("                        $(\"a[href]\").attr(\"href\", \"../index\");\r\n");
      out.write("                    }\r\n");
      out.write("\r\n");
      out.write("                } else {\r\n");
      out.write("\r\n");
      out.write("                    /* # Icon png file */\r\n");
      out.write("                    $(\"head\").prepend(\"<link>\");\r\n");
      out.write("                    var iconFile = $(\"head\").children(\":first\");\r\n");
      out.write("                    iconFile.attr({\r\n");
      out.write("                        rel: \"icon\",\r\n");
      out.write("                        type: \"image/x-icon\",\r\n");
      out.write("                        href: \"images/favicon.png\"\r\n");
      out.write("                    });\r\n");
      out.write("\r\n");
      out.write("                    /* # Main Style Sheet */\r\n");
      out.write("                    $(\"head\").append(\"<link>\");\r\n");
      out.write("                    var mainCss = $(\"head\").children(\":last\");\r\n");
      out.write("                    mainCss.attr({\r\n");
      out.write("                        rel: \"stylesheet\",\r\n");
      out.write("                        type: \"text/css\",\r\n");
      out.write("                        href: \"css/style.css\"\r\n");
      out.write("                    });\r\n");
      out.write("\r\n");
      out.write("                    /* # Error Style Sheet */\r\n");
      out.write("                    $(\"head\").append(\"<link>\");\r\n");
      out.write("                    var errorCss = $(\"head\").children(\":last\");\r\n");
      out.write("                    errorCss.attr({\r\n");
      out.write("                        rel: \"stylesheet\",\r\n");
      out.write("                        type: \"text/css\",\r\n");
      out.write("                        href: \"css/error/error_404_style.css\"\r\n");
      out.write("                    });\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("        </script>    \r\n");
      out.write("    </head>\r\n");
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
      out.write("                <a href=\"\" class=\"btn btn-outline-primary\" id=\"btnBackToHome\">\r\n");
      out.write("                    <i class=\"fas fa-arrow-left\"></i> &nbsp; Back to Home\r\n");
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
