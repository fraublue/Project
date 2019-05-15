<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<!--[if IE 8]><html class="ie ie8"> <![endif]-->
	<!--[if IE 9]><html class="ie ie9"> <![endif]-->
	<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords" content="template, tour template, city tours, city tour, tours tickets, transfers, travel, travel template" />
		<meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
		<meta name="author" content="Ansonika">
		<title>CITY TOURS - City tours and travel site template by Ansonika</title>
		
		<!-- Favicons-->
		<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
		<link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
		<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
		<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
		<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">
	
		<!-- CSS -->
		<link href="css/base.css" rel="stylesheet">
		
		<!-- CSS -->
		<link href="css/flickity.css" rel="stylesheet">
		
		<!-- Google web fonts -->
	   <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	   <link href='http://fonts.googleapis.com/css?family=Gochi+Hand' rel='stylesheet' type='text/css'>
	   <link href='http://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'>
		
		<!--[if lt IE 9]>
		  <script src="js/html5shiv.min.js"></script>
		  <script src="js/respond.min.js"></script>
		<![endif]-->
		
		<!-- 유효성검사 -->
		<script language="javascript">
		
		function validate() {
			var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
			var id = document.getElementById("id");
		    var pw = document.getElementById("pw");
		    
		       if(id.value=="") {
		           alert("ID를 입력해 주세요");
		           id.focus();
		           return false;
		       }

		       if(pw.value=="") {
		           alert("PASSWORD를 입력해 주세요");
		           pw.focus();
		           return false;
		       }
		       
		     
		}
		       
 		   function check(re, what, message) {
		       if(re.test(what.value)) {
		           return true;
		       }
		       alert(message);
		       what.value = "";
		       what.focus();
		       //return false;
		   } 
		</script>	
	</head>
	<body>
	
	<!--[if lte IE 8]>
		<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
	<![endif]-->
		<div id="preloader">
			<div class="sk-spinner sk-spinner-wave">
				<div class="sk-rect1"></div>
				<div class="sk-rect2"></div>
				<div class="sk-rect3"></div>
				<div class="sk-rect4"></div>
				<div class="sk-rect5"></div>
			</div>
		</div>
		<!-- End Preload -->
	
		<div class="layer"></div>
		<!-- Mobile menu overlay mask -->
	
		<!-- Header================================================== -->
		<header>
			<div id="top_line">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-6"><i class="icon-phone"></i><strong>0045 043204434</strong></div>
						
						<div class="col-md-6 col-sm-6 col-xs-6">
							<ul id="top_links">
								<li>
									<div class="dropdown dropdown-access">
										<a href="loginForm.jsp" class="dropdown-toggle" data-toggle="dropdown" id="access_link">Sign in</a>
										
									</div><!-- End Dropdown access -->
								</li>
								<li><a href="wishlist.html" id="wishlist_link">Wishlist</a></li>
							</ul>
						</div>
					</div><!-- End row -->
				</div><!-- End container-->
			</div><!-- End top line-->
			
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-3 col-xs-3">
						<div id="logo">
							<a href="index.html"><img src="img/logo.png" width="160" height="34" alt="City tours" data-retina="true" class="logo_normal"></a>
							<a href="index.html"><img src="img/logo_sticky.png" width="160" height="34" alt="City tours" data-retina="true" class="logo_sticky"></a>
						</div>
					</div>
					<nav class="col-md-9 col-sm-9 col-xs-9">
						<a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
						<div class="main-menu">
							<div id="header_menu">
								<img src="img/logo_sticky.png" width="160" height="34" alt="City tours" data-retina="true">
							</div>
							<a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
							<ul>
								<li class="submenu">
									<a href="javascript:void(0);" class="show-submenu">Home <i class="icon-down-open-mini"></i></a>
									<ul>
										<li><a href="index.html">With Hotels and Tours</a></li>
										<li><a href="index_2.html">With Only tours</a></li>
										<li><a href="index_3.html">Single image</a></li>
										<li><a href="index_4.html">Header video</a></li>
										<li><a href="index_7.html">With search panel</a></li>
										<li><a href="index_5.html">With map</a></li>
										<li><a href="index_6.html">With search bar</a></li>
										<li><a href="index_8.html">Search bar + Video</a></li>
										<li><a href="index_9.html">With Text Rotator</a></li>
										<li><a href="index_10.html">With Cookie Bar (EU law)</a></li>
										<li><a href="index_11.html">Popup Advertising</a></li>
									</ul>
								</li>
								<li class="submenu">
									<a href="javascript:void(0);" class="show-submenu">Tours <i class="icon-down-open-mini"></i></a>
									<ul>
										<li><a href="all_tours_list.html">All tours list</a></li>
										<li><a href="all_tours_grid.html">All tours grid</a></li>
										<li><a href="single_tour.html">Single tour page</a></li>
										<li><a href="single_tour_with_gallery.html">Single tour with gallery</a></li>
										<li><a href="javascript:void(0);">Single tour fixed sidebar</a>
											<ul>
												<li><a href="single_tour_fixed_sidebar.html">Single tour fixed sidebar</a></li>
												<li><a href="single_tour_with_gallery_fixed_sidebar.html">Single tour 2 Fixed Sidebar</a></li>
												<li><a href="cart_fixed_sidebar.html">Cart Fixed Sidebar</a></li>
												<li><a href="payment_fixed_sidebar.html">Payment Fixed Sidebar</a></li>
												<li><a href="confirmation_fixed_sidebar.html">Confirmation Fixed Sidebar</a></li>
											</ul>
										</li>
										<li><a href="single_tour_working_booking.php">Single tour working booking</a></li>
										<li><a href="cart.html">Single tour cart</a></li>
										<li><a href="payment.html">Single tour booking</a></li>
									</ul>
								</li>
								 <li class="submenu">
									<a href="javascript:void(0);" class="show-submenu">Hotels <i class="icon-down-open-mini"></i></a><ul>
										<li><a href="all_hotels_list.html">All hotels list</a></li>
										<li><a href="all_hotels_grid.html">All hotels grid</a></li>
										<li><a href="single_hotel.html">Single hotel page</a></li>
										<li><a href="single_hotel_datepicker_adv.html">Single hotel datepicker adv</a></li>
										<li><a href="single_hotel_working_booking.php">Single hotel working booking</a></li>
										<li><a href="cart_hotel.html">Cart hotel</a></li>
										<li><a href="payment_hotel.html">Booking hotel</a></li>
										<li><a href="confirmation_hotel.html">Confirmation hotel</a></li>
									</ul>
								</li>
								<li class="submenu">
									<a href="javascript:void(0);" class="show-submenu">Transfers <i class="icon-down-open-mini"></i></a>
									<ul>
										<li><a href="all_transfer_list.html">All transfers list</a></li>
										<li><a href="all_transfer_grid.html">All transfers grid</a></li>
										<li><a href="single_transfer.html">Single transfer page</a></li>
										<li><a href="cart_transfer.html">Cart transfers</a></li>
										<li><a href="payment_transfer.html">Booking transfers</a></li>
										<li><a href="confirmation_transfer.html">Confirmation transfers</a></li>
									</ul>
								</li>
								  <li class="submenu">
									<a href="javascript:void(0);" class="show-submenu">Restaurants <i class="icon-down-open-mini"></i></a>
									<ul>
										<li><a href="all_restaurants_list.html">All restaurants list</a></li>
										<li><a href="all_restaurants_grid.html">All restaurants grid</a></li>
										<li><a href="single_restaurant.html">Single restaurant page</a></li>
										<li><a href="payment_restaurant.html">Booking restaurant</a></li>
										<li><a href="confirmation_transfer.html">Confirmation transfers</a></li>
									</ul>
								</li>
								<li class="megamenu submenu">
									<a href="javascript:void(0);" class="show-submenu-mega">Pages<i class="icon-down-open-mini"></i></a>
									<div class="menu-wrapper">
										<div class="col-md-4">
											<h3>Pages</h3>
											<ul>
												<li><a href="about.html">About us</a></li>
											   <li><a href="general_page.html">General page</a></li>
												<li><a href="tourist_guide.html">Tourist guide</a></li>
												 <li><a href="wishlist.html">Wishlist page</a></li>
												 <li><a href="faq.html">Faq</a></li>
												 <li><a href="faq_2.html">Faq smooth scroll</a></li>
												 <li><a href="pricing_tables.html">Pricing tables</a></li>
												 <li><a href="gallery_3_columns.html">Gallery 3 columns</a></li>
												<li><a href="gallery_4_columns.html">Gallery 4 columns</a></li>
												<li><a href="grid_gallery_1.html">Grid gallery</a></li>
												<li><a href="grid_gallery_2.html">Grid gallery with filters</a></li>
											</ul>
										</div>
										<div class="col-md-4">
											<h3>Pages</h3>
											<ul>
												<li><a href="contact_us_1.html">Contact us 1</a></li>
												<li><a href="contact_us_2.html">Contact us 2</a></li>
												 <li><a href="blog_right_sidebar.html">Blog</a></li>
												<li><a href="blog.html">Blog left sidebar</a></li>
												<li><a href="login.html">Login</a></li>
												<li><a href="register.html">Register</a></li>
												<li><a href="invoice.html" target="_blank">Invoice</a></li>
												<li><a href="404.html">404 Error page</a></li>
												<li><a href="site_launch/index.html">Site launch / Coming soon</a></li>
												<li><a href="timeline.html">Tour timeline</a></li>
												<li><a href="page_with_map.html"><i class="icon-map"></i>  Full screen map</a></li>
											</ul>
										</div>
										<div class="col-md-4">
											<h3>Elements</h3>
											<ul>
												<li><a href="index.html"><i class="icon-columns"></i> Header transparent</a></li>
												<li><a href="header_plain.html"><i class="icon-columns"></i> Header plain</a></li>
												<li><a href="header_transparent_colored.html"><i class="icon-columns"></i> Header transparent colored</a></li>
												<li><a href="footer_2.html"><i class="icon-columns"></i> Footer with working newsletter</a></li>
												<li><a href="icon_pack_1.html"><i class="icon-inbox-alt"></i> Icon pack 1 (1900)</a></li>
												<li><a href="icon_pack_2.html"><i class="icon-inbox-alt"></i> Icon pack 2 (100)</a></li>
												<li><a href="icon_pack_3.html"><i class="icon-inbox-alt"></i> Icon pack 3 (30)</a></li>
												<li><a href="shortcodes.html"><i class="icon-tools"></i> Shortcodes</a></li>
												<li><a href="newsletter_template/newsletter.html" target="blank"><i class=" icon-mail"></i> Responsive email template</a></li>
												<li><a href="admin.html"><i class="icon-cog-1"></i>  Admin area</a></li>
												<li><a href="general_page.html"><i class="icon-light-up"></i>  Weather Forecast</a></li>                                             
											</ul>
										</div>
									</div><!-- End menu-wrapper -->
								</li>
							</ul>
						</div><!-- End main-menu -->
						<ul id="top_tools">
							<li>
								<div class="dropdown dropdown-search">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-search"></i></a>
									<div class="dropdown-menu">
										<form>
											<div class="input-group">
												<input type="text" class="form-control" placeholder="Search...">
												<span class="input-group-btn">
												<button class="btn btn-default" type="button" style="margin-left:0;">
												<i class="icon-search"></i>
												</button>
												</span>
											</div>
										</form>
									</div>
								</div>
							</li>
							<li>
								<div class="dropdown dropdown-cart">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class=" icon-basket-1"></i>Cart (0) </a>
									<ul class="dropdown-menu" id="cart_items">
										<li>
											<div class="image"><img src="img/thumb_cart_1.jpg" alt=""></div>
											<strong>
											<a href="#">Louvre museum</a>1x $36.00 </strong>
											<a href="#" class="action"><i class="icon-trash"></i></a>
										</li>
										<li>
											<div class="image"><img src="img/thumb_cart_2.jpg" alt=""></div>
											<strong>
											<a href="#">Versailles tour</a>2x $36.00 </strong>
											<a href="#" class="action"><i class="icon-trash"></i></a>
										</li>
										<li>
											<div class="image"><img src="img/thumb_cart_3.jpg" alt=""></div>
											<strong>
											<a href="#">Versailles tour</a>1x $36.00 </strong>
											<a href="#" class="action"><i class="icon-trash"></i></a>
										</li>
										<li>
											<div>Total: <span>$120.00</span></div>
											<a href="cart.html" class="button_drop">Go to cart</a>
											<a href="payment.html" class="button_drop outline">Check out</a>
										</li>
									</ul>
								</div><!-- End dropdown-cart-->
							</li>
						</ul>
					</nav>
				</div>
			</div><!-- container -->
		</header><!-- End Header -->
		
		<section id="hero" class="login">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
						<div id="login">
								<div class="text-center"><img src="img/logo_sticky.png" alt="" data-retina="true" ></div>
								<hr>
								<form name="login" onsubmit="return validate();" action="<%= request.getContextPath() %>/login.do" method="post">
	<!-- login -->
									<div class="form-group">
										<label>UserID</label>
										<input type="text" name="user_id" class=" form-control " placeholder="Username" id="id">
									</div>
									<div class="form-group">
										<label>Password</label>
										<input type="password" name="u_password" class=" form-control" placeholder="Password" id="pw">
									</div>
								  
									<button type="submit" class="btn_full">Sign in</button>
									
									<div class="row">
		                            <div class="login-or"><hr class="hr-or"><span class="span-or">Register</span></div>
		                            <div class="col-md-6 col-sm-6 login_social">
		                                <a href="register.jsp?user_type=1" class="btn btn-primary btn-block"> giver</a>
		                            </div>
		                            <div class="col-md-6 col-sm-6 login_social">
		                                <a href="register.jsp?user_type=0" class="btn btn-info btn-block ">taker</a>
		                            </div>
		                            </div>
								</form>
							</div>
					</div>
				</div>
			</div>
		</section>
	
	<footer>
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-3">
						<h3>Need help?</h3>
						<a href="tel://004542344599" id="phone">+45 423 445 99</a>
						<a href="mailto:help@citytours.com" id="email_footer">help@citytours.com</a>
					</div>
					<div class="col-md-3 col-sm-3">
						<h3>About</h3>
						<ul>
							<li><a href="#">About us</a></li>
							<li><a href="#">FAQ</a></li>
							<li><a href="#">Login</a></li>
							<li><a href="#">Register</a></li>
							 <li><a href="#">Terms and condition</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-sm-3">
						<h3>Discover</h3>
						<ul>
							<li><a href="#">Community blog</a></li>
							<li><a href="#">Tour guide</a></li>
							<li><a href="#">Wishlist</a></li>
							 <li><a href="#">Gallery</a></li>
						</ul>
					</div>
					<div class="col-md-2 col-sm-3">
						<h3>Settings</h3>
						<div class="styled-select">
							<select class="form-control" name="lang" id="lang">
								<option value="English" selected>English</option>
								<option value="French">French</option>
								<option value="Spanish">Spanish</option>
								<option value="Russian">Russian</option>
							</select>
						</div>
						<div class="styled-select">
							<select class="form-control" name="currency" id="currency">
								<option value="USD" selected>USD</option>
								<option value="EUR">EUR</option>
								<option value="GBP">GBP</option>
								<option value="RUB">RUB</option>
							</select>
						</div>
					</div>
				</div><!-- End row -->
				<div class="row">
					<div class="col-md-12">
						<div id="social_footer">
							<ul>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-google"></i></a></li>
								<li><a href="#"><i class="icon-instagram"></i></a></li>
								<li><a href="#"><i class="icon-pinterest"></i></a></li>
								<li><a href="#"><i class="icon-vimeo"></i></a></li>
								<li><a href="#"><i class="icon-youtube-play"></i></a></li>
								<li><a href="#"><i class="icon-linkedin"></i></a></li>
							</ul>
							<p>© Citytours 2015</p>
						</div>
					</div>
				</div><!-- End row -->
			</div><!-- End container -->
		</footer><!-- End footer -->
	
	<div id="toTop"></div><!-- Back to top button -->
	
	 <!-- Common scripts -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>
	
	
	  </body>
	</html>