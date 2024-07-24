package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_query_var_dataSource;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_query_var_dataSource = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_sql_query_var_dataSource.release();
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("        <title>LostVote - Admin Dashboard</title>\n");
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
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            const toastTrigger = document.getElementById('liveToastBtn')\n");
      out.write("            const toastLiveExample = document.getElementById('liveToast')\n");
      out.write("            if (toastTrigger) {\n");
      out.write("                toastTrigger.addEventListener('click', () => {\n");
      out.write("                    const toast = new bootstrap.Toast(toastLiveExample)\n");
      out.write("\n");
      out.write("                    toast.show()\n");
      out.write("                })\n");
      out.write("            }\n");
      out.write("        </script>\n");
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
      out.write("            <div class=\"pagetitle\">\n");
      out.write("                <h1>Dashboard</h1>\n");
      out.write("                <nav>\n");
      out.write("                    <ol class=\"breadcrumb\">\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"index\">Home</a></li>\n");
      out.write("                    </ol>\n");
      out.write("                </nav>\n");
      out.write("            </div><!-- End Page Title -->\n");
      out.write("\n");
      out.write("            <section class=\"section dashboard\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                    <!-- Left side columns -->\n");
      out.write("                    <div class=\"col-lg-7\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("\n");
      out.write("                            <!-- Election Result Graph -->\n");
      out.write("                            <div class=\"card\">\n");
      out.write("\n");
      out.write("                                <div class=\"card-body pb-0\">\n");
      out.write("                                    <h5 class=\"card-title\">Elections | <span>Refresh the page to see the change.</span></h5>\n");
      out.write("\n");
      out.write("                                    <div id=\"trafficChart\" style=\"min-height: 400px;\" class=\"echart\"></div>\n");
      out.write("\n");
      out.write("                                    <script>\n");
      out.write("                                        document.addEventListener(\"DOMContentLoaded\", () => {\n");
      out.write("                                            echarts.init(document.querySelector(\"#trafficChart\")).setOption({\n");
      out.write("                                                tooltip: {\n");
      out.write("                                                    trigger: 'item'\n");
      out.write("                                                },\n");
      out.write("                                                legend: {\n");
      out.write("                                                    top: '5%',\n");
      out.write("                                                    left: 'center'\n");
      out.write("                                                },\n");
      out.write("                                                series: [{\n");
      out.write("                                                        name: 'Access From',\n");
      out.write("                                                        type: 'pie',\n");
      out.write("                                                        radius: ['40%', '70%'],\n");
      out.write("                                                        avoidLabelOverlap: false,\n");
      out.write("                                                        label: {\n");
      out.write("                                                            show: false,\n");
      out.write("                                                            position: 'center'\n");
      out.write("                                                        },\n");
      out.write("                                                        emphasis: {\n");
      out.write("                                                            label: {\n");
      out.write("                                                                show: true,\n");
      out.write("                                                                fontSize: '18',\n");
      out.write("                                                                fontWeight: 'bold'\n");
      out.write("                                                            }\n");
      out.write("                                                        },\n");
      out.write("                                                        labelLine: {\n");
      out.write("                                                            show: false\n");
      out.write("                                                        },\n");
      out.write("                                                        data: [{\n");
      out.write("                                                                value: 1048,\n");
      out.write("                                                                name: 'Search Engine'\n");
      out.write("                                                            },\n");
      out.write("                                                            {\n");
      out.write("                                                                value: 735,\n");
      out.write("                                                                name: 'Direct'\n");
      out.write("                                                            },\n");
      out.write("                                                            {\n");
      out.write("                                                                value: 580,\n");
      out.write("                                                                name: 'Email'\n");
      out.write("                                                            },\n");
      out.write("                                                            {\n");
      out.write("                                                                value: 484,\n");
      out.write("                                                                name: 'Union Ads'\n");
      out.write("                                                            },\n");
      out.write("                                                            {\n");
      out.write("                                                                value: 300,\n");
      out.write("                                                                name: 'Video Ads'\n");
      out.write("                                                            }\n");
      out.write("                                                        ]\n");
      out.write("                                                    }]\n");
      out.write("                                            });\n");
      out.write("                                        });\n");
      out.write("                                    </script>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div><!-- End Election Result Graph -->\n");
      out.write("                        </div>\n");
      out.write("                    </div><!-- End Left side columns -->\n");
      out.write("\n");
      out.write("                    ");
      if (_jspx_meth_sql_query_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                    <!-- Right side columns -->\n");
      out.write("                    <div class=\"col-lg-5\">\n");
      out.write("                        <!-- Recent Elections -->\n");
      out.write("                        <div class=\"card\">\n");
      out.write("\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <h5 class=\"card-title\">Elections</h5>\n");
      out.write("\n");
      out.write("                                <div class=\"activity\">\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div><!-- End Recent Elections -->\n");
      out.write("                    </div><!-- End Right side columns -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </section>\n");
      out.write("        </main><!-- End #main -->\n");
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

  private boolean _jspx_meth_sql_query_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_0 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_0.setParent(null);
    _jspx_th_sql_query_0.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${applicationScope.connection}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_query_0.setVar("Elections");
    int[] _jspx_push_body_count_sql_query_0 = new int[] { 0 };
    try {
      int _jspx_eval_sql_query_0 = _jspx_th_sql_query_0.doStartTag();
      if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.pushBody();
          _jspx_push_body_count_sql_query_0[0]++;
          _jspx_th_sql_query_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
          _jspx_th_sql_query_0.doInitBody();
        }
        do {
          out.write("\n");
          out.write("                        SELECT * FROM elections ORDER BY start_date ASC;\n");
          out.write("                    ");
          int evalDoAfterBody = _jspx_th_sql_query_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
          out = _jspx_page_context.popBody();
          _jspx_push_body_count_sql_query_0[0]--;
      }
      if (_jspx_th_sql_query_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_query_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_query_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_query_0.doFinally();
      _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Elections.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("Election");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("    \n");
          out.write("                                        <div class=\"activity-item d-flex\">\n");
          out.write("                                            <div class=\"activite-label\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Election.start_date}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" &nbsp; </div>\n");
          out.write("                                            <i class='bi bi-circle-fill activity-badge text-warning align-self-start'></i>\n");
          out.write("                                            <div class=\"activity-content\">\n");
          out.write("                                                <b>Name : </b> ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Election.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" <br>\n");
          out.write("                                                <b>Description : </b> ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Election.description}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" <br>\n");
          out.write("                                                <b>Position : </b> ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Election.position}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" \n");
          out.write("                                            </div>\n");
          out.write("                                        </div><!-- End election item--> \n");
          out.write("                                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
