<%@page import="model.User"%>
<%@page import="dao.UserDAOImple"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            
            String username = null;
            Cookie[] cookies = request.getCookies();
            if(cookies !=null){
                for(Cookie cookie : cookies){
                    if(cookie.getName().equals("username")) 
                        username = cookie.getValue();
                }
            }
            
            UserDAOImple userDAO = new UserDAOImple();
            User u= userDAO.getUser(username);
	%>
        <div id="signup" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 center-block">
                        <form action="MyAccount" method="post" class="billing-details" >
                            <h3 class="section-title">MY ACCOUNT</h3>
                            <div style="color: red"><%=error%></div> 
                            <div class="form-group">
                                <input class="input" type="text" name="username" placeholder="<%=u.getUser__name()%>" >
                            </div>
                            <div class="form-group">
                                    <input class="input" type="text" name="email" placeholder="<%=u.getEmail()%>" >
                            </div>
                            <div class="form-group">
                                <input class="input" type="text" name="sex" placeholder="<%=u.getGioi_tinh() %>">
                            </div>
                            <div class="form-group">
                                <input class="input" type="text" name="date" placeholder="<%=u.getNgay_sinh() %>">
                            </div>
                            <div class="form-group">
                                    <input class="input" type="text" name="phone" placeholder="<%=u.getSdt() %>">
                            </div>
                            <div class="form-group">
                                    <input class="input" type="text" name="address" placeholder="<%=u.getDia_chi() %>">
                            </div>
                            <div class="form-group">
                                    <input class="input" type="password" name="password" placeholder="<%=u.getPass_word() %>">
                            </div>          
                            <div class="form-group">
                                <button type="submit" value="myaccount" class="primary-btn order-submit">Save</button>
                            </div>
                        </form>
                    </div>
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