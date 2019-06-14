<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<jsp:useBean id="toDay" class="java.util.Date" />

<fmt:formatDate value="${toDay}" var="toDay" pattern="yyyy-MM-dd" />




<!DOCTYPE html>
<!--[if IE 8]><html class="ie ie8"> <![endif]-->
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="template, tour template, city tours, city tour, tours tickets, transfers, travel, travel template" />
<meta name="description"
	content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
<meta name="author" content="Ansonika">
<title>SOCIAL N SPACE</title>

<!-- Favicons-->
<link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" type="image/x-icon"
	href="/img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="/img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="/img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="/img/apple-touch-icon-144x144-precomposed.png">

<!-- CSS -->
<link href="/css/base.css" rel="stylesheet">

<!-- SPECIFIC CSS -->
<link href="/css/skins/square/grey.css" rel="stylesheet">
<link href="/css/date_time_picker.css" rel="stylesheet">
<link href="/css/custom.css" rel="stylesheet">
<!-- Google web fonts -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Gochi+Hand'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400'
	rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script>

	$(function() {
		
		addList(1,append);
		function addList(currentPage,predi) {
			$.ajax({
				type : "GET",
				url : "<%=request.getContextPath()%>/board/list",
				data : {
					page : currentPage
				},
				error : function(err) {
					console.log(err);
				},
				success : function(data) {
					addData(predi,data,"listWrap");
					//$("#listWrap").append(data);
				}
			});
		}
		
		//seol//input박스에 class이름이 form-control의 value값을 user_id에 저장
		
		function tsearch(currentPage,predi,user_id){
			var datas = {
					user_id : user_id,
					page : currentPage
			}
			 $.ajax({
					type : "GET",
					url : "/board/tsearch",
					data : datas,
					error : function(err){
						console.log(err);
					},
					success : function(data){
						addData(predi,data,"listWrap");
					}
				});
			}
			
			$("#keyword").on('keydown', function(e){
                     if(e.keyCode ==13){
                        var user_id = $(this).val();
                        console.log(user_id);
                        pageNum =1;
                        $(".btn_moreView").hide();
                		 $(".btn_moreView2").hide();
                		 $(".btn_moreView3").show();
                		 $(".btn_moreView4").hide();
                        tsearch(1, html,user_id);
                     }
                     
                  })
                  $("#searchbtn").on('click',function(){
                	  var user_id = $("#keyword").val();
                	  console.log(user_id);
                	  pageNum = 1;
                	  $(".btn_moreView").hide();
             		 $(".btn_moreView2").hide();
             		 $(".btn_moreView3").show();
             		 $(".btn_moreView4").hide();
                     tsearch(1,html,user_id);
                  })
                  
                  ///
                  
                 function psearch(currentPage,predi){
					var datas = {
							 people : $("#people").val(),
							 favorite : $("input[name='favorite']").val(),
							 booking_startdate : $("input[name='booking_startdate']").val(),
							 booking_enddate : $("input[name='booking_enddate']").val(),
							 addr : $("input[name='addr']").val(),
							 page : currentPage
						}
					 $.ajax({
							type : "GET",
							url : "/board/psearch",
							data : datas,
							error : function(err){
								console.log(err);
							},
							success : function(data){
								addData(predi,data,"listWrap");
							}
						});
					}
			
					$(".searchnow").click(function(){
						pageNum=1;
						$(".btn_moreView").hide();
		        		 $(".btn_moreView2").hide();
		        		 $(".btn_moreView3").hide();
		        		 $(".btn_moreView4").show();
						psearch(1,html);
					})
					
		//favoriteList(1,"상가");
		function favoriteList(currentPage,fname,predi) {
			$.ajax({
				type : "GET",
				url : "<%=request.getContextPath()%>/board/flist",
				data : {
					favorite_name : fname,
					page : currentPage
				},
				error : function(err) {
					console.log(err);
				},
				success : function(data) {
					addData(predi,data,"listWrap");
				}
			});
		}
		
		var type = "";
		var pageNum = 1;
		 $(".btn_moreView").show();
		 $(".btn_moreView2").hide();
		 $(".btn_moreView3").hide();
		 $(".btn_moreView4").hide();
		$(".listType > li").on("click",function(){
			 //var type = $(this).text();
			type = $(this).attr("data-fname");
			 pageNum=1;
			 console.log(type);
			 if(type == "Giver"){				 
				 $(".btn_moreView").show();
				 $(".btn_moreView2").hide();
				 $(".btn_moreView3").hide();
				 $(".btn_moreView4").hide();
				 addList(pageNum,html);
			 }else{
				 $(".btn_moreView").hide();
				 $(".btn_moreView2").show();
				 $(".btn_moreView3").hide();
				 $(".btn_moreView4").hide();
				 favoriteList(pageNum,type,html);
			 }
			 
			 $(this).siblings().removeClass("active");
			 $(this).addClass("active");
			 return false;
		})
		
		
		$(".btn_moreView").click(function(){
			console.log("view");
			++pageNum;
			console.log(type);
			console.log(pageNum);
			addList(pageNum, append);
			return false;
		})
		$(".btn_moreView2").click(function(){
			console.log("view222");
			++pageNum;
			console.log(type);
			console.log(pageNum);
			favoriteList(pageNum,type,append);
			return false;
		})
		$(".btn_moreView3").click(function(){
			console.log("view333");
			var user_id = $("#keyword").val();
			++pageNum;
			//console.log(type);
			console.log(pageNum);
			tsearch(pageNum,append,user_id);
			return false;
		})
		$(".btn_moreView4").click(function(){
			console.log("view444");
			++pageNum;
//			console.log(type);
			console.log(pageNum);
			psearch(pageNum,append);
			return false;
		})
		/**/
		function addData(predi,data,target){
			return (function(){
				predi(target,data);
			}())
		}
		
		function html(target,data){
			document.getElementById(target).innerHTML = data;
		}
		function append(target,data){
			document.getElementById(target).innerHTML +=data;
		}
		
	});
	
	
		
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
	<%@include file="./include/header.jsp"%>
	<!-- Header================================================== -->


	<section id="search_container">
		<div id="search">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#tours" data-toggle="tab">Search</a></li>

			</ul>

			<div class="tab-content">
				<div class="tab-pane active" id="tours">

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Addr ess</label> <input type="text" class="form-control"
									id="firstname_booking" name="addr"
									placeholder="Type your search terms">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Things to do</label>
								<select id="favorite" class="ddslick" name="favorite">
									<option value="0" selected>ALL TOURS</option>
									<option value="1" class="icon-money">COMMERCIAL</option>
									<option value="2" >FLEA MARKET</option>
									<option value="3" >EXHIBITION</option>
									<option value="4" >POP - UP STORE</option>
									<option value="5" >SHOOTING</option>
									<option value="6" >STUDY</option>
									<option value="7" >SMALL GROUP</option>
									<option value="8" >SMALL WEDDING</option>
								</select>
							</div>
						</div>
					</div>
					<!-- End row -->
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<label><i class="icon-calendar-7"></i>Start Date</label> 
								<input
									class="date-pick form-control" name="booking_startdate" 
									data-date-format="yyyy-mm-dd"
									data-date-start-date="${toDay}"
									type="text"
									>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label><i class="icon-calendar-7"></i>End Date</label> <input
									class="date-pick form-control" name="booking_enddate" 
									data-date-format="yyyy-mm-dd"
									data-date-start-date="${toDay}"
									type="text">
							</div>
						</div>

						<div class="col-md-2 col-sm-3 col-xs-6">
							<div class="form-group">
								<label>GUESTS</label>
								<div class="numbers-row">
									<input id="people" type="text" value="1"
										class="qty2 form-control" name="adults">
										<div class="inc button_inc">+</div>
										<div class="dec button_inc">-</div>
								</div>
							</div>
						</div>
						<!-- <div class="col-md-2 col-sm-3 col-xs-6">
							<div class="form-group">
								<label>Children</label>
								<div class="numbers-row">
									<input type="text" value="0" id="children"
										class="qty2 form-control" name="children">
								</div>
							</div>
						</div> -->

					</div>
					<!-- End row -->
					<hr>
					<button class="btn_1 green searchnow">
						<i class="icon-search"></i>Search now
					</button>
				</div>
				<!-- End rab -->
				
				
			</div>
		</div>
	</section>
	<!-- End hero -->

	<div class="container margin_60">

		<div class="main_title">
			<h2>
				당신의 <span>공간을</span> 찾아보세요
			</h2>
			<h4>kyeongoh, seolah, taeseong and pureum worked very hard!!!</h4>
		</div>
		<div id="search" class="cst-search">
			<ul class="listType nav nav-tabs">
				<li class="active" data-fname="Giver"><a href="#">Giver</a></li>
				<li data-fname="전시"><a href="#">Exhibition</a></li>
				<li data-fname="플리마켓"><a href="#">Flea Market</a></li>
				<li data-fname="소모임"><a href="#">Society</a></li>
			</ul>
		</div>
		<div class="row" id="listWrap"></div>
		<p class="text-center nopadding">
			<button class="btn_1 btn_moreView" style="color: white">
				<i class="icon-up-hand">&nbsp;</i>SHOW MORE
			</button>
			<button class="btn_1 btn_moreView2" style="color: white">
				<i class="icon-up-hand">&nbsp;</i>SHOW MORE
			</button>
		
			<button class="btn_1 btn_moreView3" style="color: white">
				<i class="icon-up-hand">&nbsp;</i>SHOW MORE
			</button>
			<button class="btn_1 btn_moreView4" style="color: white">
				<i class="icon-up-hand">&nbsp;</i>SHOW MORE
			</button>
			
			</p>
		<!-- End row -->

		<!-- <p class="text-center nopadding">
			<a href="#" class="btn_1 medium"><i class="icon-eye-7"></i>View
				all tours (144) </a>
		</p> -->
	</div>
	<!-- End container -->
	<script>
	
		$(function(){
			$(document).on("click",'.like',function(){
				var imgsrc = $(this).attr("src");
				var board_id = $(this).next(".board_id").val();
				console.log(board_id);
				console.log(imgsrc);
				if(imgsrc == "img/like1.png"){//1이 비어있는거				
					$(this).attr("src","img/like2.png");
					
					like("board/insertLike.do",imgsrc,board_id);
							
				}else{
					$(this).attr("src","img/like1.png");
					
					like("board/removeLike.do",imgsrc,board_id);
							
				}
			})
					
			function like(act,src,board_id){
				
				var user_id = $(".user_id").val();
				console.log(act);
				var sendData = {'board_id' : board_id, 'user_id' : user_id };
				$.ajax({
					url:act,
					type :'post',
					data: sendData,
					success : function(data){
						//likecnt("board/selectLikecnt.do");
					}
				})
			}	
						
		})
	</script>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-3">
					<h3>Need help?</h3>
					<a href="tel://004542344599" id="phone">010 2733 5696</a> <a
						href="mailto:help@citytours.com" id="email_footer">kyungohhelp@gmail.com</a>
				</div>
				<div class="col-md-3 col-sm-3">
					<h3>About</h3>
					<ul>
						<li><a href="#">About us</a></li>
						<li><a href="#">경오</a></li>
						<li><a href="#">설아</a></li>
						<li><a href="#">태성</a></li>
						<li><a href="#">푸름</a></li>
					</ul>
				</div>
				<!-- <div class="col-md-3 col-sm-3">
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
				</div> -->
			</div>
			<!-- End row -->
			<!-- <div class="row">
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
			</div> -->
			<!-- End row -->
		</div>
		<!-- End container -->
	</footer>
	<!-- End footer -->

	<div id="toTop"></div>
	<!-- Back to top button -->

	<!-- Common scripts -->
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/common_scripts_min.js"></script>
	<script src="/js/functions.js"></script>

	<!-- Specific scripts -->
	<script src="/js/icheck.js"></script>
	<script>
		$('input').iCheck({
			checkboxClass : 'icheckbox_square-grey',
			radioClass : 'iradio_square-grey'
		});
	</script>
	<script src="/js/bootstrap-datepicker.js"></script>
	<script src="/js/bootstrap-timepicker.js"></script>
	<script>
		$('input.date-pick').datepicker('setDate', 'today');
		$('input.time-pick').timepicker({
			minuteStep : 15,
			showInpunts : false
		})
	</script>
	<script src="/js/jquery.ddslick.js"></script>
	<script>
		$("select.ddslick").each(function() {
			$(this).ddslick({
				showSelectedHTML : true
			});
		});
	</script>
</body>
</html>
