<%-- 
    Document   : yourwishlist
    Created on : Oct 10, 2019, 10:29:21 PM
    Author     : ducpb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Your wishlist</title>
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
        <header>
            <div id="top-header">
                <div class="container">
                    <ul class="header-links pull-left">
                        <li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
                        <li><a href="#"><i class="fa fa-envelope-o"></i> email@email.com</a></li>
                        <li><a href="#"><i class="fa fa-map-marker"></i> 1734 Stonecoal Road</a></li>
                    </ul>
                    <ul class="header-links pull-right">
                        <li><a href="#"><i class="fa fa-dollar"></i> USD</a></li>
                        <li><a href="#"><i class="fa fa-user-o"></i> My Account</a></li>
                    </ul>
                </div>
            </div>
            
            <div id="header"> 
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="header-logo">
                                <a href="#" class="logo">
                                    <img src="./img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="header-search">
                                <form>
                                    <input class="input" placeholder="Search here">
                                    <button class="search-btn">Search</button>
                                </form>
                            </div>
                        </div>
            
                        <div class="col-md-3 clearfix">
                            <div class="header-ctn">
                                <div>
                                    <a href="#">
                                        <i class="fa fa-heart-o"></i>
                                        <span>Your Wishlist</span>
                                        <div class="qty">2</div>
                                    </a>
                                </div>
                                
                                <div class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                        <i class="fa fa-shopping-cart"></i>
                                        <span>Your Cart</span>
                                        <div class="qty">3</div>
                                    </a>                                
                                </div>
                                
                                <div class="menu-toggle">
                                    <a href="#">
                                        <i class="fa fa-bars"></i>
                                        <span>Menu</span>
                                    </a>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <nav id="navigation">
                <div class="container">
                    <div id="responsive-nav">
                        <ul class="main-nav nav navbar-nav">
                            <li class="active"><a href="#">HOME</a></li>
                            <li><a href="#">SMARTPHONE</a></li>
                            <li><a href="#">TV</a></li>
                            <li><a href="#">LAPTOP</a></li>
                            <li><a href="#">CAMERA</a></li>
                            <li><a href="#">TABLET</a></li>
                            <li><a href="#">OTHERS</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        
        <div class="section">
            <div class="container">
                <div class="row mt-15">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <table class="table table-bordered table-hover">            
                            <thead>
                                <tr>
                                    <th class="text-center">Number</th>
                                    <th class="text-center">Product</th>
                                    <th class="text-center">Order</th>
                                </tr>
                            </thead>

                            <tbody class="text-center">
                                <tr>
                                    <td>1</td>
                                    <td>
                                        MACBOOK PRO 2019
                                    </td>                                               
                                    <td>
                                        <button class="btn btn-danger ml-5">
                                            <span class="fa fa-order mr-5"></span> Order
                                        </button>
                                        <button class="btn btn-danger ml-5">
                                            <span class="fa fa-order mr-5"></span> Remove
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
