<%@page import="dao.ProductDAOImple"%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Electro</title>
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
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title">
                            <h3 class="title">New Products</h3>                                
                        </div>
                    </div>
                    <!-- Products tab & slick-->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h4 class="title">SMARTPHONE</h4>                                
                        </div>
                        <div class="row">
                            <div class="products-tabs">
                                <div id="tab1" class="tab-pane active">
                                    <div class="products-slick" data-nav="#slick-nav-1">
                                        <%
                                            ProductDAOImple productDAO1 = new ProductDAOImple();
                                            for (Product p : productDAO1.getListByCategory(1)) {
                                        %>
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="image/Smartphone/<%=p.getHinh_anh_1()%>" alt="" >
                                            </div>                                         
                                            <div class="product-body">
                                                <p class="product-category">SMARTPHONE</p>
                                                <h3 class="product-name"><a href="#"><%=p.getTen_san_pham()%></a></h3>
                                                <h4 class="product-price">$<%=p.getGia_ban()%></h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div> 
                                                
                                                <div class="product-btns">
                                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                                </div>
                                                
                                            </div>                                           
                                            <div class="add-to-cart">
                                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                            </div>                                          
                                        </div> 
                                        <%
                                            }
                                        %>    
                                    </div>
                                </div>                                   
                            </div>
                        </div>                   
                    </div>                
                    <!-- Products tab & slick -->
                    
                    <!-- Products tab & slick -->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h4 class="title">TV</h4>                                
                        </div>
                        
                        <div class="row">
                            <div class="products-tabs">
                                <div id="tab1" class="tab-pane active">
                                    <div class="products-slick" data-nav="#slick-nav-1">
                                        <%
                                            ProductDAOImple productDAO2 = new ProductDAOImple();
                                            for (Product p : productDAO2.getListByCategory(2)) {
                                        %>
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="image/TV/<%=p.getHinh_anh_1()%>" alt="">
                                            </div>
                                            
                                            <div class="product-body">
                                                <p class="product-category">TV</p>
                                                <h3 class="product-name"><a href="#"><%=p.getTen_san_pham()%></a></h3>
                                                <h4 class="product-price">$<%=p.getGia_ban()%></h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>                                               
                                                <div class="product-btns">
                                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                                </div>
                                            </div>                                           
                                            <div class="add-to-cart">
                                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                            </div>
                                        </div>
                                        <%
                                            }
                                        %>                                  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Products tab & slick -->
                    
                    <div class="col-md-12">
                        <div class="section-title">
                            <h4 class="title">LAPTOP</h4>                                
                        </div>
                        <div class="row">
                            <div class="products-tabs">
                                <div id="tab1" class="tab-pane active">
                                    <div class="products-slick" data-nav="#slick-nav-1">
                                        <%
                                            ProductDAOImple productDAO3 = new ProductDAOImple();
                                            for (Product p : productDAO3.getListByCategory(3)) {
                                        %>
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="image/Laptop/<%=p.getHinh_anh_1()%>" alt="" >
                                            </div>                                         
                                            <div class="product-body">
                                                <p class="product-category">SMARTPHONE</p>
                                                <h3 class="product-name"><a href="#"><%=p.getTen_san_pham()%></a></h3>
                                                <h4 class="product-price">$<%=p.getGia_ban()%></h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div> 
                                                
                                                <div class="product-btns">
                                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                                </div>
                                                
                                            </div>                                           
                                            <div class="add-to-cart">
                                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                            </div>                                          
                                        </div> 
                                        <%
                                            }
                                        %>    
                                    </div>
                                </div>                                   
                            </div>
                        </div>                   
                    </div>
                    <div class="col-md-12">
                        <div class="section-title">
                            <h4 class="title">CAMERA</h4>                                
                        </div>
                        <div class="row">
                            <div class="products-tabs">
                                <div id="tab1" class="tab-pane active">
                                    <div class="products-slick" data-nav="#slick-nav-1">
                                        <%
                                            ProductDAOImple productDAO4 = new ProductDAOImple();
                                            for (Product p : productDAO4.getListByCategory(4)) {
                                        %>
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="image/Smartphone/<%=p.getHinh_anh_1()%>" alt="" >
                                            </div>                                         
                                            <div class="product-body">
                                                <p class="product-category">CAMERA</p>
                                                <h3 class="product-name"><a href="#"><%=p.getTen_san_pham()%></a></h3>
                                                <h4 class="product-price">$<%=p.getGia_ban()%></h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div> 
                                                
                                                <div class="product-btns">
                                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                                </div>
                                                
                                            </div>                                           
                                            <div class="add-to-cart">
                                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                            </div>                                          
                                        </div> 
                                        <%
                                            }
                                        %>    
                                    </div>
                                </div>                                   
                            </div>
                        </div>                   
                    </div>
                    <div class="col-md-12">
                        <div class="section-title">
                            <h4 class="title">TABLET</h4>                                
                        </div>
                        <div class="row">
                            <div class="products-tabs">
                                <div id="tab1" class="tab-pane active">
                                    <div class="products-slick" data-nav="#slick-nav-1">
                                        <%
                                            ProductDAOImple productDAO5 = new ProductDAOImple();
                                            for (Product p : productDAO5.getListByCategory(5)) {
                                        %>
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="image/Tablet/<%=p.getHinh_anh_1()%>" alt="" >
                                            </div>                                         
                                            <div class="product-body">
                                                <p class="product-category">TABLET</p>
                                                <h3 class="product-name"><a href="#"><%=p.getTen_san_pham()%></a></h3>
                                                <h4 class="product-price">$<%=p.getGia_ban()%></h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div> 
                                                
                                                <div class="product-btns">
                                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                                </div>
                                                
                                            </div>                                           
                                            <div class="add-to-cart">
                                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                            </div>                                          
                                        </div> 
                                        <%
                                            }
                                        %>    
                                    </div>
                                </div>                                   
                            </div>
                        </div>                   
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

