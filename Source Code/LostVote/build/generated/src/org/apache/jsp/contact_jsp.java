package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contact_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/WEB-INF/tlds/lostvote/email-senders/email.tld");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <title>Contact Us</title>\r\n");
      out.write("\r\n");
      out.write("        <meta name=\"viewport\"\r\n");
      out.write("              content=\"width=device-width, initial-scale=1, maximum-scale=5\">\r\n");
      out.write("        <meta name=\"description\" content=\"This is meta description\">\r\n");
      out.write("        <meta name=\"author\" content=\"Themefisher\">\r\n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/favicon.png\" type=\"image/x-icon\">\r\n");
      out.write("        <link rel=\"icon\" href=\"images/favicon.png\" type=\"image/x-icon\">\r\n");
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
      out.write("        <!-- # CSS Plugins -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"plugins/slick/slick.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"plugins/font-awesome/fontawesome.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"plugins/font-awesome/brands.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"plugins/font-awesome/solid.css\">\r\n");
      out.write("\r\n");
      out.write("        <!-- # Main Style Sheet -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("    </head>\t\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <!-- header -->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "_header.jsp", out, false);
      out.write("\r\n");
      out.write("        <!-- /header -->\r\n");
      out.write("\r\n");
      out.write("        <!-- contact page code -->\r\n");
      out.write("        <section class=\"page-header bg-tertiary\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-8 mx-auto text-center\">\r\n");
      out.write("                        <h2 class=\"mb-3 text-capitalize\">Contact Us</h2>\r\n");
      out.write("                        <ul class=\"list-inline breadcrumbs text-capitalize\" style=\"font-weight:500\">\r\n");
      out.write("                            <li class=\"list-inline-item\"><a href=\"index\">Home</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li class=\"list-inline-item\">/ &nbsp; <a href=\"contact\">Contact Us</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"has-shapes\">\r\n");
      out.write("                <svg class=\"shape shape-left text-light\" viewBox=\"0 0 192 752\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n");
      out.write("                <path d=\"M-30.883 0C-41.3436 36.4248 -22.7145 75.8085 4.29154 102.398C31.2976 128.987 65.8677 146.199 97.6457 166.87C129.424 187.542 160.139 213.902 172.162 249.847C193.542 313.799 149.886 378.897 129.069 443.036C97.5623 540.079 122.109 653.229 191 728.495\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                <path d=\"M-55.5959 7.52271C-66.0565 43.9475 -47.4274 83.3312 -20.4214 109.92C6.58466 136.51 41.1549 153.722 72.9328 174.393C104.711 195.064 135.426 221.425 147.449 257.37C168.829 321.322 125.174 386.42 104.356 450.559C72.8494 547.601 97.3965 660.752 166.287 736.018\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                <path d=\"M-80.3302 15.0449C-90.7909 51.4697 -72.1617 90.8535 -45.1557 117.443C-18.1497 144.032 16.4205 161.244 48.1984 181.915C79.9763 202.587 110.691 228.947 122.715 264.892C144.095 328.844 100.439 393.942 79.622 458.081C48.115 555.123 72.6622 668.274 141.552 743.54\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                <path d=\"M-105.045 22.5676C-115.506 58.9924 -96.8766 98.3762 -69.8706 124.965C-42.8646 151.555 -8.29436 168.767 23.4835 189.438C55.2615 210.109 85.9766 236.469 98.0001 272.415C119.38 336.367 75.7243 401.464 54.9072 465.604C23.4002 562.646 47.9473 675.796 116.838 751.063\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                </svg>\r\n");
      out.write("                <svg class=\"shape shape-right text-light\" viewBox=\"0 0 731 746\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n");
      out.write("                <path d=\"M12.1794 745.14C1.80036 707.275 -5.75764 666.015 8.73984 629.537C27.748 581.745 80.4729 554.968 131.538 548.843C182.604 542.703 234.032 552.841 285.323 556.748C336.615 560.64 391.543 557.276 433.828 527.964C492.452 487.323 511.701 408.123 564.607 360.255C608.718 320.353 675.307 307.183 731.29 327.323\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                <path d=\"M51.0253 745.14C41.2045 709.326 34.0538 670.284 47.7668 635.783C65.7491 590.571 115.623 565.242 163.928 559.449C212.248 553.641 260.884 563.235 309.4 566.931C357.916 570.627 409.887 567.429 449.879 539.701C505.35 501.247 523.543 426.331 573.598 381.059C615.326 343.314 678.324 330.853 731.275 349.906\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                <path d=\"M89.8715 745.14C80.6239 711.363 73.8654 674.568 86.8091 642.028C103.766 599.396 150.788 575.515 196.347 570.054C241.906 564.578 287.767 573.629 333.523 577.099C379.278 580.584 428.277 577.567 465.976 551.423C518.279 515.172 535.431 444.525 582.62 401.832C621.964 366.229 681.356 354.493 731.291 372.46\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                <path d=\"M128.718 745.14C120.029 713.414 113.678 678.838 125.837 648.274C141.768 608.221 185.939 585.788 228.737 580.659C271.536 575.515 314.621 584.008 357.6 587.282C400.58 590.556 446.607 587.719 482.028 563.16C531.163 529.111 547.275 462.733 591.612 422.635C628.572 389.19 684.375 378.162 731.276 395.043\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                <path d=\"M167.564 745.14C159.432 715.451 153.504 683.107 164.863 654.519C179.753 617.046 221.088 596.062 261.126 591.265C301.164 586.452 341.473 594.402 381.677 597.465C421.88 600.527 464.95 597.872 498.094 574.896C544.061 543.035 559.146 480.942 600.617 443.423C635.194 412.135 687.406 401.817 731.276 417.612\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                <path d=\"M817.266 289.466C813.108 259.989 787.151 237.697 759.261 227.271C731.372 216.846 701.077 215.553 671.666 210.904C642.254 206.24 611.795 197.156 591.664 175.224C555.853 136.189 566.345 75.5336 560.763 22.8649C552.302 -56.8256 498.487 -130.133 425 -162.081\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                <path d=\"M832.584 276.159C828.427 246.683 802.469 224.391 774.58 213.965C746.69 203.539 716.395 202.246 686.984 197.598C657.573 192.934 627.114 183.85 606.982 161.918C571.172 122.883 581.663 62.2275 576.082 9.55873C567.62 -70.1318 513.806 -143.439 440.318 -175.387\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                <path d=\"M847.904 262.853C843.747 233.376 817.789 211.084 789.9 200.659C762.011 190.233 731.716 188.94 702.304 184.292C672.893 179.627 642.434 170.544 622.303 148.612C586.492 109.577 596.983 48.9211 591.402 -3.74766C582.94 -83.4382 529.126 -156.746 455.638 -188.694\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                <path d=\"M863.24 249.547C859.083 220.07 833.125 197.778 805.236 187.353C777.347 176.927 747.051 175.634 717.64 170.986C688.229 166.321 657.77 157.237 637.639 135.306C601.828 96.2707 612.319 35.6149 606.738 -17.0538C598.276 -96.7443 544.462 -170.052 470.974 -202\" stroke=\"currentColor\" stroke-miterlimit=\"10\" />\r\n");
      out.write("                </svg>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("        <section class=\"section\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"row justify-content-center align-items-center\">\r\n");
      out.write("                    <div class=\"col-lg-6\">\r\n");
      out.write("                        <div class=\"section-title text-center\">\r\n");
      out.write("                            <p class=\"text-primary text-uppercase fw-bold mb-3\">Contact With us</p>\r\n");
      out.write("                            <h1>We'd love to hear from you.</h1>\r\n");
      out.write("                            <p>\r\n");
      out.write("                                Need a hand? Or a high five?\r\n");
      out.write("                            </p>\r\n");
      out.write("                            <p>    \r\n");
      out.write("                                Here's how to reach us.\r\n");
      out.write("                            </p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-lg-10 shadow card rounded bg-white\" id=\"contact-email-send\">\r\n");
      out.write("                        <div class=\"p-5\">\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-12 mb-4\">\r\n");
      out.write("                                    <h4>Leave Us A Message</h4>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-lg-6\">\r\n");
      out.write("                                    <!-- code for email sending -->\r\n");
      out.write("                                    ");
      //  c:if
      org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
      _jspx_th_c_if_0.setPageContext(_jspx_page_context);
      _jspx_th_c_if_0.setParent(null);
      _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.contact_name!=null && param.contact_subject!=null && param.contact_email!=null && param.contact_message!=null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
      if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                        ");
          if (_jspx_meth_email_sendContactEmail_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
            return;
          out.write("\r\n");
          out.write("                                        ");

                                            request.setAttribute("content_name", null);
                                            request.setAttribute("contect_subject", null);
                                            request.setAttribute("content_email", null);
                                            request.setAttribute("content_message", null);
                                        
          out.write("\r\n");
          out.write("                                    ");
          int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
        return;
      }
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      out.write("\r\n");
      out.write("                                    <!-- /code for email sending -->\r\n");
      out.write("                                    <div class=\"contact-form\">\r\n");
      out.write("                                        <form action=\"contact#contact-email-send\" method=\"post\" name=\"contact_form\">\r\n");
      out.write("                                            <div class=\"form-group mb-4 pb-2\">\r\n");
      out.write("                                                <label for=\"exampleFormControlInput1\" class=\"form-label\">Full Name</label>\r\n");
      out.write("                                                <input type=\"text\" class=\"form-control shadow-none\" name=\"contact_name\" id=\"contact_name\" required=\"required\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group mb-4 pb-2\">\r\n");
      out.write("                                                <label for=\"exampleFormControlInput1\" class=\"form-label\">Subject</label>\r\n");
      out.write("                                                <input type=\"text\" class=\"form-control shadow-none\" name=\"contact_subject\" id=\"contact_subject\" required=\"required\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group mb-4 pb-2\">\r\n");
      out.write("                                                <label for=\"exampleFormControlInput1\" class=\"form-label\">Email address</label>\r\n");
      out.write("                                                <input type=\"email\" class=\"form-control shadow-none\" name=\"contact_email\" id=\"contact_email\" required=\"required\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group mb-4 pb-2\">\r\n");
      out.write("                                                <label for=\"exampleFormControlTextarea1\" class=\"form-label\">Write Message</label>\r\n");
      out.write("                                                <textarea class=\"form-control shadow-none\" name=\"contact_message\" id=\"contact_message\" required=\"required\" rows=\"3\"></textarea>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <button class=\"btn btn-primary w-100\" id=\"btnSendMsg\" type=\"submit\">Send Message</button>\r\n");
      out.write("                                        </form>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-lg-6 mt-5 mt-lg-0\">\r\n");
      out.write("                                    <div class=\"contact-info\">\r\n");
      out.write("                                        <div class=\"block mt-0\">\r\n");
      out.write("                                            <h4 class=\"h5\">Still Have Questions?</h4>\r\n");
      out.write("                                            <div class=\"content\">Call Us We Will Be Happy To Help\r\n");
      out.write("                                                <br> <a href=\"tel:+919104851608\">+91-910-485-608</a> \r\n");
      out.write("                                                <br>Monday - Friday\r\n");
      out.write("                                                <br>9:00 AM TO 8:00 PM</div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"block mt-4\">\r\n");
      out.write("                                            <h4 class=\"h5\">Rajkot Office</h4>\r\n");
      out.write("                                            <div class=\"content\">\r\n");
      out.write("                                                LostVote\r\n");
      out.write("                                                <br>\r\n");
      out.write("                                                \"Yogidham Gurukul\", Kalawad Road,\r\n");
      out.write("                                                <br>\r\n");
      out.write("                                                Rajkot - 360005, Gujarat, India\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"block\">\r\n");
      out.write("                                            <ul class=\"list-unstyled list-inline my-4 social-icons\">\r\n");
      out.write("                                                <li class=\"list-inline-item me-3\"><a title=\"Explorer Facebook Profile\" class=\"text-black\" href=\"#\"><i class=\"fab fa-facebook-f\"></i></a>\r\n");
      out.write("                                                </li>\r\n");
      out.write("                                                <li class=\"list-inline-item me-3\"><a title=\"Explorer Twitter Profile\" class=\"text-black\" href=\"#\"><i class=\"fab fa-twitter\"></i></a>\r\n");
      out.write("                                                </li>\r\n");
      out.write("                                                <li class=\"list-inline-item me-3\"><a title=\"Explorer Instagram Profile\" class=\"text-black\" href=\"#\"><i class=\"fab fa-instagram\"></i></a>\r\n");
      out.write("                                                </li>\r\n");
      out.write("                                            </ul>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\t\r\n");
      out.write("        <!-- /contact page code -->\t\t\r\n");
      out.write("\r\n");
      out.write("        <!-- footer -->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "_footer.jsp", out, false);
      out.write("\r\n");
      out.write("        <!-- /footer -->\r\n");
      out.write("\r\n");
      out.write("        <!-- # JS Plugins -->\r\n");
      out.write("        <script src=\"plugins/jquery/jquery.min.js\"></script>\r\n");
      out.write("        <script src=\"plugins/bootstrap/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"plugins/slick/slick.min.js\"></script>\r\n");
      out.write("        <script src=\"plugins/scrollmenu/scrollmenu.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Main Script -->\r\n");
      out.write("        <script src=\"js/script.js\"></script>\r\n");
      out.write("\r\n");
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

  private boolean _jspx_meth_email_sendContactEmail_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  email:sendContactEmail
    com.lostvote.handlers.send _jspx_th_email_sendContactEmail_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(com.lostvote.handlers.send.class) : new com.lostvote.handlers.send();
    _jspx_th_email_sendContactEmail_0.setJspContext(_jspx_page_context);
    _jspx_th_email_sendContactEmail_0.setParent(_jspx_th_c_if_0);
    _jspx_th_email_sendContactEmail_0.setContact_name((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.contact_name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
    _jspx_th_email_sendContactEmail_0.setContact_email((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.contact_email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
    _jspx_th_email_sendContactEmail_0.setContact_subject((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.contact_subject}", java.lang.String.class, (PageContext)_jspx_page_context, null));
    _jspx_th_email_sendContactEmail_0.setContact_message((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.contact_message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
    _jspx_th_email_sendContactEmail_0.doTag();
    return false;
  }
}
