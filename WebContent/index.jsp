<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" errorPage="404.jsp " import="java.util.ArrayList"%>
	<%@page import="jdbcUtils.Cate"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta charset="utf-8">
<!-- Always force latest IE rendering engine -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile specific meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


<title>FRIDAY | Coupons, Deals, Discounts and Promo codes
	Template</title>


<meta name="description"
	content="FRIDAY is a responsive multipurpose-ecommerce site template allows you to store coupons and promo codes from different brands and create store for deals, discounts, It can be used as coupon website such as groupon.com and also as online store">
<meta
	name="	black friday, coupon, coupon codes, coupon theme, coupons, deal news, deals, discounts, ecommerce, friday deals, groupon, promo codes, responsive, shop, store coupons">
<meta name="robots" content="index, follow">
<meta name="author" content="CODASTROID">


<link rel="apple-touch-icon"
	href="assets/images/favicon/apple-touch-icon.png">
<link rel="icon" href="assets/images/favicon/favicon.ico">


<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600"
	rel="stylesheet">



<!-- Bootstrap -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link href="assets/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Linearicons -->
<link href="assets/vendors/linearicons/css/linearicons.css"
	rel="stylesheet">

<!-- Owl Carousel -->
<link href="assets/vendors/owl-carousel/owl.carousel.min.css"
	rel="stylesheet">
<link href="assets/vendors/owl-carousel/owl.theme.min.css"
	rel="stylesheet">

