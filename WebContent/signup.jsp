<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="404.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" dir="ltr" class="no-js">
<!--<![endif]-->

<head>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- META TAGS                                 -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <meta charset="utf-8">
    <!-- Always force latest IE rendering engine -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile specific meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- PAGE TITLE                                -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <title>注册</title>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- SEO METAS                                 -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <meta name="description" content="FRIDAY is a responsive multipurpose-ecommerce site template allows you to store coupons and promo codes from different brands and create store for deals, discounts, It can be used as coupon website such as groupon.com and also as online store">
    <meta name="	black friday, coupon, coupon codes, coupon theme, coupons, deal news, deals, discounts, ecommerce, friday deals, groupon, promo codes, responsive, shop, store coupons">
    <meta name="robots" content="index, follow">
    <meta name="author" content="CODASTROID">

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- PAGE FAVICON                              -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <link rel="apple-touch-icon" href="assets/images/favicon/apple-touch-icon.png">
    <link rel="icon" href="assets/images/favicon/favicon.ico">

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- GOOGLE FONTS                              -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600" rel="stylesheet">

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Include CSS Filess                        -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->

    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Linearicons -->
    <link href="assets/vendors/linearicons/css/linearicons.css" rel="stylesheet">

    <!-- Owl Carousel -->
    <link href="assets/vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendors/owl-carousel/owl.theme.min.css" rel="stylesheet">

    <!-- Flex Slider -->
    <link href="assets/vendors/flexslider/flexslider.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="assets/css/base.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">

</head>

