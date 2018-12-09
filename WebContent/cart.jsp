<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="jdbcUtils.*"%>
<!DOCTYPE html>

<html lang="en" dir="ltr" class="no-js">
<!--<![endif]-->

<head>

<meta charset="utf-8">
<!-- Always force latest IE rendering engine -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile specific meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>购物车</title>

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

<link href="assets/css/bootstrap.min.css" rel="stylesheet">

<link href="assets/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<link href="assets/vendors/linearicons/css/linearicons.css"
	rel="stylesheet">

<link href="assets/vendors/owl-carousel/owl.carousel.min.css"
	rel="stylesheet">
<link href="assets/vendors/owl-carousel/owl.theme.min.css"
	rel="stylesheet">

<link href="assets/vendors/flexslider/flexslider.css" rel="stylesheet">

<link href="assets/css/base.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">

</head>

<body id="body" class="wide-layout preloader-active">

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


		</header>

		<main id="mainContent" class="main-content">
		<div class="page-container">
			<div class="container">
				<div class="cart-area ptb-60">
					<div class="container">
						<div class="cart-wrapper">
							<h3 class="h-title mb-30 t-uppercase">My Cart</h3>
							<table id="cart_list" class="cart-list mb-30">
								<thead class="panel t-uppercase">
									<tr>
										<th>产品名称</th>
										<th>单价</th>
										<!-- <th>数量</th> -->
										<th>结账</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<!-- 这里用for循环 -->
									<%
										ArrayList cArrayList = (ArrayList) session.getAttribute("shopCars");
										for (int i = 0; i < cArrayList.size(); i++) {
									%>
									<tr class="panel alert">

										<td>
											<!-- <div class="media-left is-hidden-sm-down">
												<figure class="product-thumb">
													<img src="assets/images/cart/product_01.jpg" alt="product">
												</figure>
											</div> -->
											<div class="media-body valign-middle">
												<div class="type font-12">
													<span class="t-uppercase">书名 : </span>
													<%
														ArrayList<Book> arrayList = (ArrayList) session.getAttribute("books");
															Book book = arrayList.get(i);
															out.write(book.getBookName());
													%>
												</div>
											</div>
										</td>
										<td>
											<%
												ArrayList<Book> arrayList1 = (ArrayList) session.getAttribute("books");
													Book book1 = arrayList.get(i);
													out.write(book1.getBookPrice() + "");
											%>
										</td>

										<td>
											<button type="button" onclick="buy(<%=i %>)" value="结账">结账</button>
										</td>
										<td>
											<button type="button" onclick="deleteFromCar(<%=i%>)">
												<!-- <i class="fa fa-trash-o"></i> -->
												删除
											</button>
										</td>

									</tr>
									<%
										}
									%>
								</tbody>
							</table>

						</div>
					</div>
				</div>
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

	<div id="backTop" class="back-top is-hidden-sm-down">
		<i class="fa fa-angle-up" aria-hidden="true"></i>
	</div>

	<script src="assets/js/jquery-1.12.3.min.js"></script>

	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>


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
		function deleteFromCar(i) {
			/* alert(i); */
			$.ajax({
					url: "/bookShopping/DeleteFromCar",
					type: "post",
					data: {
						"index":i,
						
						},
					dataType: "json",	
					/* contentType: "application/json", */
					
					success: function (msg) {
						/* alert("ce"); */
						 var flag = msg.flag;
						if(flag=="true"){
							alert("删除成功");
							window.location.href="http://localhost:8080/bookShopping/shopCar";
							}
						else{
							alert("删除失败");
							}

					}
				}); 
		}

		function buy(i) {
			$.ajax({
				url: "/bookShopping/Buy",
				type: "post",
				data: {
					"index":i,
					},
				dataType: "json",	
				/* contentType: "application/json", */
				
				success: function (msg) {
					/* alert("ce"); */
					 var flag = msg.flag;
					if(flag=="true"){
						alert("购买成功");
						window.location.href="http://localhost:8080/bookShopping/shopCar";
						}
					else{
						alert("购买失败");
						}

				}
			}); 
		}
	</script>
</body>



</html>
