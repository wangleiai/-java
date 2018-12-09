<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="jdbcUtils.*, jdbc.*"%>
<!DOCTYPE html>

<html lang="en" dir="ltr" class="no-js">
<!--<![endif]-->

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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

	<%!ArrayList<Comment> cArrayList;%>
	<%
		cArrayList = (ArrayList) session.getAttribute("comment");
	%>
	<noscript>
		<div class="noscript alert-error">
			For full functionality of this site it is necessary to enable
			JavaScript. Here are the <a href="http://www.enable-javascript.com/"
				target="_blank"> instructions how to enable JavaScript in your
				web browser</a>.
		</div>
	</noscript>

	<!-- Preloader -->
	<div id="preloader" class="preloader">
		<div class="loader-cube">
			<div class="loader-cube__item1 loader-cube__item"></div>
			<div class="loader-cube__item2 loader-cube__item"></div>
			<div class="loader-cube__item4 loader-cube__item"></div>
			<div class="loader-cube__item3 loader-cube__item"></div>
		</div>
	</div>
	<div id="pageWrapper" class="page-wrapper">
		<header id="mainHeader" class="main-header">
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
										<a href="cart.jsp"> <span class="icon lnr lnr-cart"></span>
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
		<!-- –––––––––––––––[ HEADER ]––––––––––––––– -->

		<!-- –––––––––––––––[ PAGE CONTENT ]––––––––––––––– -->
		<main id="mainContent" class="main-content">
		<div class="page-container ptb-60">
			<div class="container" id="commentList">


				<!-- // 这里写循环 -->
				<%!int i = 0;%>
				<%-- <% out.write(cArrayList + ""); %> --%>
				<%
					for (i = 0; i < cArrayList.size(); i++) {
				%>
				<section class="sign-area panel p-40">
					<!-- 这里写for循环 -->

					<nobr>
						<p><%=cArrayList.get(i).getUserId()%>:
						</p>
					</nobr>
					<div class="row row-rl-0"
						style="width: 1000px; border: 1px solid #F00">
						<%=cArrayList.get(i).getCommentContent()%>
					</div>
					<br />
					<!-- 写评论表单 -->

				</section>

				<br />
				<%
					}
				%>

			</div>

			<div class="container" id="cm">
				<!-- <form action="" method="post"> -->
				<input type="text" id="commentInput" name="" placeholder="请写评价"
					style="width: 1000px; pos-height: grey; height: 50px;" /> <br />
				<button type="button" onclick="addComment();">提交</button>
				<!-- </form>  -->
			</div>

		</div>


		</main>
		<!-- –––––––––––––––[ END PAGE CONTENT ]––––––––––––––– -->
		<section class="footer-top-area pt-70 pb-30 pos-r bg-blue">
			<div class="container"></div>
		</section>
		<!-- –––––––––––––––[ FOOTER ]––––––––––––––– -->
		<footer id="mainFooter" class="main-footer">
			<div class="container">
				<div class="row"></div>
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

	<script type="text/javascript"
		src="assets/vendors/owl-carousel/owl.carousel.min.js"></script>

	<!-- FlexSlider -->
	<script type="text/javascript"
		src="assets/vendors/flexslider/jquery.flexslider-min.js"></script>

	<script type="text/javascript"
		src="assets/vendors/countdown/jquery.countdown.js"></script>

	<script type="text/javascript" src="assets/js/main.js"></script>

	<script type="text/javascript" src="assets/js/jquery-1.4.2.js"></script>
	<script type="text/javascript">
		function addComment() {
			<%-- alert(<%=session.getAttribute("bookId")%>); --%>
			var input=document.getElementById("commentInput");
			$.ajax({
					
					url: "/bookShopping/AddComment",
					type: "post",
					data: {
						"bookId":"<%=session.getAttribute("bookId")%>",
					"commentContent" : input.value,
				},
				dataType : "json",
				/* contentType: "application/json", */

				success : function(msg) {
					var flag = msg.flag;
					/* alert(flag); */
					if (flag == "true") {
						alert("评论成功");
						<%-- alert("http://localhost:8080/bookShopping/Comment?bookId=<%=session.getAttribute("bookId")%>"); --%>
						window.location.href="http://localhost:8080/bookShopping/Comment?bookId=<%=session.getAttribute("bookId")%>";
						
					} else {
						alert("评论失败");
					}

				},
				error : function(er) {
					alert("评论失败2");
				}
			});
		}
	</script>

</body>

</html>
