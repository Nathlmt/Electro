<%-- 
    Document   : signup
    Created on : Oct 10, 2019, 10:32:33 PM
    Author     : ducpb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Sign up</title>
        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css"/>
        
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <%
            String error = "";
            if (request.getAttribute("error") != null) {
                error = (String) request.getAttribute("error");
            }
	%>
        <div id="signup" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 center-block">
                        <form action="SignupServlet" method="post" class="billing-details" >
                            <h3 class="section-title">SIGN UP</h3>
                            <div style="color: red"><%=error%></div> 
                            <div class="form-group">
                                <input class="input" type="text" name="username" placeholder="Username">
                            </div>
                            <div class="form-group">
                                    <input class="input" type="text" name="email" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <input class="input" type="text" name="sex" placeholder="Gender">
                            </div>
                            <div class="form-group">
                                <input class="input" type="text" name="date" placeholder="Date">
                            </div>
                            <div class="form-group">
                                    <input class="input" type="text" name="phone" placeholder="Phone">
                            </div>
                            <div class="form-group">
                                    <input class="input" type="text" name="address" placeholder="Address">
                            </div>
                            <div class="form-group">
                                    <input class="input" type="password" name="password" placeholder="Password">
                            </div>          
                            <div class="form-group">
                                    <input class="input" type="password" name="repassword" placeholder="Confirm Password">
                            </div>
                            <div class="text-center">By clicking on Sign up, you agree to Electro's <a href="https://www.facebook.com">Terms and Conditions of Use</a></div>
                            <div class="form-group">
                                <button type="submit" value="signin" class="primary-btn order-submit">Sign up</button>
                            </div>
                        </form>
                </div>
            </div>
        </div>
        
        <jsp:include page="footer.jsp"></jsp:include>
        
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
