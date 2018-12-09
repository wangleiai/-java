<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<html lang="en" dir="ltr" class="no-js">


<head>

    <meta charset="utf-8">
    <!-- Always force latest IE rendering engine -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile specific meta -->
    <meta name="viewport" content="width=device-width">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


    <title>admin</title>


    <meta name="description" content="FRIDAY is a responsive multipurpose-ecommerce site template allows you to store coupons and promo codes from different brands and create store for deals, discounts, It can be used as coupon website such as groupon.com and also as online store">
    <meta name="	black friday, coupon, coupon codes, coupon theme, coupons, deal news, deals, discounts, ecommerce, friday deals, groupon, promo codes, responsive, shop, store coupons">
    <meta name="robots" content="index, follow">
    <meta name="author" content="CODASTROID">


    <link rel="apple-touch-icon" href="assets/images/favicon/apple-touch-icon.png">
    <link rel="icon" href="assets/images/favicon/favicon.ico">


    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600" rel="stylesheet">



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
	<style>
        .left {
            width: 50%;
            float:left;
            height: 334.2px;
            border: 1px solid #3B6273;
        }
        .right {
            width: 50%;
            float:left;
            height: 334.2px;
            border: 1px solid #3B6273;
        }
    </style>


</head>

<body id="body" class="wide-layout preloader-active">

    

    <noscript>
        <div class="noscript alert-error">
            For full functionality of this site it is necessary to enable JavaScript. Here are the <a href="http://www.enable-javascript.com/" target="_blank">
		 instructions how to enable JavaScript in your web browser</a>.
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
    <!-- End Preloader -->

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
                            <ul class="nav-top nav-top-right list-inline t-xs-center t-md-right"> 
                              <%--   <% if(session.getAttribute("account")==null) %>
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
                                <a href="/bookShopping/BookDelete"> 删除商品</a>
                                  
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
                                    <a href="index.html">Home</a>
                                </li>
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
            <div class="page-container pt-40 pb-60">
                <div class="container">
					<form action="/bookShopping/addBook" method="post" enctype="multipart/form-data" id="addBookForm">
						<div class="left">
							<div align="left">
								书名: <input type="text" id="bookName" name="bookName" />
								<br />
								作者: <input type="text" id="bookAuthor" name="bookAuthor" />
								<br />
								<!-- 种类: <input type="text" id="cate" name="cate" /> -->
								类型: <select id="cate" name="cate">
									<option value="0">小说</option> 
									<option value="1">文学</option> 
									<option value="2">历史</option> 
									<option value="3">传记</option> 
									<option value="4">青春</option> 
									<option value="5">励志</option> 
									<option value="6">社科</option> 
									<option value="7">心理</option> 
									<option value="8">经济</option> 
								</select>
								<br />
								价格: <input type="text" id="bookPrice" name="bookPrice" />
								<br/>
								数量: <input type="text" id="bookNum" name="bookNum" />
								<br />
								图片: <input type="file" id="bookImage" name="bookImage" />
							</div>
						</div>
						
						<!-- 这里写文本编译器 -->
						<div class="right">
							<div > 
								<!-- <input type="text" id="bookDec" name="bookDec" value="书本表述" style="width:100%;height:334.2px"/> -->
								<textarea id="bookDec" name="bookDec" value="书本描述" rows="3" cols="20" style="width:100%;height:334.2px">请填写书本描述								</textarea>
							</div> 
						</div>
						<input type="submit"  value="提交">
					</form>
					
					
                </div>
				<!-- <button type="button" name="submit" id="submit" onclick="addBook()">提交</button> -->
            </div>


        </main>
        <footer id="mainFooter" class="main-footer">
            <div class="container">
                <div class="row">
                </div>
            </div>
        </footer>
    </div>
    <div id="backTop" class="back-top is-hidden-sm-down">
        <i class="fa fa-angle-up" aria-hidden="true"></i>
    </div>

    <script src="assets/js/jquery-1.12.3.min.js"></script>

    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>


    <script src="assets/vendors/modernizr/modernizr-2.6.2.min.js"></script>
    <script type="text/javascript" src="assets/vendors/owl-carousel/owl.carousel.min.js"></script>
    <script type="text/javascript" src="assets/vendors/flexslider/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="assets/vendors/countdown/jquery.countdown.js"></script>
    <script type="text/javascript" src="assets/js/main.js"></script>
	<script type="text/javascript" src="assets/js/jquery-1.4.2.js"></script>
	<script type="text/javascript" src="https://unpkg.com/wangeditor@3.1.1/release/wangEditor.min.js"></script>
	
	<!-- <script type="text/javascript">
		function addBook(){
			var form = new FormData(document.getElementById("addBookForm"));
			alert("adf");
			$.ajax({
				url:"www.baidu.com",
				type:"post",
				data:form,
				processData:false,
                contentType:false,
				
				success:function(msg){
					alert("adsf");
				}
				error:function(msg){
					alert("error");
				}
			});
		}
	</script> -->
</body>

</html>