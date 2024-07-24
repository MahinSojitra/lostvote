package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class election_002dresults_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("        <title>LostVote - Election Results</title>\n");
      out.write("\n");
      out.write("        <meta content=\"\" name=\"description\">\n");
      out.write("        <meta content=\"\" name=\"keywords\">\n");
      out.write("\n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link href=\"assets/img/favicon.png\" rel=\"icon\">\n");
      out.write("        <link href=\"assets/img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("        <!-- Google Fonts -->\n");
      out.write("        <link href=\"https://fonts.gstatic.com\" rel=\"preconnect\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Vendor CSS Files -->\n");
      out.write("        <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/quill/quill.snow.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/quill/quill.bubble.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/remixicon/remixicon.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/simple-datatables/style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Template Main CSS File -->\n");
      out.write("        <link href=\"assets/css/style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- google font for ubuntu -->\n");
      out.write("        <style> @import url('https://fonts.googleapis.com/css2?family=Ubuntu&display=swap'); </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!-- ======= Header ======= -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "_header.jsp", out, false);
      out.write("\n");
      out.write("        <!-- ======= /Header ======= -->\n");
      out.write("\n");
      out.write("        <main id=\"main\" class=\"main\">\n");
      out.write("\n");
      out.write("            <!-- Select Election Form -->\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h5 class=\"card-title\">Choose Election | <span> Choose the election whose result you want to see.</span></h5>\n");
      out.write("                    <!-- Form -->\n");
      out.write("                    <form class=\"row g-3 needs-validation\" method=\"post\" novalidate>\n");
      out.write("                        <div class=\"col-md-4\"> <!-- spacing div --> </div>\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <label for=\"selectElection\" class=\"form-label\">Choose the Election</label>\n");
      out.write("                            <select class=\"form-select\" aria-label=\"Select election\" name=\"selectElection\" required>\n");
      out.write("                                <option value=\"Election 1\" selected>Election 1</option>\n");
      out.write("                                <option value=\"Election 2\">Election 2</option>\n");
      out.write("                                <option value=\"Election 3\">Election 3</option>\n");
      out.write("                                <option value=\"Election 4\">Election 4</option>\n");
      out.write("                                <option value=\"Election 5\">Election 5</option>\n");
      out.write("                                <option value=\"Election 6\">Election 6</option>\n");
      out.write("                                <option value=\"Election 7\">Election 7</option>\n");
      out.write("                            </select>\n");
      out.write("                            <div class=\"invalid-feedback\">\n");
      out.write("                                Please choose any election !\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-4\"> <!-- spacing div --> </div>\n");
      out.write("                        <div class=\"d-grid gap-2 d-md-flex justify-content-md-end\">\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-outline-success\">Show Result</button>\n");
      out.write("                        </div>\n");
      out.write("                    </form><!-- End Form -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div><!-- End Select Election Form -->\n");
      out.write("\n");
      out.write("            <!-- Manage Voters Table -->\n");
      out.write("            <div class=\"col-12\">\n");
      out.write("                <div class=\"card recent-sales overflow-auto\">\n");
      out.write("\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <h5 class=\"card-title\">LostVote |<span> Votes</span></h5>\n");
      out.write("\n");
      out.write("                        <table class=\"table table-striped table-hover caption-top datatable\">\n");
      out.write("                            <caption>You can see votes in below table.</caption> \n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"col\">#ID</th>\n");
      out.write("                                    <th scope=\"col\">Customer</th>\n");
      out.write("                                    <th scope=\"col\">Product</th>\n");
      out.write("                                    <th scope=\"col\">Price</th>\n");
      out.write("                                    <th scope=\"col\">Action</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\"><a href=\"#\">#2457</a></th>\n");
      out.write("                                    <td>Brandon Jacob</td>\n");
      out.write("                                    <td><a href=\"#\" class=\"text-primary\">At praesentium minu</a></td>\n");
      out.write("                                    <td>$64</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a href=\"#\" title=\"Edit\" data-toggle=\"tooltip\"><i class=\"bi bi-pen\"></i></a>\n");
      out.write("                                        <a href=\"#\" title=\"Delete\" data-toggle=\"tooltip\"><i class=\"bi bi-trash\"></i></a>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\"><a href=\"#\">#2147</a></th>\n");
      out.write("                                    <td>Bridie Kessler</td>\n");
      out.write("                                    <td><a href=\"#\" class=\"text-primary\">Blanditiis dolor omnis similique</a></td>\n");
      out.write("                                    <td>$47</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a href=\"#\" title=\"Edit\" data-toggle=\"tooltip\"><i class=\"bi bi-pen\"></i></a>\n");
      out.write("                                        <a href=\"#\" title=\"Delete\" data-toggle=\"tooltip\"><i class=\"bi bi-trash\"></i></a>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\"><a href=\"#\">#2049</a></th>\n");
      out.write("                                    <td>Ashleigh Langosh</td>\n");
      out.write("                                    <td><a href=\"#\" class=\"text-primary\">At recusandae consectetur</a></td>\n");
      out.write("                                    <td>$147</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a href=\"#\" title=\"Edit\" data-toggle=\"tooltip\"><i class=\"bi bi-pen\"></i></a>\n");
      out.write("                                        <a href=\"#\" title=\"Delete\" data-toggle=\"tooltip\"><i class=\"bi bi-trash\"></i></a>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\"><a href=\"#\">#2644</a></th>\n");
      out.write("                                    <td>Angus Grady</td>\n");
      out.write("                                    <td><a href=\"#\" class=\"text-primar\">Ut voluptatem id earum et</a></td>\n");
      out.write("                                    <td>$67</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a href=\"#\" title=\"Edit\" data-toggle=\"tooltip\"><i class=\"bi bi-pen\"></i></a>\n");
      out.write("                                        <a href=\"#\" title=\"Delete\" data-toggle=\"tooltip\"><i class=\"bi bi-trash\"></i></a>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\"><a href=\"#\">#2644</a></th>\n");
      out.write("                                    <td>Raheem Lehner</td>\n");
      out.write("                                    <td><a href=\"#\" class=\"text-primary\">Sunt similique distinctio</a></td>\n");
      out.write("                                    <td>$165</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a href=\"#\" title=\"Edit\" data-toggle=\"tooltip\"><i class=\"bi bi-pen\"></i></a>\n");
      out.write("                                        <a href=\"#\" title=\"Delete\" data-toggle=\"tooltip\"><i class=\"bi bi-trash\"></i></a>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\"><a href=\"#\">#2644</a></th>\n");
      out.write("                                    <td>Angus Grady</td>\n");
      out.write("                                    <td><a href=\"#\" class=\"text-primar\">Ut voluptatem id earum et</a></td>\n");
      out.write("                                    <td>$67</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a href=\"#\" title=\"Edit\" data-toggle=\"tooltip\"><i class=\"bi bi-pen\"></i></a>\n");
      out.write("                                        <a href=\"#\" title=\"Delete\" data-toggle=\"tooltip\"><i class=\"bi bi-trash\"></i></a>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\"><a href=\"#\">#2644</a></th>\n");
      out.write("                                    <td>Raheem Lehner</td>\n");
      out.write("                                    <td><a href=\"#\" class=\"text-primary\">Sunt similique distinctio</a></td>\n");
      out.write("                                    <td>$165</td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <a href=\"#\" title=\"Edit\" data-toggle=\"tooltip\"><i class=\"bi bi-pen\"></i></a>\n");
      out.write("                                        <a href=\"#\" title=\"Delete\" data-toggle=\"tooltip\"><i class=\"bi bi-trash\"></i></a>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div><!-- End Manage Voters Table -->\n");
      out.write("        </main>\n");
      out.write("\n");
      out.write("        <!-- ======= Footer ======= -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "_footer.jsp", out, false);
      out.write("\n");
      out.write("        <!-- ======= /Footer ======= -->\n");
      out.write("\n");
      out.write("        <a href=\"#\" class=\"back-to-top d-flex align-items-center justify-content-center\"><i class=\"bi bi-arrow-up-short\"></i></a>\n");
      out.write("\n");
      out.write("        <!-- Vendor JS Files -->\n");
      out.write("        <script src=\"assets/vendor/apexcharts/apexcharts.min.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/chart.js/chart.umd.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/echarts/echarts.min.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/quill/quill.min.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/simple-datatables/simple-datatables.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/tinymce/tinymce.min.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/php-email-form/validate.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Template Main JS File -->\n");
      out.write("        <script src=\"assets/js/main.js\"></script>\n");
      out.write("\n");
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
