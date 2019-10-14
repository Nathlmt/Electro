package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/style.css\"/>\n");
      out.write("    </head>\n");
      out.write("    \n");
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
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/slick.min.js\"></script>\n");
      out.write("        <script src=\"js/nouislider.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.zoom.min.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
