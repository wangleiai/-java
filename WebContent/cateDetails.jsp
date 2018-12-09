<%@page import="shopCar.AddToCar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*"%>
<%@ page import="jdbcUtils.*"%>
<!DOCTYPE html>

<html lang="en" dir="ltr" class="no-js">
<!--<![endif]-->

<head>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile specific meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>详情页</title>


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

</head>

<body id="body" class="wide-layout preloader-active">

	<%!String cateString = "";%>
	<%!ArrayList<String> bImages;%>
	<%
		bImages = (ArrayList<String>) session.getAttribute("bImages");
	%>
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
		<header id="mainHeader" class="main-header">

			<!-- Top Bar -->
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

								<%-- <% if(session.getAttribute("account")==null) %>
							<li><a href="signin.jsp"><i class="fa fa-lock"></i>Sign
									In</a></li>
							<% else %>
							<li><i class="fa fa-lock"></i><%=session.getAttribute("account") %></li> --%>
							<li><i class="fa fa-lock"></i>用户名：<%=(String)session.getAttribute("account") %></li>
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
										<a href="/bookShopping/shopCar"> <span
											class="icon lnr lnr-cart"></span>
											<div>
												<span class="cart-number">0</span>
											</div> <span class="title">Cart</span>
										</a>
									</div>
									<div class="header-wishlist ml-20">
										<a href="wishlist.jsp"> <span
											class="icon lnr lnr-heart font-30"></span> <span
											class="title">Wish List</span>
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
			<!-- End Header Menu -->

		</header>

		<main id="mainContent" class="main-content"> <!-- Page Container -->
		<div class="page-container ptb-60">
			<div class="container">
				<div class="row row-rl-10 row-tb-20">
					<div class="page-sidebar col-sm-4 col-md-3">
						<aside class="store-header-area panel t-center">
							<div class="row">
								<div class="col-xs-12">

									<p>
										<%
											if (request.getAttribute("cateDetails") == null) {
												out.write("暂时没有内容");
												out.write("</br>");

												/* 	<font color="#FF0000">www.divcss5.com 设置文本颜色</font> */
											}

											else {
												ArrayList<Book> arrayList = (ArrayList) request.getAttribute("cateDetails");
												ArrayList<Cate> cates = (ArrayList) session.getAttribute("cates");
												if (arrayList.size() != 0) {
													String cateName = "";
													String cateDec = "";
													String cateId = arrayList.get(0).getCateId();
													cateString = cateId;
													for (int i = 0; i < cates.size(); i++) {
														if (cateId.equals(cates.get(i).getCateId())) {
															cateName = cates.get(i).getCateName();
															cateDec = cates.get(i).getCateDec();
														}
													}
													out.write(cateName);
													out.write("<br>");
													out.write("描述：" + cateDec);
												} else {
													out.write("暂时没有内容");
													out.write("</br>");
												}
											}
											/* out.write(request.getAttribute("cateDetails") + "   aa"); */
										%>
									</p>
								</div>
								<div class="col-xs-12"></div>
								<div class="col-xs-12">
									<div class="store-splitter-left"></div>
								</div>
							</div>
						</aside>
					</div>
					<div class="page-content col-sm-8 col-md-9">

						<!-- Store Tabs Area -->
						<div class="section store-tabs-area">
							<div class="tabs tabs-v1">


								<!-- Tab panes -->
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane ptb-20 active" id="deals">
										<section class="section deals-area">
											<div class="row row-masnory row-tb-20">
												<%
													ArrayList<Book> arrayList = (ArrayList) request.getAttribute("cateDetails");
													for (int i = 0; i < arrayList.size(); i++) {
												%>
												<div class="col-sm-12 col-lg-6">
													<div class="deal-single panel">
														<!-- <figure
															class="deal-thumbnail embed-responsive embed-responsive-16by9"
															data-bg-img="assets/images/deals/deal_01.jpg">

														</figure>  -->

														<figure
															class="deal-thumbnail embed-responsive embed-responsive-16by9"
															data-bg-img="<%=bImages.get(i)%>"
															onclick="window.location.href='http://localhost:8080/bookShopping/Comment?bookId=<%=arrayList.get(i).getBookId()%>'">
															<!-- 这里用get 方法跳转 -->

														</figure>

														<div class="bg-white pt-20 pl-20 pr-15">
															<div class="pr-md-10">
																<!-- 这里加入自己定义的内容 -->
																<h3 class="deal-title mb-10">
																	<%=arrayList.get(i).getBookName()%>
																</h3>
																<ul class="deal-meta list-inline mb-10 color-mid">
																	<li>作者: <%=arrayList.get(i).getBookAuthor()%></li>
																	</br>
																	<li id=<%="k" + i%>>库存: <%=arrayList.get(i).getBookSurplus()%></li>
																	</br>
																	<li id=<%="x" + i%>>销量：<%=arrayList.get(i).getBookSaled()%></li>
																</ul>

															</div>
															<div class="deal-price pos-r mb-15">
																价格:$<%=arrayList.get(i).getBookPrice()%>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																<button type="button" value="加入购物车"
																	onclick=<%="addToCar(" + i + ")"%>>加入购物车</button>

															</div>
														</div>
													</div>
												</div>

												<%
													}
												%>
												
												<!-- <figure
															class="deal-thumbnail embed-responsive embed-responsive-16by9"
															data-bg-img="http://localhost:8080/bookShopping/upload/e062667c97a84a1d8058a3426ad5bce1.jpg">

														</figure> 
												dsf -->
												
											</div>
										</section>
									</div>
									<div role="tabpanel" class="tab-pane ptb-20" id="coupons">
										<section class="section coupons-area coupons-area-grid">
											<div class="row row-masnory row-tb-20">
												<div class="col-sm-6">
													<div class="coupon-single panel t-center">
														<div class="row">
															<div class="col-xs-12">
																<div class="text-center p-20">
																	<img class="store-logo"
																		src="assets/images/coupons/coupon_07.jpg" alt="">
																</div>
																<!-- end media -->
															</div>
															<!-- end col -->

															<div class="col-xs-12">
																<div class="panel-body">
																	<ul class="deal-meta list-inline mb-10">
																		<li class="color-green"><i
																			class="ico lnr lnr-smile mr-5"></i>Verifed</li>
																		<li class="color-muted"><i
																			class="ico lnr lnr-users mr-5"></i>125 Used</li>
																	</ul>
																	<h4 class="color-green mb-10 t-uppercase">10% OFF</h4>
																	<h5 class="deal-title mb-10">
																		<a href="#">10% off select XPS & Alienware laptops</a>
																	</h5>
																	<p class="mb-15 color-muted mb-20 font-12">
																		<i class="lnr lnr-clock mr-10"></i>Expires On
																		01/01/2018
																	</p>
																	<div class="showcode">
																		<button class="show-code btn btn-sm btn-block"
																			data-toggle="modal" data-target="#coupon_07">Get
																			Coupon Code</button>
																		<div class="coupon-hide">X455-17GT-OL58</div>
																	</div>
																</div>
															</div>
															<!-- end col -->
														</div>
														<!-- end row -->
													</div>

													<div class="modal fade get-coupon-area" tabindex="-1"
														role="dialog" id="coupon_07">
														<div class="modal-dialog">
															<div class="modal-content panel">
																<div class="modal-body">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">&times;</span>
																	</button>
																	<div class="row row-v-10">
																		<div class="col-md-10 col-md-offset-1">
																			<img src="assets/images/brands/store_logo.jpg" alt="">
																			<h3 class="mb-20">Save 30% off New Domains Names</h3>
																			<p class="color-mid">Not applicable to ICANN
																				fees, taxes, transfers,or gift cards. Cannot be used
																				in conjunction with any other offer, sale, discount
																				or promotion. After the initial purchase term.</p>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<a href="#" class="btn btn-link">Visit Our Store</a>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<h6 class="color-mid t-uppercase">Click below to
																				get your coupon code</h6>
																			<a href="#" target="_blank" class="coupon-code">X455-17GT-OL58</a>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<div class="like-report mb-10">
																				<span>Share this coupon :</span>
																				<ul
																					class="list-inline social-icons social-icons--colored mt-10">
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-facebook"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-twitter"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-google-plus"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-linkedin"></i></a></li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div
																	class="modal-footer footer-info t-center ptb-40 prl-30">
																	<h4 class="mb-15">Subscribe to Mail</h4>
																	<p class="color-mid mb-20">Get our Daily email
																		newsletter with Special Services, Updates, Offers and
																		more!</p>
																	<form method="post" action="#">
																		<div class="input-group">
																			<input type="text" class="form-control bg-white"
																				placeholder="Your Email Address" required="required">
																			<span class="input-group-btn">
																				<button class="btn" type="submit">Sign Up</button>
																			</span>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="coupon-single panel t-center">
														<div class="row">
															<div class="col-xs-12">
																<div class="text-center p-20">
																	<img class="store-logo"
																		src="assets/images/coupons/coupon_08.jpg" alt="">
																</div>
																<!-- end media -->
															</div>
															<!-- end col -->

															<div class="col-xs-12">
																<div class="panel-body">
																	<ul class="deal-meta list-inline mb-10">
																		<li class="color-muted"><i
																			class="ico fa fa-map-marker mr-5"></i>California</li>
																		<li class="color-muted"><i
																			class="ico lnr lnr-users mr-5"></i>13 Used</li>
																	</ul>
																	<h4 class="color-green mb-10 t-uppercase">15% OFF</h4>
																	<h5 class="deal-title mb-10">
																		<a href="#">15% off 2 select Amazon Fire cases</a>
																	</h5>
																	<p class="mb-15 color-muted mb-20 font-12">
																		<i class="lnr lnr-clock mr-10"></i>Expires On
																		05/02/2018
																	</p>
																	<div class="showcode">
																		<button class="show-code btn btn-sm btn-block"
																			data-toggle="modal" data-target="#coupon_08">Show
																			Code</button>
																		<div class="coupon-hide">X455-17GT-OL58</div>
																	</div>
																</div>
															</div>
															<!-- end col -->
														</div>
														<!-- end row -->
													</div>

													<div class="modal fade get-coupon-area" tabindex="-1"
														role="dialog" id="coupon_08">
														<div class="modal-dialog">
															<div class="modal-content panel">
																<div class="modal-body">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">&times;</span>
																	</button>
																	<div class="row row-v-10">
																		<div class="col-md-10 col-md-offset-1">
																			<img src="assets/images/brands/store_logo.jpg" alt="">
																			<h3 class="mb-20">Save 30% off New Domains Names</h3>
																			<p class="color-mid">Not applicable to ICANN
																				fees, taxes, transfers,or gift cards. Cannot be used
																				in conjunction with any other offer, sale, discount
																				or promotion. After the initial purchase term.</p>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<a href="#" class="btn btn-link">Visit Our Store</a>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<h6 class="color-mid t-uppercase">Click below to
																				get your coupon code</h6>
																			<a href="#" target="_blank" class="coupon-code">X455-17GT-OL58</a>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<div class="like-report mb-10">
																				<span>Share this coupon :</span>
																				<ul
																					class="list-inline social-icons social-icons--colored mt-10">
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-facebook"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-twitter"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-google-plus"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-linkedin"></i></a></li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div
																	class="modal-footer footer-info t-center ptb-40 prl-30">
																	<h4 class="mb-15">Subscribe to Mail</h4>
																	<p class="color-mid mb-20">Get our Daily email
																		newsletter with Special Services, Updates, Offers and
																		more!</p>
																	<form method="post" action="#">
																		<div class="input-group">
																			<input type="text" class="form-control bg-white"
																				placeholder="Your Email Address" required="required">
																			<span class="input-group-btn">
																				<button class="btn" type="submit">Sign Up</button>
																			</span>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="coupon-single panel t-center">
														<div class="row">
															<div class="col-xs-12">
																<div class="text-center p-20">
																	<img class="store-logo"
																		src="assets/images/coupons/coupon_09.jpg" alt="">
																</div>
																<!-- end media -->
															</div>
															<!-- end col -->

															<div class="col-xs-12">
																<div class="panel-body">
																	<ul class="deal-meta list-inline mb-10">
																		<li class="color-muted"><i
																			class="ico fa fa-tag mr-5"></i>Coupon</li>
																		<li class="color-muted"><i
																			class="ico lnr lnr-users mr-5"></i>425 Used</li>
																	</ul>
																	<h4 class="color-green mb-10 t-uppercase">20% OFF</h4>
																	<h5 class="deal-title mb-10">
																		<a href="#">Flat 40% off hotel bookings in 10
																			cities</a>
																	</h5>
																	<p class="mb-15 color-muted mb-20 font-12">
																		<i class="lnr lnr-clock mr-10"></i>Expires On
																		15/01/2018
																	</p>
																	<div class="showcode">
																		<button class="show-code btn btn-sm btn-block"
																			data-toggle="modal" data-target="#coupon_09">See
																			Sale</button>
																		<div class="coupon-hide">X455-17GT-OL58</div>
																	</div>
																</div>
															</div>
															<!-- end col -->
														</div>
														<!-- end row -->
													</div>

													<div class="modal fade get-coupon-area" tabindex="-1"
														role="dialog" id="coupon_09">
														<div class="modal-dialog">
															<div class="modal-content panel">
																<div class="modal-body">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">&times;</span>
																	</button>
																	<div class="row row-v-10">
																		<div class="col-md-10 col-md-offset-1">
																			<img src="assets/images/brands/store_logo.jpg" alt="">
																			<h3 class="mb-20">Save 30% off New Domains Names</h3>
																			<p class="color-mid">Not applicable to ICANN
																				fees, taxes, transfers,or gift cards. Cannot be used
																				in conjunction with any other offer, sale, discount
																				or promotion. After the initial purchase term.</p>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<a href="#" class="btn btn-link">Visit Our Store</a>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<h6 class="color-mid t-uppercase">Click below to
																				get your coupon code</h6>
																			<a href="#" target="_blank" class="coupon-code">X455-17GT-OL58</a>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<div class="like-report mb-10">
																				<span>Share this coupon :</span>
																				<ul
																					class="list-inline social-icons social-icons--colored mt-10">
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-facebook"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-twitter"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-google-plus"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-linkedin"></i></a></li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div
																	class="modal-footer footer-info t-center ptb-40 prl-30">
																	<h4 class="mb-15">Subscribe to Mail</h4>
																	<p class="color-mid mb-20">Get our Daily email
																		newsletter with Special Services, Updates, Offers and
																		more!</p>
																	<form method="post" action="#">
																		<div class="input-group">
																			<input type="text" class="form-control bg-white"
																				placeholder="Your Email Address" required="required">
																			<span class="input-group-btn">
																				<button class="btn" type="submit">Sign Up</button>
																			</span>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="coupon-single panel t-center">
														<div class="row">
															<div class="col-xs-12">
																<div class="text-center p-20">
																	<img class="store-logo"
																		src="assets/images/coupons/coupon_10.jpg" alt="">
																</div>
																<!-- end media -->
															</div>
															<!-- end col -->

															<div class="col-xs-12">
																<div class="panel-body">
																	<ul class="deal-meta list-inline mb-10">
																		<li class="color-green"><i
																			class="ico lnr lnr-smile mr-5"></i>Verifed</li>
																		<li class="color-muted"><i
																			class="ico lnr lnr-users mr-5"></i>230 Used</li>
																	</ul>
																	<h4 class="color-green mb-10 t-uppercase">30% OFF</h4>
																	<h5 class="deal-title mb-10">
																		<a href="#">There is no place like home 25% off</a>
																	</h5>
																	<p class="mb-15 color-muted mb-20 font-12">
																		<i class="lnr lnr-clock mr-10"></i>Expires On
																		02/03/2018
																	</p>
																	<div class="showcode">
																		<button class="show-code btn btn-sm btn-block"
																			data-toggle="modal" data-target="#coupon_10">Print
																			Code</button>
																		<div class="coupon-hide">X455-17GT-OL58</div>
																	</div>
																</div>
															</div>
															<!-- end col -->
														</div>
														<!-- end row -->
													</div>

													<div class="modal fade get-coupon-area" tabindex="-1"
														role="dialog" id="coupon_10">
														<div class="modal-dialog">
															<div class="modal-content panel">
																<div class="modal-body">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">&times;</span>
																	</button>
																	<div class="row row-v-10">
																		<div class="col-md-10 col-md-offset-1">
																			<img src="assets/images/brands/store_logo.jpg" alt="">
																			<h3 class="mb-20">Save 30% off New Domains Names</h3>
																			<p class="color-mid">Not applicable to ICANN
																				fees, taxes, transfers,or gift cards. Cannot be used
																				in conjunction with any other offer, sale, discount
																				or promotion. After the initial purchase term.</p>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<a href="#" class="btn btn-link">Visit Our Store</a>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<h6 class="color-mid t-uppercase">Click below to
																				get your coupon code</h6>
																			<a href="#" target="_blank" class="coupon-code">X455-17GT-OL58</a>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<div class="like-report mb-10">
																				<span>Share this coupon :</span>
																				<ul
																					class="list-inline social-icons social-icons--colored mt-10">
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-facebook"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-twitter"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-google-plus"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-linkedin"></i></a></li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div
																	class="modal-footer footer-info t-center ptb-40 prl-30">
																	<h4 class="mb-15">Subscribe to Mail</h4>
																	<p class="color-mid mb-20">Get our Daily email
																		newsletter with Special Services, Updates, Offers and
																		more!</p>
																	<form method="post" action="#">
																		<div class="input-group">
																			<input type="text" class="form-control bg-white"
																				placeholder="Your Email Address" required="required">
																			<span class="input-group-btn">
																				<button class="btn" type="submit">Sign Up</button>
																			</span>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="coupon-single panel t-center">
														<div class="row">
															<div class="col-xs-12">
																<div class="text-center p-20">
																	<img class="store-logo"
																		src="assets/images/coupons/coupon_11.jpg" alt="">
																</div>
																<!-- end media -->
															</div>
															<!-- end col -->

															<div class="col-xs-12">
																<div class="panel-body">
																	<ul class="deal-meta list-inline mb-10">
																		<li class="color-muted"><i
																			class="ico fa fa-tag mr-5"></i>Coupon</li>
																		<li class="color-muted"><i
																			class="ico lnr lnr-users mr-5"></i>86 Used</li>
																	</ul>
																	<h4 class="color-green mb-10 t-uppercase">10% OFF</h4>
																	<h5 class="deal-title mb-10">
																		<a href="#">10% off $399+ refurbished laptops</a>
																	</h5>
																	<p class="mb-15 color-muted mb-20 font-12">
																		<i class="lnr lnr-clock mr-10"></i>Expires On
																		20/02/2018
																	</p>
																	<div class="showcode">
																		<button class="show-code btn btn-sm btn-block"
																			data-toggle="modal" data-target="#coupon_11">Show
																			Code</button>
																		<div class="coupon-hide">X455-17GT-OL58</div>
																	</div>
																</div>
															</div>
															<!-- end col -->
														</div>
														<!-- end row -->
													</div>

													<div class="modal fade get-coupon-area" tabindex="-1"
														role="dialog" id="coupon_11">
														<div class="modal-dialog">
															<div class="modal-content panel">
																<div class="modal-body">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">&times;</span>
																	</button>
																	<div class="row row-v-10">
																		<div class="col-md-10 col-md-offset-1">
																			<img src="assets/images/brands/store_logo.jpg" alt="">
																			<h3 class="mb-20">Save 30% off New Domains Names</h3>
																			<p class="color-mid">Not applicable to ICANN
																				fees, taxes, transfers,or gift cards. Cannot be used
																				in conjunction with any other offer, sale, discount
																				or promotion. After the initial purchase term.</p>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<a href="#" class="btn btn-link">Visit Our Store</a>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<h6 class="color-mid t-uppercase">Click below to
																				get your coupon code</h6>
																			<a href="#" target="_blank" class="coupon-code">X455-17GT-OL58</a>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<div class="like-report mb-10">
																				<span>Share this coupon :</span>
																				<ul
																					class="list-inline social-icons social-icons--colored mt-10">
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-facebook"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-twitter"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-google-plus"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-linkedin"></i></a></li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div
																	class="modal-footer footer-info t-center ptb-40 prl-30">
																	<h4 class="mb-15">Subscribe to Mail</h4>
																	<p class="color-mid mb-20">Get our Daily email
																		newsletter with Special Services, Updates, Offers and
																		more!</p>
																	<form method="post" action="#">
																		<div class="input-group">
																			<input type="text" class="form-control bg-white"
																				placeholder="Your Email Address" required="required">
																			<span class="input-group-btn">
																				<button class="btn" type="submit">Sign Up</button>
																			</span>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="coupon-single panel t-center">
														<div class="row">
															<div class="col-xs-12">
																<div class="text-center p-20">
																	<img class="store-logo"
																		src="assets/images/coupons/coupon_12.jpg" alt="">
																</div>
																<!-- end media -->
															</div>
															<!-- end col -->

															<div class="col-xs-12">
																<div class="panel-body">
																	<ul class="deal-meta list-inline mb-10">
																		<li class="color-green"><i
																			class="ico lnr lnr-smile mr-5"></i>Verifed</li>
																		<li class="color-muted"><i
																			class="ico lnr lnr-users mr-5"></i>24 Used</li>
																	</ul>
																	<h4 class="color-green mb-10 t-uppercase">25% OFF</h4>
																	<h5 class="deal-title mb-10">
																		<a href="#">There is no place like home 25% off</a>
																	</h5>
																	<p class="mb-15 color-muted mb-20 font-12">
																		<i class="lnr lnr-clock mr-10"></i>Expires On
																		14/01/2018
																	</p>
																	<div class="showcode">
																		<button class="show-code btn btn-sm btn-block"
																			data-toggle="modal" data-target="#coupon_12">Show
																			Coupon</button>
																		<div class="coupon-hide">X455-17GT-OL58</div>
																	</div>
																</div>
															</div>
															<!-- end col -->
														</div>
														<!-- end row -->
													</div>

													<div class="modal fade get-coupon-area" tabindex="-1"
														role="dialog" id="coupon_12">
														<div class="modal-dialog">
															<div class="modal-content panel">
																<div class="modal-body">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">&times;</span>
																	</button>
																	<div class="row row-v-10">
																		<div class="col-md-10 col-md-offset-1">
																			<img src="assets/images/brands/store_logo.jpg" alt="">
																			<h3 class="mb-20">Save 30% off New Domains Names</h3>
																			<p class="color-mid">Not applicable to ICANN
																				fees, taxes, transfers,or gift cards. Cannot be used
																				in conjunction with any other offer, sale, discount
																				or promotion. After the initial purchase term.</p>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<a href="#" class="btn btn-link">Visit Our Store</a>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<h6 class="color-mid t-uppercase">Click below to
																				get your coupon code</h6>
																			<a href="#" target="_blank" class="coupon-code">X455-17GT-OL58</a>
																		</div>
																		<div class="col-md-10 col-md-offset-1">
																			<div class="like-report mb-10">
																				<span>Share this coupon :</span>
																				<ul
																					class="list-inline social-icons social-icons--colored mt-10">
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-facebook"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-twitter"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-google-plus"></i></a></li>
																					<li class="social-icons__item"><a href="#"><i
																							class="fa fa-linkedin"></i></a></li>
																				</ul>
																			</div>
																		</div>
																	</div>
																</div>
																<div
																	class="modal-footer footer-info t-center ptb-40 prl-30">
																	<h4 class="mb-15">Subscribe to Mail</h4>
																	<p class="color-mid mb-20">Get our Daily email
																		newsletter with Special Services, Updates, Offers and
																		more!</p>
																	<form method="post" action="#">
																		<div class="input-group">
																			<input type="text" class="form-control bg-white"
																				placeholder="Your Email Address" required="required">
																			<span class="input-group-btn">
																				<button class="btn" type="submit">Sign Up</button>
																			</span>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!-- Page Pagination -->
											<div class="page-pagination text-center mt-30 p-10 panel">
												<nav>
													<!-- Page Pagination -->
													<ul class="page-pagination">
														<li><a class="page-numbers previous" href="#">Previous</a>
														</li>
														<li><a href="#" class="page-numbers">1</a></li>
														<li><span class="page-numbers current">2</span></li>
														<li><a href="#" class="page-numbers">3</a></li>
														<li><a href="#" class="page-numbers">4</a></li>
														<li><span class="page-numbers dots">...</span></li>
														<li><a href="#" class="page-numbers">20</a></li>
														<li><a href="#" class="page-numbers next">Next</a></li>
													</ul>
													<!-- End Page Pagination -->
												</nav>
											</div>
											<!-- End Page Pagination -->
										</section>
									</div>
									<div role="tabpanel" class="tab-pane ptb-20" id="reviews">
										<div class="posted-review panel p-30">
											<h3 class="h-title">16 Review</h3>
											<div class="review-single pt-30">
												<div class="media">
													<div class="media-left">
														<img class="media-object mr-10 radius-4"
															src="assets/images/avatars/avatar_01.jpg" width="90"
															alt="">
													</div>
													<div class="media-body">
														<div class="review-wrapper clearfix">
															<ul class="list-inline">
																<li><span class="review-holder-name h5">John
																		Doe</span></li>
																<li>
																	<div class="rating">
																		<span class="rating-stars" data-rating="5"> <i
																			class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																			<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																			<i class="fa fa-star-o"></i>
																		</span>
																	</div>
																</li>
															</ul>
															<p class="review-date mb-5">September 9, 2016</p>
															<p class="copy">Ut velit mauris, egestas sed, gravida
																nec, ornare ut, mi. Aenean ut orci vel massa suscipit
																pulvinar. Nulla sollicitudin. Fusce varius, ligula non
																tempus aliquam.</p>
														</div>
													</div>
												</div>
											</div>
											<div class="review-single pt-30">
												<div class="media">
													<div class="media-left">
														<img class="media-object mr-10 radius-4"
															src="assets/images/avatars/avatar_02.jpg" width="90"
															alt="">
													</div>
													<div class="media-body">
														<div class="review-wrapper clearfix">
															<ul class="list-inline">
																<li><span class="review-holder-name h5">John
																		Doe</span></li>
																<li>
																	<div class="rating">
																		<span class="rating-stars" data-rating="2"> <i
																			class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																			<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																			<i class="fa fa-star-o"></i>
																		</span>
																	</div>
																</li>
															</ul>
															<p class="review-date mb-5">September 9, 2016</p>
															<p class="copy">Ut velit mauris, egestas sed, gravida
																nec, ornare ut, mi. Aenean ut orci vel massa suscipit
																pulvinar. Nulla sollicitudin. Fusce varius, ligula non
																tempus aliquam.</p>
														</div>
													</div>
												</div>
											</div>
											<div class="review-single pt-30">
												<div class="media">
													<div class="media-left">
														<img class="media-object mr-10 radius-4"
															src="assets/images/avatars/avatar_03.jpg" width="90"
															alt="">
													</div>
													<div class="media-body">
														<div class="review-wrapper clearfix">
															<ul class="list-inline">
																<li><span class="review-holder-name h5">John
																		Doe</span></li>
																<li>
																	<div class="rating">
																		<span class="rating-stars" data-rating="3"> <i
																			class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																			<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																			<i class="fa fa-star-o"></i>
																		</span>
																	</div>
																</li>
															</ul>
															<p class="review-date mb-5">September 9, 2016</p>
															<p class="copy">Ut velit mauris, egestas sed, gravida
																nec, ornare ut, mi. Aenean ut orci vel massa suscipit
																pulvinar. Nulla sollicitudin. Fusce varius, ligula non
																tempus aliquam.</p>
														</div>
													</div>
												</div>
											</div>
											<div class="review-single pt-30">
												<div class="media">
													<div class="media-left">
														<img class="media-object mr-10 radius-4"
															src="assets/images/avatars/avatar_04.jpg" width="90"
															alt="">
													</div>
													<div class="media-body">
														<div class="review-wrapper clearfix">
															<ul class="list-inline">
																<li><span class="review-holder-name h5">John
																		Doe</span></li>
																<li>
																	<div class="rating">
																		<span class="rating-stars" data-rating="4"> <i
																			class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																			<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																			<i class="fa fa-star-o"></i>
																		</span>
																	</div>
																</li>
															</ul>
															<p class="review-date mb-5">September 9, 2016</p>
															<p class="copy">Ut velit mauris, egestas sed, gravida
																nec, ornare ut, mi. Aenean ut orci vel massa suscipit
																pulvinar. Nulla sollicitudin. Fusce varius, ligula non
																tempus aliquam.</p>
														</div>
													</div>
												</div>
											</div>
											<div class="review-single pt-30">
												<div class="media">
													<div class="media-left">
														<img class="media-object mr-10 radius-4"
															src="assets/images/avatars/avatar_05.jpg" width="90"
															alt="">
													</div>
													<div class="media-body">
														<div class="review-wrapper clearfix">
															<ul class="list-inline">
																<li><span class="review-holder-name h5">John
																		Doe</span></li>
																<li>
																	<div class="rating">
																		<span class="rating-stars" data-rating="5"> <i
																			class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																			<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																			<i class="fa fa-star-o"></i>
																		</span>
																	</div>
																</li>
															</ul>
															<p class="review-date mb-5">September 9, 2016</p>
															<p class="copy">Ut velit mauris, egestas sed, gravida
																nec, ornare ut, mi. Aenean ut orci vel massa suscipit
																pulvinar. Nulla sollicitudin. Fusce varius, ligula non
																tempus aliquam.</p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Store Tabs Area -->

					</div>
				</div>
			</div>
		</div>
		<!-- End Page Container --> </main>

		<footer id="mainFooter" class="main-footer">
			<div class="container">
				<div class="row">
					<!-- <p>
					<img alt="" src="http://localhost:8080/bookShopping/upload/e062667c97a84a1d8058a3426ad5bce1.jpg">
					</p> -->
				</div>
			</div>
		</footer>

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
	<script type="text/javascript" src="assets/js/jquery-1.4.2.js"></script>
	<script type="text/javascript">
		function addToCar(i) {
			/* alert(i); */
			$.ajax({
					
					url: "/bookShopping/AddToCar",
					type: "post",
					data: {
						"index":i,
						"cateId":<%=cateString%>, 
						
						},
					dataType: "json",	
					/* contentType: "application/json", */
					
					success: function (msg) {
						var flag = msg.flag;
						if(flag=="true"){
							alert("加入购物车成功");
<%-- 							obj = document.getElementById("k"+i.toString());
							obj.innerHTML("库存: " + <%= arrayList.get(int()).getBookSurplus()%>); --%>
							window.location.href="http://localhost:8080/bookShopping/CateDetails?cate=<%=arrayList.get(0).getCateId()%>";
							}
						else{
							alert("加入购物车失败");
							}

					},
					error: function (er) {
						alert("加入购物车失败2");
					}
				}); 
		}
	</script>

</body>

</html>