<!-- Flex Slider -->
<link href="assets/vendors/flexslider/flexslider.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="assets/css/base.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body id="body" class="wide-layout preloader-active">

	<%! 
				String path;
	%>
	<% path = request.getContextPath(); %>
	<noscript>
		<div class="noscript alert-error">
			For full functionality of this site it is necessary to enable
			JavaScript. Here are the <a href="http://www.enable-javascript.com/"
				target="_blank"> instructions how to enable JavaScript in your
				web browser</a>.
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
		<header id="mainHeader" class="main-header"> <!-- Top Bar -->
		<div class="top-bar bg-gray">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-4 is-hidden-sm-down">
						<ul class="nav-top nav-top-left list-inline t-left">
							
						</ul>
					</div>
					<div class="col-sm-12 col-md-8">
						<ul
							class="nav-top nav-top-right list-inline t-xs-center t-md-right">
							
							<%-- <% if((String)session.getAttribute("account")==null) %>
							<li><a href="signin.jsp"><i class="fa fa-lock"></i>Sign
									In</a></li>
							<% else %> --%>
							<li><i class="fa fa-lock"></i>用户名：<%=(String)session.getAttribute("account") %></li>
							<%-- <li><%=(String)session.getAttribute("account") %></li> --%>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- End Top Bar --> <!-- Header Header -->
		<div class="header-header bg-white">
			<div class="container">
				<div class="row row-rl-0 row-tb-20 row-md-cell">
					<div class="brand col-md-3 t-xs-center t-md-left valign-middle">
						<a href="#" class="logo"> <img src="assets/images/logo.png"
							alt="" width="250">
						</a>
					</div>
					<div class="header-search col-md-9">
						<div class="row row-tb-10 ">
							<div class="col-sm-8">
								<form class="search-form">
									<div class="input-group">
										<input type="text" class="form-control input-lg search-input"
											placeholder="Enter Keywork Here ..." required="required">
										<div class="input-group-btn">
											<div class="input-group">
											
												<div class="input-group-btn">
													<button type="submit"
														class="btn btn-lg btn-search btn-block">
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
									<a href="/bookShopping/shopCar"> <span class="icon lnr lnr-cart"></span>
										<div>
											<span class="cart-number">0</span>
										</div> <span class="title">Cart</span>
									</a>
								</div>
								<div class="header-wishlist ml-20">
									<a href="wishlist.jsp"> <span
										class="icon lnr lnr-heart font-30"></span> <span class="title">Wish
											List</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Header Header --> <!-- Header Menu -->
		<div class="header-menu bg-blue">
			<div class="container">
				<nav class="nav-bar">
				<div class="nav-header">
					<span class="nav-toggle" data-toggle="#header-navbar"> <i></i>
						<i></i> <i></i>
					</span>
				</div>
				<div id="header-navbar" class="nav-collapse">
					<ul class="nav-menu">
						<li class="active"><a href="index.jsp">Home</a></li>
					</ul>
				</div>

				</nav>
			</div>
		</div>
		<!-- End Header Menu --> </header>
		<!-- –––––––––––––––[ HEADER ]––––––––––––––– -->

		<!-- –––––––––––––––[ PAGE CONTENT ]––––––––––––––– -->
		<main id="mainContent" class="main-content">
		<div class="page-container ptb-10">
			<div class="container">
				<div class="section deals-header-area ptb-30">
					<div class="row row-tb-20">
						<div class="col-xs-12 col-md-4 col-lg-3">
							<aside>
							
							<ul class="nav-coupon-category panel">
							<% 
								if(session.getAttribute("cates")==null){
									
								}
								else{
									ArrayList<Cate> cates = (ArrayList)session.getAttribute("cates");
									for(int i=0;i<cates.size();i++){
							%>
								
								<li><a href="<%= request.getContextPath()+"/CateDetails?cate="+ cates.get(i).getCateId()%>"><i class="fa fa-calendar"></i><%=cates.get(i).getCateName() %><span></span></a>
								</li>
							<%
									}
								}
							%>
								
								<li class="all-cat"><a class="font-14" href="#">All
										Categories</a></li>
							</ul>
							</aside>
						</div>
						<div class="col-xs-12 col-md-8 col-lg-9">
							<div class="header-deals-slider owl-slider" data-loop="true"
								data-autoplay="true" data-autoplay-timeout="10000"
								data-smart-speed="1000" data-nav-speed="false" data-nav="true"
								data-xxs-items="1" data-xxs-nav="true" data-xs-items="1"
								data-xs-nav="true" data-sm-items="1" data-sm-nav="true"
								data-md-items="1" data-md-nav="true" data-lg-items="1"
								data-lg-nav="true">

								<div class="deal-single panel item">
									<figure
										class="deal-thumbnail embed-responsive embed-responsive-16by9"
										data-bg-img="assets/images/deals/1.jpg">
									
									</figure>
								</div>
								<div class="deal-single panel item">
									<figure
										class="deal-thumbnail embed-responsive embed-responsive-16by9"
										data-bg-img="assets/images/deals/2.jpg">
								
									</figure>
								</div>
								<div class="deal-single panel item">
									<figure
										class="deal-thumbnail embed-responsive embed-responsive-16by9"
										data-bg-img="assets/images/deals/3.jpg">
									
									</figure>
								</div>

							</div>
						</div>
					</div>
				</div>

			</div>
		</div>


		</main>
		<!-- –––––––––––––––[ END PAGE CONTENT ]––––––––––––––– -->
		<section class="footer-top-area pt-70 pb-30 pos-r bg-blue">
		<div class="row row-tb-20"></div>
	</div>
	</section>
	<!-- –––––––––––––––[ FOOTER ]––––––––––––––– -->
	<footer id="mainFooter" class="main-footer">
	<div class="container">
		<div class="row">
			<!--    <p>Copyright &copy; 2016 . All rights reserved.</p> -->
		</div>
	</div>
	</footer>
	<!-- –––––––––––––––[ END FOOTER ]––––––––––––––– -->

	</div>

	<div id="backTop" class="back-top is-hidden-sm-down">
		<i class="fa fa-angle-up" aria-hidden="true"></i>
	</div>

	
	<script src="assets/js/jquery-1.12.3.min.js"></script>

	
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>


	<!-- Modernizer JS -->
	<script src="assets/vendors/modernizr/modernizr-2.6.2.min.js"></script>

	<!-- Owl Carousel -->
	<script type="text/javascript"
		src="assets/vendors/owl-carousel/owl.carousel.min.js"></script>

	<!-- FlexSlider -->
	<script type="text/javascript"
		src="assets/vendors/flexslider/jquery.flexslider-min.js"></script>

	<!-- Coutdown -->
	<script type="text/javascript"
		src="assets/vendors/countdown/jquery.countdown.js"></script>


	<script type="text/javascript" src="assets/js/main.js"></script>
</body>
</html>