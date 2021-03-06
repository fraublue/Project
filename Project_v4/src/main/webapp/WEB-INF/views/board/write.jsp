<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>CITY TOURS - City tours and travel site template by
	Ansonika</title>

<!-- Favicons-->
<!-- <link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" type="/image/x-icon"
	href="/img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="/img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="/img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="/img/apple-touch-icon-144x144-precomposed.png">
 -->
<!-- CSS -->
<link href="/css/base.css" rel="stylesheet">
<link href="/css/admin.css" rel="stylesheet">
<link href="/css/jquery.switch.css" rel="stylesheet">
<!-- CSS -->
<link href="/css/flickity.css" rel="stylesheet">
<link href="/css/custom.css" rel="stylesheet">
<link href="/css/date_time_picker.css" rel="stylesheet">
<!-- Google web fonts -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Gochi+Hand'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400'
	rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    
<%	

	//int type = Integer.parseInt((String)session.getAttribute("user_type"));	
	String user_id = (String)session.getAttribute("user_id");
	
	if (user_id == null) {
%>
<script>
	alert("잘못된 접근입니다. 로그인 후에 이용해주세요");
	window.location.href = "<%=request.getContextPath()%>/loginForm.do";
</script>
<%
	}
%>
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
	<%@include file="../include/header.jsp"%>

	<section id="search_container"></section>
	<div class="container margin_60">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<div class="form_title">
					<h3>
						<strong><i class="icon-pencil"></i></strong>Write Feed
					</h3>
					<p>Mussum ipsum cacilds, vidis litro abertis.</p>
				</div>
				<div class="step">

					<div id="message-contact"></div>
					<c:if test="${ sessionScope.user_type == 1 }">
						<form name="writeForm" id="boardWriteForm"
							action="<%=request.getContextPath()%>/board/writeg" method="post"
							onSubmit="frmSubmit(); return false;">
					</c:if>
					<c:if test="${ sessionScope.user_type == 0 }">
						<form name="writeForm"
							action="<%=request.getContextPath()%>/board/write" method="post"
							onSubmit="frmSubmit(); return false;">
					</c:if>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="form-group">
									<h4>ID</h4>
									<input type="text" class="form-control" id="user_id" name="user_id"
										value="${sessionScope.user_id}" readonly>
									<%-- ${user_id} --%>
								</div>
							</div>
						</div>
						<!-- End row -->
						
						<!-- imageUpload start -->
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<h4>image</h4>
								<div>
									<h2>Click & Drag your Image</h2>
									<div class="dropzone upload-drop-zone"></div>
									<input type="file" id="file0" class="hidden" name="files"
										multiple>
								</div>

								<div>
									<div class="imgs_wrap">
										<ul>
										</ul>
									</div>

								</div>
								
							</div>
						</div>
					</div>
					

					<!-- imageUpload end -->

						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<h4>Message</h4>
									<textarea rows="5" id="message_contact" name="board_content"
										class="form-control" placeholder="Write your message"
										style="height: 200px;"></textarea>
								</div>
							</div>
						</div>
					<!--  GiverWritePage -->
					<c:if test ="${ sessionScope.user_type == 1 }">
						<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<!-- 				<script type="text/javascript"
							src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=b71c545210111992d3f4b64ae0245b27&libraries=services"></script> -->
						<div class="row">
							<div class="col-md-6 col-sm-6 cst-form-group">
								<div class="cst-form-group">
									<h4>주소</h4>
									<div class="form-group">
										<input type="text" id="postcode"
											class="form-control cst-form-control" placeholder="우편번호">
										<input type="button" style="height: 40px;"
											onclick="execDaumPostcode()" class="btn_1" value="우편번호 찾기">
									</div>
								</div>
								<div class="cst-form-group">
									<div class="form-group">
										<input type="text" id="address"
											class="cst-form-control form-control" name="addr"
											placeholder="주소"> <input type="text"
											id="extraAddress" class="cst-form-control form-control"
											placeholder="참고항목">
									</div>
								</div>
								<div class="cst-form-group">
									<div class="form-group">
										<input type="text" id="detailAddress"
											class="cst-form-width form-control" placeholder="상세주소">

									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6 cst-form-group">
								<div id="map" style="width: 100%; height: 380px;"></div>
							</div>
						</div>
						<script>
							//$(function(){
							var initAddr = $("#address").val();
							if (initAddr != "") {
								//loadMap(initAddr);
								removeBox();
							}

							function loadMap(address) {
								//address = document.getElementById('address').value;
								var mapContainer = document
										.getElementById('map'), mapOption = {
									center : new daum.maps.LatLng(33.450701,
											126.570667),
									level : 7
								};
								var map = new daum.maps.Map(mapContainer,
										mapOption);
								var geocoder = new daum.maps.services.Geocoder();
								geocoder
										.addressSearch(
												address,
												function(result, status) {
													if (status === daum.maps.services.Status.OK) {
														var coords = new daum.maps.LatLng(
																result[0].y,
																result[0].x);
														var marker = new daum.maps.Marker(
																{
																	map : map,
																	position : coords
																});

														var infowindow = new daum.maps.InfoWindow(
																{
																	content : '<div id="removeBox" style="width:150px;text-align:center;padding:6px 0;"></div>'
																});
														infowindow.open(map,
																marker);
														map.setCenter(coords);
														$("#removeBox")
																.ready(
																		function() {
																			var rmvbox = $(
																					"#removeBox")
																					.parent();
																			rmvbox
																					.parent()
																					.remove();
																		});
													}
												});
							}
							function removeBox() {
								$("#removeBox").ready(function() {
									var rmvbox = $("#removeBox").parent();
									rmvbox.parent().remove();
								});
							}
							function execDaumPostcode() {
								new daum.Postcode(
										{
											oncomplete : function(data) {
												var addr = ''; // 주소 변수
												var extraAddr = ''; // 참고항목 변수
												if (data.userSelectedType === 'R') {
													addr = data.roadAddress;
												} else {
													addr = data.jibunAddress;
												}
												if (data.userSelectedType === 'R') {
													if (data.bname !== ''
															&& /[동|로|가]$/g
																	.test(data.bname)) {
														extraAddr += data.bname;
													}
													// 건물명이 있고, 공동주택일 경우 추가한다.
													if (data.buildingName !== ''
															&& data.apartment === 'Y') {
														extraAddr += (extraAddr !== '' ? ', '
																+ data.buildingName
																: data.buildingName);
													}
													if (extraAddr !== '') {
														extraAddr = ' ('
																+ extraAddr
																+ ')';
													}
													document
															.getElementById("extraAddress").value = extraAddr;

												} else {
													document
															.getElementById("extraAddress").value = '';
												}
												document
														.getElementById('postcode').value = data.zonecode;
												document
														.getElementById("address").value = addr;
												// loadMap
												loadMap(addr);

												document.getElementById(
														"detailAddress")
														.focus();
											}
										}).open();
							}
							//})
						</script>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="col-md-12 col-sm-12">
									<h4>건물정보</h4>
								</div>
								<table class="table table-striped options_cart">
									<tbody class="checkedCheck">
										<tr>
											<td style="width: 10%"><i class="icon_set_1_icon-22"></i>
											</td>
											<td style="width: 60%">Pet allowed</td>
											<td style="width: 35%"><label
												class="switch-light switch-ios pull-right"><input
													type="checkbox" name="amenities1" id="amenti1" value="Pet allowed"
													checked=""> <span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-86"></i></td>
											<td>Free Wifi</td>
											<td><label class="switch-light switch-ios pull-right">
											
													<input type="checkbox" name="amenities2" id="amenti2"
													value="Free Wifi" checked=""> <span> <span>No</span>
														<span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-13"></i></td>
											<td>Accessibiliy</td>
											<td><label class="switch-light switch-ios pull-right">
											<input type="checkbox" name="amenities3" id="amenti3"
													value="Accessibiliy" checked=""> <span> <span>No</span>
														<span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-27"></i></td>
											<td>Parking</td>
											<td><label class="switch-light switch-ios pull-right">												
													<input type="checkbox" name="amenities4" id="amenti4"
													value="Parking"> <span> <span>No</span>
														<span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<!-- <tr>
											<td><i class="icon_set_1_icon-81"></i></td>
											<td>체크5</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="amenities5" id="amenti5"
													value="체크5" checked=""> <span> <span>No</span>
														<span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr> -->
									</tbody>
								</table>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="col-md-12 col-sm-12">
									<h4>이용 가능 날짜</h4>
								</div>
								<div class="col-md-12">
									<div class="form-group cst-form-group-layout cst-form-group">
										<label><i class="icon-calendar-7"></i> Start Date</label> <input
											class="date-pick form-control" name="booking_startdate"
											data-date-format="yyyy-mm-dd" type="text">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group cst-form-group-layout cst-form-group">
										<label><i class="icon-calendar-7"></i> End Date</label>
										<!-- <input class="date-pick form-control" name="booking_enddate" data-date-format="M d, D" type="text"> -->
										<input class="date-pick form-control" name="booking_enddate"
											data-date-format="yyyy-mm-dd" type="text">
									</div>
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="form-group cst-form-group-layout cst-form-group">
										<label>수용가능 인원</label>
										<div class="numbers-row">
											<input type="text" value="1" id="adults"
												class="qty2 form-control" name="people">
											<div class="inc button_inc">+</div>
											<div class="dec button_inc">-</div>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group cst-form-group-layout">
										<label>ETC</label>
										<textarea rows="5" id="amenities_etc" name="amenities_etc"
											class="form-control" placeholder="Write your message"
											style="height: 53px;"></textarea>
									</div>
								</div>
							</div>
						</div>
						</c:if>
						<div class="row">
							<div class="col-md-6">							
									<c:if test='${sessionScope.user_type == 1 }'><input type="hidden" name="board_id" value="0"></c:if>
									<input type="hidden" name="user_type" value="${sessionScope.user_type}">						
								<input type="submit" value="글작성" class="btn_1" id="submit-contact">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- End row -->
	</div>

	<%@include file="../include/footer.jsp"%>
	<div id="toTop"></div>
	<!-- Back to top button -->

	<!-- Common scripts -->
	<script src="/js/bootstrap-datepicker.js"></script>
	<script>
		$('input.date-pick').datepicker('setDate', 'today');
		$(".checkedCheck").each(function(){
			var chk = $(this).find("input[type='checkbox']").is(":checked");
			if(!chk){
				$(this).val(null);
			}
			
		})
		function checkbox(){
			
			if ($('input[name=sampleCheckbox]').is(":checked")) {
			    $('input[name=sampleHidden]').val('Y');
			} else {
			    $('input[name=sampleHidden]').val('N');
			}



		
		}
	</script>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/common_scripts_min.js"></script>
	<script src="/js/functions.js"></script>
	

	<script>
		function frmSubmit(){
			var type = document.writeForm.user_type.value;
			if(type==1){
				var gboardData = {
					user_type:type,
		            addr: $("#address").val(),
		            board_id: 0,
		            user_id: $("#user_id").val(),
		            board_content: $("#message_contact").val(),
		            amenities1: $("#amenti1").is(":checked") ? $("#amenti1").val() : null,
		            amenities2: $("#amenti2").is(":checked") ? $("#amenti2").val() : null,
		            amenities3: $("#amenti3").is(":checked") ? $("#amenti3").val() : null,
		            amenities4: $("#amenti4").is(":checked") ? $("#amenti4").val() : null,
		            booking_startdate: $("input[name='booking_startdate']").val(),
		            booking_enddate: $("input[name='booking_enddate']").val(),
		            amenities_etc: $("#amenities_etc").val()
		        }
				$.ajax({
					url:"/board/writeg",
					type:"post",
					data: gboardData,
					dataType: "JSON",
					err : function(err){
						console.log(err);
					},
					success: function(data){
						console.log(data);
						uploadFile(data);
						//uploadFile()
					}
				});
			}else if(type == 0){
				var boardData = {
						user_type:type,
			            board_id: 0,
			            user_id: $("#user_id").val(),
			            board_content: $("#message_contact").val(),
			        }
					$.ajax({
						url:"/board/write",
						type:"post",
						data: boardData,
						dataType: "JSON",
						err : function(err){
							console.log(err);
						},
						success: function(data){
							console.log(data);
							uploadFile(data);
							//uploadFile()
						}
					});
			}
			
			//document.writeForm.submit();
			//uploadFile();
		}
        var fileIndex = 0;
        // 등록할 전체 파일 사이즈
        var totalFileSize = 0;
        // 파일 리스트
        var fileList = new Array();
        // 파일 사이즈 리스트
        var fileSizeList = new Array();
        // 등록 가능한 파일 사이즈 MB
        var uploadSize = 50;
        // 등록 가능한 총 파일 사이즈 MB
        var maxUploadSize = 500;
        $(function () {
            fileDrop();
            // var ci = 0;
            $(".dropzone").on("click", function (e) {
                e.preventDefault();
                $("#file0").click();
            });
            $("input[type='file']").on('change', function (e) {
                //selectFile(e.target.files);
            	 //console.log(e.target.files);
                 setTimeout(function () {
                	 selectFile(e.target.files);
                },10)  
            });

        });
        function fileDrop() {
            var dropzone = $(".dropzone");
            dropzone.on('change', function (e) {
                console.log("changed : " + e);
            })
            dropzone.on('dragenter', function (e) {
                e.stopPropagation();
                e.preventDefault();
                // 드롭다운 영역 css
                dropzone.css('background-color', '#E3F2FC');
            });
            dropzone.on('dragleave', function (e) {
                e.stopPropagation();
                e.preventDefault();
                // 드롭다운 영역 css
                dropzone.css('background-color', '#FFFFFF');
            });
            dropzone.on('dragover', function (e) {
                e.stopPropagation();
                e.preventDefault();
                // 드롭다운 영역 css
                dropzone.css('background-color', '#E3F2FC');
            });

            dropzone.on('drop', function (e) {
                e.preventDefault();
                // 드롭다운 영역 css
                dropzone.css('background-color', '#FFFFFF');
                var files = e.originalEvent.dataTransfer.files;
                //selectFile
                selectFile(files);
            });
        }
        function selectFile(files) {
            if (files != null) {
                if (files.length < 1) {
                    alert("폴더 업로드 불가");
                    return;
                }
                //selectFile(files);
                //handleImgsFilesSelect(e);

                // 다중
                for (var i = 0; i < files.length; i++) {
                    // 파일 이름
                    var fileName = files[i].name;
                    var fileNameArr = fileName.split("\.");
                    // 확장자
                    var ext = fileNameArr[fileNameArr.length - 1];
                    // 파일 사이즈(단위 :MB)
                    var fileSize = files[i].size / 1024 / 1024;
                    if ($.inArray(ext, ['exe', 'bat', 'sh', 'java', 'jsp', 'html', 'js', 'css', 'xml']) >= 0) {
                        // 확장자 체크
                        alert("등록 불가 확장자");
                        break;
                    } else if (fileSize > uploadSize) {
                        // 파일 사이즈 체크
                        alert("용량 초과\n업로드 가능 용량 : " + uploadSize + " MB");
                        break;
                    } else {
                        // 전체 파일 사이즈
                        totalFileSize += fileSize;
                        // 파일 배열에 넣기
                        fileList[fileIndex] = files[i];
                        // 파일 사이즈 배열에 넣기
                        fileSizeList[fileIndex] = fileSize;                        
                        var reader = new FileReader();
                        var temp = fileList[fileIndex];
                      
                        reader.onloadend = (function (temp) {
                        	return function(){
        	                	console.log("end");
        	                	console.log(temp);
        	                	
        	                    img_html = '<li class="thumb_img_'+fileIndex+'"><img src="'+this.result+'"></li>';
        	                    $(".imgs_wrap>ul").append(img_html);        	                   
                        	};
                        })(temp); 
                        reader.readAsDataURL(temp);
                        //console.log(img_html);
                      
                        // // 파일 번호 증가
                        fileIndex++;
                    }
                }
                console.log(fileList);
                // 기존 이미지리스트삭제
                //$(".imgs_wrap>ul").children().remove();
               // imageThumbView(fileList);
            } else {
                alert("ERROR");
            }
        }
		//////////////////////
        //function imageThumbView(fileList) {
        //    console.log(fileList);
        //    
        //   for (var i = 0; i < fileList.length; i++) {
        //        if (!fileList[i].type.match("image.*")) {return;}
        //       var img_html = '';
        //'        
        //       /*  var file = fileList[i];
        //        console.log("before ");
        //        console.log(file); */
        //        reader.onloadend = (function (file) {
        //        	return function(){
	    //            	console.log("after");
	    //            	console.log(file);
	    //                img_html = '<li class="thumb_img"><img src="'+this.result+'"></li>';
	    //                $(".imgs_wrap>ul").append(img_html);
        //        	}
        //        })(file);
        //        console.log(img_html);
        //       reader.readAsDataURL(file);
        //    };
        //}
        /////////////////////////////
        
		/////////////////////////////
        // 사용 x
        //function addFileList(fIndex, fileName, fileSize) {
        //    var html = "";
        //    html += "<li id='fileli_" + fileIndex + "'>";
        //    html += "    <div class='left'>";
        //    html += fileName + " / " + fileSize + "MB " + "<a href='#' onClick='deleteFile(" + fileIndex + "); return false;' class='delete_btn'>삭제</a"
        //    html += "    </div>"
        //    html += "</li>"
        //    $('.fileList > ul').append(html);
        //}
		/////////////////////////////
		
        function deleteFile(fIndex) {
            console.log("del call");
            console.log(fileList[fIndex] + " : " + fileSizeList[fIndex]);
            // 전체 파일 사이즈 수정
            totalFileSize -= fileSizeList[fIndex];

            // 파일 배열에서 삭제
            delete fileList[fIndex];

            // 파일 사이즈 배열 삭제
            delete fileSizeList[fIndex];

            // 업로드 파일 테이블 목록에서 삭제                
            $("#fileli_" + fIndex).remove();
            $(".thumbIdx_" + fIndex).remove();
        }
        
        // 파일 등록
        function uploadFile(board_id) {
            // 등록할 파일 리스트
            var uploadFileList = Object.keys(fileList);
            // 파일이 있는지 체크
            if (uploadFileList.length == 0) {
                // 파일등록 경고창
                alert("파일이 없습니다.");
                return;
            }

            // 용량을 500MB를 넘을 경우 업로드 불가
            if (totalFileSize > maxUploadSize) {
                // 파일 사이즈 초과 경고창
                alert("총 용량 초과\n총 업로드 가능 용량 : " + maxUploadSize + " MB");
                return;
            }

            //if (confirm("등록 하시겠습니까?")) {
                // 등록할 파일 리스트를 formData로 데이터 입력
                var form = $('#boardWriteForm');

                //var userid= $("#user_id").val();
                //var formData = new FormData(form);
                var formData = new FormData();
                for (var i = 0; i < uploadFileList.length; i++) {
                	console.log(fileList[uploadFileList[i]]);
                    formData.append('files', fileList[uploadFileList[i]]);
                }
                //formData.append("user_id",userid);
                formData.append("board_id",board_id);
                console.log(formData.getAll("files"));
                console.log(formData.get("user_id"));
                $.ajax({
                    url: "<%=request.getContextPath()%>/upload",
                    data: formData,
                    type: 'POST',
                    enctype: 'multipart/form-data',
                    processData: false,
                    contentType: false,
                    dataType: 'json',
                    cache: false,
                    success: function (result) {
                    	
                        if (result.data.length > 0) {
                            alert("성공");
                          
                        } else {
                            alert("실패");
                            //location.reload();
                        }
                        location.href="main.do";
                    }
                });
            //}
        }
    </script>


</body>
</html>

