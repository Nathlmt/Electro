package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class resetpassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("         <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("        <title>Reset Password</title>\n");
      out.write("        <!-- Google font -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,500,700\" rel=\"stylesheet\">\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\n");
      out.write("        <!-- Slick -->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/slick.css\"/>\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/slick-theme.css\"/>\n");
      out.write("        <!-- nouislider -->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/nouislider.min.css\"/>\n");
      out.write("        <!-- Font Awesome Icon -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("        <!-- Custom stlylesheet -->\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/style.css\"/>        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <div id=\"top-header\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <ul class=\"header-links pull-left\">\n");
      out.write("                        <li><a href=\"#\"><i class=\"fa fa-phone\"></i> +021-95-51-84</a></li>\n");
      out.write("                        <li><a href=\"#\"><i class=\"fa fa-envelope-o\"></i> email@email.com</a></li>\n");
      out.write("                        <li><a href=\"#\"><i class=\"fa fa-map-marker\"></i> 1734 Stonecoal Road</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"header-links pull-right\">\n");
      out.write("                        <li><a href=\"#\"><i class=\"fa fa-dollar\"></i> USD</a></li>\n");
      out.write("                        <li><a href=\"#\"><i class=\"fa fa-user-o\"></i> My Account</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div id=\"header\"> \n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-3\">\n");
      out.write("                            <div class=\"header-logo\">\n");
      out.write("                                <a href=\"#\" class=\"logo\">\n");
      out.write("                                    <img src=\"./img/logo.png\" alt=\"\">\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <div class=\"header-search\">\n");
      out.write("                                <form>\n");
      out.write("                                    <input class=\"input\" placeholder=\"Search here\">\n");
      out.write("                                    <button class=\"search-btn\">Search</button>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("            \n");
      out.write("                        <div class=\"col-md-3 clearfix\">\n");
      out.write("                            <div class=\"header-ctn\">\n");
      out.write("                                <div>\n");
      out.write("                                    <a href=\"#\">\n");
      out.write("                                        <i class=\"fa fa-heart-o\"></i>\n");
      out.write("                                        <span>Your Wishlist</span>\n");
      out.write("                                        <div class=\"qty\">2</div>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                <div class=\"dropdown\">\n");
      out.write("                                    <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"true\">\n");
      out.write("                                        <i class=\"fa fa-shopping-cart\"></i>\n");
      out.write("                                        <span>Your Cart</span>\n");
      out.write("                                        <div class=\"qty\">3</div>\n");
      out.write("                                    </a>                                \n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                <div class=\"menu-toggle\">\n");
      out.write("                                    <a href=\"#\">\n");
      out.write("                                        <i class=\"fa fa-bars\"></i>\n");
      out.write("                                        <span>Menu</span>\n");
      out.write("                                    </a>\n");
      out.write("                                </div>                                \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <nav id=\"navigation\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div id=\"responsive-nav\">\n");
      out.write("                        <ul class=\"main-nav nav navbar-nav\">\n");
      out.write("                            <li class=\"active\"><a href=\"#\">HOME</a></li>\n");
      out.write("                            <li><a href=\"#\">SMARTPHONE</a></li>\n");
      out.write("                            <li><a href=\"#\">TV</a></li>\n");
      out.write("                            <li><a href=\"#\">LAPTOP</a></li>\n");
      out.write("                            <li><a href=\"#\">CAMERA</a></li>\n");
      out.write("                            <li><a href=\"#\">TABLET</a></li>\n");
      out.write("                            <li><a href=\"#\">OTHERS</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        ");

            String error = "";
            if (request.getAttribute("error") != null) {
                    error = (String) request.getAttribute("error");
            }
	
      out.write("\n");
      out.write("        <div id=\"login\" class=\"section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6 center-block\">\n");
      out.write("                        <form action=\"ResetPassword\" method=\"post\" class=\"billing-details\">\n");
      out.write("                            <h3 class=\"section-title\">RESET PASSWORD</h3>\n");
      out.write("                            <div style=\"color: red\">");
      out.print(error);
      out.write("</div>                         \n");
      out.write("                            <div class=\"form-group\">                             \n");
      out.write("                                <input type=\"text\" name=\"username\" placeholder=\"Username\" class=\"input\" />\n");
      out.write("                            </div>                 \n");
      out.write("                            <button type=\"submit\" value=\"resetpassword\" class=\"primary-btn order-submit\">Reset</button>\n");
      out.write("                        </form>                       \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <footer id=\"footer\">\n");
      out.write("            <div class=\"section\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-3 col-xs-6\">\n");
      out.write("                            <div class=\"footer\">\n");
      out.write("                                <h3 class=\"footer-title\">About Us</h3>\n");
      out.write("                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</p>\n");
      out.write("                                <ul class=\"footer-links\">\n");
      out.write("                                    <li><a href=\"#\"><i class=\"fa fa-map-marker\"></i>1734 Stonecoal Road</a></li>\n");
      out.write("                                    <li><a href=\"#\"><i class=\"fa fa-phone\"></i>+021-95-51-84</a></li>\n");
      out.write("                                    <li><a href=\"#\"><i class=\"fa fa-envelope-o\"></i>email@email.com</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-3 col-xs-6\">\n");
      out.write("                            <div class=\"footer\">\n");
      out.write("                                <h3 class=\"footer-title\">Categories</h3>\n");
      out.write("                                <ul class=\"footer-links\">\n");
      out.write("                                    <li><a href=\"#\">Hot deals</a></li>\n");
      out.write("                                    <li><a href=\"#\">Laptops</a></li>\n");
      out.write("                                    <li><a href=\"#\">Smartphones</a></li>\n");
      out.write("                                    <li><a href=\"#\">Cameras</a></li>\n");
      out.write("                                    <li><a href=\"#\">Accessories</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"clearfix visible-xs\"></div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-3 col-xs-6\">\n");
      out.write("                            <div class=\"footer\">\n");
      out.write("                                <h3 class=\"footer-title\">Information</h3>\n");
      out.write("                                <ul class=\"footer-links\">\n");
      out.write("                                    <li><a href=\"#\">About Us</a></li>\n");
      out.write("                                    <li><a href=\"#\">Contact Us</a></li>\n");
      out.write("                                    <li><a href=\"#\">Privacy Policy</a></li>\n");
      out.write("                                    <li><a href=\"#\">Orders and Returns</a></li>\n");
      out.write("                                    <li><a href=\"#\">Terms & Conditions</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-3 col-xs-6\">\n");
      out.write("                            <div class=\"footer\">\n");
      out.write("                                <h3 class=\"footer-title\">Service</h3>\n");
      out.write("                                <ul class=\"footer-links\">\n");
      out.write("                                    <li><a href=\"#\">My Account</a></li>\n");
      out.write("                                    <li><a href=\"#\">View Cart</a></li>\n");
      out.write("                                    <li><a href=\"#\">Wishlist</a></li>\n");
      out.write("                                    <li><a href=\"#\">Track My Order</a></li>\n");
      out.write("                                    <li><a href=\"#\">Help</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>                        \n");
      out.write("            </div>             \n");
      out.write("                \n");
      out.write("            <div id=\"bottom-footer\" class=\"section\">\n");
      out.write("                <div class=\"container\">                          \n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 text-center\">\n");
      out.write("                            <ul class=\"footer-payments\">\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-cc-visa\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-credit-card\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-cc-paypal\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-cc-mastercard\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-cc-discover\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-cc-amex\"></i></a></li>\n");
      out.write("                            </ul>\n");
      out.write("                            <span class=\"copyright\">                  \n");
      out.write("                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>                           \n");
      out.write("                            </span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>                                       \n");
      out.write("                </div>                     \n");
      out.write("            </div>              \n");
      out.write("        </footer>\n");
      out.write("            \n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/slick.min.js\"></script>\n");
      out.write("        <script src=\"js/nouislider.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.zoom.min.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
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