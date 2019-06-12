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
    <link href="css/jquery.switch.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
	<link href="css/owl.theme.css" rel="stylesheet">
	
    <!-- Google web fonts -->
   <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
   <link href='http://fonts.googleapis.com/css?family=Gochi+Hand' rel='stylesheet' type='text/css'>
   <link href='http://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'>
        
    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
        
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
   
	<%@include file="./include/header.jsp"%>
    <section id="search_container" class="social"> 
    <div class="intro_title animated fadeInDown">
           <h1 align="center">Place your order</h1>
            <div class="bs-wizard">
  			
                <div class="col-xs-6 bs-wizard-step active">
                  <div class="text-center bs-wizard-stepnum">Your cart</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>
                               
               
            
              <div class="col-xs-6 bs-wizard-step disabled">
                  <div class="text-center bs-wizard-stepnum">Finish!</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="confirmation_hotel.html" class="bs-wizard-dot"></a>
                </div>  
                   
		</div>  <!-- End bs-wizard --> 
    </div>   <!-- End intro-title --> 
    </section>


    
    <div id="position">
    	<div class="container">
                	<ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Category</a></li>
                    <li>Page active</li>
                    </ul>
        </div>
    </div><!-- End position -->

    <div class="container margin_60">
    <div class="row">
    <div class="col-md-8">
    <div class="alert alert-info" role="alert"><strong>Rooms available</strong> for the selected dates.<br>PLEASE SELECT YOUR QUANTITY.</div>
    	<table class="table table-striped cart-list add_bottom_30">
            <thead>
            <tr>
                <th>
                    Room Type
                </th>
                <th>
                	people
                </th>
                <th>
                    Per night
                </th>
              </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <div style="padding-top: 15px; padding-bottom: 15px;">
                        ${addr}
                    </div> 
                     <%-- <span class="item_cart">${addr}</span> --%>
                </td>
                <td>
                		${people}
                </td>
                <td>
                    <strong>€80</strong>
                </td>
              </tr>
            
            </tbody>
            </table>
            <table class="table table-striped options_cart">
            <thead>
            <tr>
                <th colspan="3">
                    Add options / Services
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <i class="icon_set_1_icon-26"></i>
                </td>
                <td>
                    빔 프로젝터 <strong>+$34*</strong>
                </td>
                <td>
                    <label class="switch-light switch-ios pull-right">
                    <input type="checkbox" name="option_2" id="option_2" value="">
                    <span>
                    <span>No</span>
                    <span>Yes</span>
                    </span>
                    <a></a>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <i class="icon_set_1_icon-15"></i>
                </td>
                <td>
                    플라워 장식 <strong>+$24</strong>
                </td>
                <td>
                    <label class="switch-light switch-ios pull-right">
                    <input type="checkbox" name="option_4" id="option_4" value="" checked>
                    <span>
                    <span>No</span>
                    <span>Yes</span>
                    </span>
                    <a></a>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <i class="icon_set_1_icon-59"></i>
                </td>
                <td>
                   테이블 <strong>+$12*</strong>
                </td>
                <td>
                    <label class="switch-light switch-ios pull-right">
                    <input type="checkbox" name="option_5" id="option_5" value="" checked>
                    <span>
                    <span>No</span>
                    <span>Yes</span>
                    </span>
                    <a></a>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <i class="icon_set_1_icon-58"></i>
                </td>
                <td>
                    의자 <strong>+$26*</strong>
                </td>
                <td>
                    <label class="switch-light switch-ios pull-right">
                    <input type="checkbox" name="option_6" id="option_6" value="">
                    <span>
                    <span>No</span>
                    <span>Yes</span>
                    </span>
                    <a></a>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <i class="icon_set_1_icon-40"></i>
                </td>
                <td>
                    Bike rent <strong>+$26*</strong>
                </td>
                <td>
                    <label class="switch-light switch-ios pull-right">
                    <input type="checkbox" name="option_7" id="option_7" value="">
                    <span>
                    <span>No</span>
                    <span>Yes</span>
                    </span>
                    <a></a>
                    </label>
                </td>
            </tr>
            </tbody>
            </table>
           
    </div><!-- End col-md-8 -->
    
    <aside class="col-md-4">
    <div class="box_style_1">
        <h3 class="inner">- Summary -</h3>
        <form action="<%=request.getContextPath()%>/confirm.do" method="post">
        <table class="table table_summary">
        <tbody>
            <tr>
                <td>
                    Check in
                </td>
                <td class="text-right">
                <input name="booking_startdate"
                    value="${checkin}">
                </td>
            </tr>
            <tr>
                <td>
                    Check out
                </td>
                <td class="text-right">
                <input name="booking_enddate"
                     value="${checkout}">
                </td>
            </tr>
            
        
        <tr>
            <td>
                Welcome bottle
            </td>
            <td class="text-right">
                $34
            </td>
        </tr>
        <tr class="total">
          <td>
            Total cost
            </td>
          <td class="text-right">
            $154
            </td>
        </tr>
        </tbody>
        </table>
        <input type="hidden" name="user_id" value="${sessionScope.user_id}">
        <input type="hidden" name="board_id" value="${board_id}">
        <input type="hidden" name="people" value="${people}">
        <input type="hidden" name="booking_memo" value="없음">
        <input type="hidden" name="addr" value="${addr}">
        
        <button class="btn_full" type="submit">Book now</button>
        <a class="btn_full_outline" href="single_hotel.html"><i class="icon-right"></i> Modify your search</a>
        </form>
    </div>
    <div class="box_style_4">
        <i class="icon_set_1_icon-57"></i>
        <h4>Need <span>Help?</span></h4>
        <a href="tel://004542344599" class="phone">010 2733 5696</a>
        <small>Monday to Friday 9.00am - 6.00pm</small>
    </div>
    </aside><!-- End aside -->