<body id="body" class="wide-layout preloader-active">


    <noscript>
        <div class="noscript alert-error">
            For full functionality of this site it is necessary to enable JavaScript. Here are the <a href="http://www.enable-javascript.com/" target="_blank">
		 instructions how to enable JavaScript in your web browser</a>.
        </div>
    </noscript>

    <div id="preloader" class="preloader">
        <div class="loader-cube">
            <div class="loader-cube__item1 loader-cube__item"></div>
            <div class="loader-cube__item2 loader-cube__item"></div>
            <div class="loader-cube__item4 loader-cube__item"></div>
            <div class="loader-cube__item3 loader-cube__item"></div>
        </div>
    </div>
   
    <div id="pageWrapper" class="page-wrapper">
        <!-- –––––––––––––––[ HEADER ]––––––––––––––– -->
        <header id="mainHeader" class="main-header">

            <!-- Top Bar -->
            <div class="top-bar bg-gray">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-md-4 is-hidden-sm-down">
                           
                        </div>
                        <div class="col-sm-12 col-md-8">
                            <ul class="nav-top nav-top-right list-inline t-xs-center t-md-right">
                             
                                <li><a href="signin.jsp"><i class="fa fa-lock"></i>Sign In</a>
                                </li>
                                <li><a href="signup.jsp"><i class="fa fa-user"></i>Sign Up</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Top Bar -->

            <!-- Header Header -->
            <div class="header-header bg-white">
                <div class="container">
                    <div class="row row-rl-0 row-tb-20 row-md-cell">
                        <div class="brand col-md-3 t-xs-center t-md-left valign-middle">
                            <a href="#" class="logo">
                                <img src="assets/images/logo.png" alt="" width="250">
                            </a>
                        </div>
                        <div class="header-search col-md-9">
                            <div class="row row-tb-10 ">
                                <div class="col-sm-8">
                                    <form class="search-form">
                                        <div class="input-group">
                                            <input type="text" class="form-control input-lg search-input" placeholder="Enter Keywork Here ..." required="required">
                                            <div class="input-group-btn">
                                                <div class="input-group">
                       
                                                    <div class="input-group-btn">
                                                        <button type="submit" class="btn btn-lg btn-search btn-block">
                                                            <i class="fa fa-search font-16"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-sm-4 t-xs-center t-md-right">
                                    <div class="header-cart">
                                        <a href="/bookShopping/shopCar">
                                            <span class="icon lnr lnr-cart"></span>
                                            <div><span class="cart-number">0</span>
                                            </div>
                                            <span class="title">Cart</span>
                                        </a>
                                    </div>
                                    <div class="header-wishlist ml-20">
                                        <a href="wishlist.jsp">
                                            <span class="icon lnr lnr-heart font-30"></span>
                                            <span class="title">Wish List</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Header Header -->

            <!-- Header Menu -->
            <div class="header-menu bg-blue">
                <div class="container">
                    <nav class="nav-bar">
                        <div class="nav-header">
                            <span class="nav-toggle" data-toggle="#header-navbar">
		                        <i></i>
		                        <i></i>
		                        <i></i>
		                    </span>
                        </div>
                        <div id="header-navbar" class="nav-collapse">
                            <ul class="nav-menu">
                                <li class="active">
                                    <a href="index.jsp">Home</a>
                                </li>
                                <!-- <li class="dropdown-mega-menu">
                                    <a href="deals_grid.jsp">Deals</a>
                                    <div class="mega-menu">
                                        <div class="row row-v-10">
                                            <div class="col-md-3">
                                                <ul>
                                                    <li><a href="deals_grid.jsp">Grid View</a>
                                                    </li>
                                                    <li><a href="deals_grid_sidebar.jsp">Grid With Sidebar</a>
                                                    </li>
                                                    <li><a href="deals_list.jsp">List View</a>
                                                    </li>
                                                    <li><a href="deal_single.jsp">Deal Single</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-md-3">
                                                <figure class="deal-thumbnail embed-responsive embed-responsive-4by3" data-bg-img="assets/images/deals/deal_03.jpg">
                                                    <div class="label-discount top-10 right-10">-15%</div>
                                                    <div class="deal-about p-10 pos-a bottom-0 left-0">
                                                        <div class="rating mb-10">
                                                            <span class="rating-stars rate-allow" data-rating="2">
										                        <i class="fa fa-star-o"></i>
										                        <i class="fa fa-star-o"></i>
										                        <i class="fa fa-star-o"></i>
										                        <i class="fa fa-star-o"></i>
										                        <i class="fa fa-star-o"></i>
										                    </span>
                                                        </div>
                                                        <h6 class="deal-title mb-10">
										                    <a href="deal_single.jsp" class="color-lighter">Aenean ut orci vel massa</a>
										                </h6>
                                                    </div>
                                                </figure>
                                            </div>
                                            <div class="col-md-3">
                                                <figure class="deal-thumbnail embed-responsive embed-responsive-4by3" data-bg-img="assets/images/deals/deal_04.jpg">
                                                    <div class="label-discount top-10 right-10">-60%</div>
                                                    <div class="deal-about p-10 pos-a bottom-0 left-0">
                                                        <div class="rating mb-10">
                                                            <span class="rating-stars rate-allow" data-rating="3">
										                        <i class="fa fa-star-o"></i>
										                        <i class="fa fa-star-o"></i>
										                        <i class="fa fa-star-o"></i>
										                        <i class="fa fa-star-o"></i>
										                        <i class="fa fa-star-o"></i>
										                    </span>
                                                        </div>
                                                        <h6 class="deal-title mb-10">
										                    <a href="deal_single.jsp" class="color-lighter">Aenean ut orci vel massa</a>
										                </h6>
                                                    </div>
                                                </figure>
                                            </div>
                                            <div class="col-md-3">
                                                <figure class="deal-thumbnail embed-responsive embed-responsive-4by3" data-bg-img="assets/images/deals/deal_05.jpg">
                                                    <div class="label-discount top-10 right-10">-60%</div>
                                                    <div class="deal-about p-10 pos-a bottom-0 left-0">
                                                        <div class="rating mb-10">
                                                            <span class="rating-stars rate-allow" data-rating="5">
										                        <i class="fa fa-star-o"></i>
										                        <i class="fa fa-star-o"></i>
										                        <i class="fa fa-star-o"></i>
										                        <i class="fa fa-star-o"></i>
										                        <i class="fa fa-star-o"></i>
										                    </span>
                                                        </div>
                                                        <h6 class="deal-title mb-10">
										                    <a href="deal_single.jsp" class="color-lighter">Aenean ut orci vel massa</a>
										                </h6>
                                                    </div>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <a href="coupons_grid.jsp">Coupons</a>
                                    <ul>
                                        <li><a href="coupons_grid.jsp">Grid View</a>
                                        </li>
                                        <li><a href="coupons_grid_sidebar.jsp">Grid With Sidebar</a>
                                        </li>
                                        <li><a href="coupons_list.jsp">List View</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="stores_01.jsp">Stores</a>
                                    <ul>
                                        <li><a href="stores_01.jsp">Stores Search</a>
                                        </li>
                                        <li><a href="stores_02.jsp">Stores Categories</a>
                                        </li>
                                        <li><a href="store_single_01.jsp">Store Single 1</a>
                                        </li>
                                        <li><a href="store_single_02.jsp">Store Single 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="contact_us_01.jsp">Contact Us</a>
                                    <ul>
                                        <li><a href="contact_us_01.jsp">Contact Us 1</a>
                                        </li>
                                        <li><a href="contact_us_02.jsp">Contact Us 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Blog</a>
                                    <ul>
                                        <li>
                                            <a href="#">Classic View</a>
                                            <ul>
                                                <li><a href="blog_classic_right_sidebar.jsp">Right Sidenar</a>
                                                </li>
                                                <li><a href="blog_classic_left_sidebar.jsp">Left Sidebar</a>
                                                </li>
                                                <li><a href="blog_classic_fullwidth.jsp">Full Width</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Grid View</a>
                                            <ul>
                                                <li><a href="blog_grid_3col.jsp">3 Columns</a>
                                                </li>
                                                <li><a href="blog_grid_2col.jsp">2 Columns</a>
                                                </li>
                                                <li><a href="blog_grid_right_sidebar.jsp">Right Sidebar</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">List View</a>
                                            <ul>
                                                <li><a href="blog_list_right_sidebar.jsp">Right Sidenar</a>
                                                </li>
                                                <li><a href="blog_list_left_sidebar.jsp">Left Sidebar</a>
                                                </li>
                                                <li><a href="blog_list_fullwidth.jsp">Full Width</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Blog Single</a>
                                            <ul>
                                                <li><a href="blog_single_standard.jsp">Standard Post</a>
                                                </li>
                                                <li><a href="blog_single_gallery.jsp">Gallery Post</a>
                                                </li>
                                                <li><a href="blog_single_youtube.jsp">Youtube Video</a>
                                                </li>
                                                <li><a href="blog_single_vimeo.jsp">Vimeo Video</a>
                                                </li>
                                                <li><a href="blog_single_map.jsp">Google Map</a>
                                                </li>
                                                <li><a href="blog_single_quote.jsp">Quote Post</a>
                                                </li>
                                                <li><a href="blog_single_audio.jsp">Audio Post</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Pages</a>
                                    <ul>
                                        <li><a href="index.jsp">Home Default</a>
                                        </li>
                                        <li><a href="signin.jsp">Sign In</a>
                                        </li>
                                        <li><a href="signup.jsp">Sign Up</a>
                                        </li>
                                        <li><a href="404.jsp">404 Page</a>
                                        </li>
                                        <li><a href="faq.jsp">FAQ Page</a>
                                        </li>
                                        <li><a href="cart.jsp">Cart Page</a>
                                        </li>
                                        <li>
                                            <a href="checkout_method.jsp">Checkout</a>
                                            <ul>
                                                <li><a href="checkout_method.jsp">Checkout method</a>
                                                </li>
                                                <li><a href="checkout_billing.jsp">Billing Information</a>
                                                </li>
                                                <li><a href="checkout_payment.jsp">Payment Information</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Contact Us</a>
                                            <ul>
                                                <li><a href="contact_us_01.jsp">Contact Us 1</a>
                                                </li>
                                                <li><a href="contact_us_02.jsp">Contact Us 2</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Deals Pages</a>
                                            <ul>
                                                <li><a href="deals_grid.jsp">Grid View</a>
                                                </li>
                                                <li><a href="deals_list.jsp">List View</a>
                                                </li>
                                                <li><a href="deal_single.jsp">Deal Single</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Coupons Pages</a>
                                            <ul>
                                                <li><a href="coupons_grid.jsp">Grid View</a>
                                                </li>
                                                <li><a href="coupons_grid_sidebar.jsp">Grid With Sidebar</a>
                                                </li>
                                                <li><a href="coupons_list.jsp">List View</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="terms_conditions.jsp">Terms &amp; conditions</a>
                                        </li>
                                    </ul>
                                </li> -->
                            </ul>
                        </div>
             
                    </nav>
                </div>
            </div>
            <!-- End Header Menu -->

        </header>
        <!-- –––––––––––––––[ HEADER ]––––––––––––––– -->

        <!-- –––––––––––––––[ PAGE CONTENT ]––––––––––––––– -->
        <main id="mainContent" class="main-content">
            <div class="page-container ptb-60">
                <div class="container">
                    <section class="sign-area panel p-40">
                        <h3 class="sign-title">Sign Up <small>Or <a href="signin.jsp" class="color-green">Sign In</a></small></h3>
                        <div class="row row-rl-0">
                            <div class="col-sm-6 col-md-7 col-left">
                                <form class="p-40" action="/bookShopping/Regist" method="post">
                                <%
                                if((String)session.getAttribute("isRegist") == null){
	                            	out.write("");
	                            }
	                            else if(session.getAttribute("isRegist").toString().equals("true")){
	                            	out.write("true");
	                            }
	                            else {
	                            	out.write(session.getAttribute("regMsg").toString());
	                            }
                                %>
                                    <div class="form-group">
                                        <label class="sr-only">Full Name</label>
                                        <input type="text" class="form-control input-lg" placeholder="Full Name" name="account">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only">Address</label>
                                        <input type="text" class="form-control input-lg" placeholder="address" name="address">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only">Password</label>
                                        <input type="password" class="form-control input-lg" placeholder="Password" name="password1">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only">Confirm Password</label>
                                        <input type="password" class="form-control input-lg" placeholder="Confirm Password" name="password2">
                                    </div>
                                    <div class="custom-checkbox mb-20">
                                        <input type="checkbox" id="agree_terms">
                                        <label class="color-mid" for="agree_terms">I agree to the <a href="terms_conditions.jsp" class="color-green">Terms of Use</a> and <a href="terms_conditions.jsp" class="color-green">Privacy Statement</a>.</label>
                                    </div>
                                    <button type="submit" class="btn btn-block btn-lg">Sign Up</button>
                                </form>
                                <span class="or">Or</span>
                            </div>
                            <div class="col-sm-6 col-md-5 col-right">
                             
                            </div>
                        </div>
                    </section>
                </div>
            </div>


        </main>
        <!-- –––––––––––––––[ END PAGE CONTENT ]––––––––––––––– -->
        <section class="footer-top-area pt-70 pb-30 pos-r bg-blue">
        
        </section>
        <!-- –––––––––––––––[ FOOTER ]––––––––––––––– -->
        <footer id="mainFooter" class="main-footer">
            <div class="container">
                <div class="row">
                    <p>Copyright &copy; 2016 . All rights reserved.</p>
                </div>
            </div>
        </footer>
        <!-- –––––––––––––––[ END FOOTER ]––––––––––––––– -->

    </div>
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- END WRAPPER                               -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->


    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- BACK TO TOP                               -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <div id="backTop" class="back-top is-hidden-sm-down">
        <i class="fa fa-angle-up" aria-hidden="true"></i>
    </div>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- SCRIPTS                                   -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->

    <!-- (!) Placed at the end of the document so the pages load faster -->

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Initialize jQuery library                 -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script src="assets/js/jquery-1.12.3.min.js"></script>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Latest compiled and minified Bootstrap    -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- JavaScript Plugins                        -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- (!) Include all compiled plugins (below), or include individual files as needed -->

    <!-- Modernizer JS -->
    <script src="assets/vendors/modernizr/modernizr-2.6.2.min.js"></script>
    
    <!-- Owl Carousel -->
    <script type="text/javascript" src="assets/vendors/owl-carousel/owl.carousel.min.js"></script>

    <!-- FlexSlider -->
    <script type="text/javascript" src="assets/vendors/flexslider/jquery.flexslider-min.js"></script>

    <!-- Coutdown -->
    <script type="text/javascript" src="assets/vendors/countdown/jquery.countdown.js"></script>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Custom Template JavaScript                   -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script type="text/javascript" src="assets/js/main.js"></script>
</body>

</html>