</div><!--End row -->
</div><!--End container -->

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
          
         </div>
        
      </div>
      <!-- End container -->
   </footer>
   <!-- End footer -->

<div id="toTop"></div><!-- Back to top button -->

<!-- Modal Single room-->
<div class="modal fade" id="modal_single_room" tabindex="-1" role="dialog" aria-labelledby="modal_single_room" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="modal_single_room">Single Room</h4>
      </div>
      <div class="modal-body">
        <p>
        	Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi. Mea liber ridens inermis ei, mei legendos vulputate an, labitur tibique te qui.
        </p>
        <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <ul class="list_icons">
                                <li><i class="icon_set_1_icon-86"></i> Free wifi</li>
                                <li><i class="icon_set_2_icon-116"></i> Plasma Tv</li>
                                <li><i class="icon_set_2_icon-106"></i> Safety  box</li>
                            </ul>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <ul class="list_ok">
                                <li>Lorem ipsum dolor sit amet</li>
                                <li>No scripta electram necessitatibus sit</li>
                                <li>Quidam percipitur instructior an eum</li>
                            </ul>
                        </div>
                    </div><!-- End row  -->
                     <div class="carousel magnific-gallery">
                     	<div class="item">
                        	<a href="img/carousel/1.jpg"><img src="img/carousel/1.jpg" alt="Image"></a>
                        </div>
                        <div class="item">
                        	<a href="img/carousel/2.jpg"><img src="img/carousel/2.jpg" alt="Image"></a>
                        </div>
                        <div class="item">
                        	<a href="img/carousel/3.jpg"><img src="img/carousel/3.jpg" alt="Image"></a>
                        </div>
                        <div class="item">
                        	<a href="img/carousel/4.jpg"><img src="img/carousel/4.jpg" alt="Image"></a>
                        </div>
                     </div><!-- End photo carousel  -->
      </div>
    </div>
  </div>
</div>

<!-- Modal Double room-->
<div class="modal fade" id="modal_double_room" tabindex="-1" role="dialog" aria-labelledby="modal_double_room" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="modal_double_room">Double Room</h4>
      </div>
      <div class="modal-body">
        <p>
        	Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi. Mea liber ridens inermis ei, mei legendos vulputate an, labitur tibique te qui.
        </p>
        <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <ul class="list_icons">
                                <li><i class="icon_set_1_icon-86"></i> Free wifi</li>
                                <li><i class="icon_set_2_icon-116"></i> Plasma Tv</li>
                                <li><i class="icon_set_2_icon-106"></i> Safety  box</li>
                            </ul>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <ul class="list_ok">
                                <li>Lorem ipsum dolor sit amet</li>
                                <li>No scripta electram necessitatibus sit</li>
                                <li>Quidam percipitur instructior an eum</li>
                            </ul>
                        </div>
                    </div><!-- End row  -->
                     <div class="carousel magnific-gallery">
                     	<div class="item">
                        	<a href="img/carousel/1.jpg"><img src="img/carousel/1.jpg" alt="Image"></a>
                        </div>
                        <div class="item">
                        	<a href="img/carousel/2.jpg"><img src="img/carousel/2.jpg" alt="Image"></a>
                        </div>
                        <div class="item">
                        	<a href="img/carousel/3.jpg"><img src="img/carousel/3.jpg" alt="Image"></a>
                        </div>
                        <div class="item">
                        	<a href="img/carousel/4.jpg"><img src="img/carousel/4.jpg" alt="Image"></a>
                        </div>
                     </div><!-- End photo carousel  -->
      </div>
    </div>
  </div>
</div>

<!-- Jquery -->
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="js/functions.js"></script>

 <!-- Carousel -->
<script src="js/owl.carousel.min.js"></script>
<script>
$(document).ready(function(){   
		$(".carousel").owlCarousel({
		items : 4,
		itemsDesktop : [1199,3],
		itemsDesktopSmall : [979,3]
		});
    });
</script>
  </body>
</html>