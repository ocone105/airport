<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html> 
<head>  
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/news.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/news_responsive.css">
	<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ebf7b2f2c5987b5f48041fd7c1490397"></script> -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a278f885094d42e1e7475ea96828d5a1"></script>
	
<script type="text/javascript">
$(document).ready(function() {
	$(".today").on("click",function(){
		$.ajax({
			url: "/airport/erp/todaylist.do",
			type: "get",
			data:{
				"selectdate":"0"
			},
			success:function(data){
				mydata1 = ""; 
				mydata2 = "";
				for(i=0;i<data.length;i++){
					mydata1 = mydata1 + "<tr>"
					+"<td>"+data[i].atime+"</td>"
					+"<td>"+data[i].t1sum8+"</td>"
					+"<td>"+data[i].t1sum7+"</td>"
					+"<td>"+data[i].t1sum6+"</td>"
					+"<td>"+data[i].t1sum5+"</td>"
					+"</tr>";
					
					mydata2 = mydata2 + "<tr>"
					+"<td>"+data[i].atime+"</td>"
					+"<td>"+data[i].t2sum4+"</td>"
					+"<td>"+data[i].t2sum3+"</td>"
					+"</tr>";
					
				}
				$("#gate1_detail").empty(mydata1);
				$("#gate1_detail").append(mydata1); 
				$("#gate2_detail").empty(mydata2);
				$("#gate2_detail").append(mydata2); 
				$(".day").empty(data[0].adate);
				$(".day").append(data[0].adate); 
			},
			error:function(a,b,c){	//ajax실패시 원인(에러메시지)
				alert(a+b+c);
			}
		});
	});
	
	$(".tomorrow").on("click",function(){
		$.ajax({
			url: "/airport/erp/tomorrowlist.do",
			type: "get",
			data:{
				"selectdate":"1"
			},
			success:function(data){
				mydata1 = ""; 
				mydata2 = "";
				for(i=0;i<data.length;i++){
					mydata1 = mydata1 + "<tr>"
					+"<td>"+data[i].atime+"</td>"
					+"<td>"+data[i].t1sum8+"</td>"
					+"<td>"+data[i].t1sum7+"</td>"
					+"<td>"+data[i].t1sum6+"</td>"
					+"<td>"+data[i].t1sum5+"</td>"
					+"</tr>";
					
					mydata2 = mydata2 + "<tr>"
					+"<td>"+data[i].atime+"</td>"
					+"<td>"+data[i].t2sum4+"</td>"
					+"<td>"+data[i].t2sum3+"</td>"
					+"</tr>";
					
				}
				$("#gate1_detail").empty(mydata1);
				$("#gate1_detail").append(mydata1); 
				$("#gate2_detail").empty(mydata2);
				$("#gate2_detail").append(mydata2); 
				$(".day").empty(data[0].adate);
				$(".day").append(data[0].adate); 
			},
			error:function(a,b,c){	//ajax실패시 원인(에러메시지)
				alert(a+b+c);
			}
		});
	});
});


</script>
</head>
<body>
	<!-- Home -->
	<div class="home">

		<!-- Home Slider -->
		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">
				
				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(/airport/resources/images/home_slider.jpg)"></div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content">
										<div class="home_title"><h2>Let us take you away</h2></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(/airport/resources/images/about.jpg)"></div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content">
										<div class="home_title"><h2>Let us take you away</h2></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(/airport/resources/images/news.jpg)"></div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content">
										<div class="home_title"><h2>Let us take you away</h2></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

			<div class="home_page_nav">
				<ul class="d-flex flex-column align-items-end justify-content-end">
					<li><a href="#" data-scroll-to="#destinations">Offers<span>01</span></a></li>
					<li><a href="#" data-scroll-to="#testimonials">Testimonials<span>02</span></a></li>
					<li><a href="#" data-scroll-to="#news">Latest<span>03</span></a></li>
				</ul>
			</div>
		</div>
	</div>
	
	
	<!-- News -->

	<div class="news">
		<div class="container">
			<div class="row" >
				<div class="card">
					<div class="card-body">
							<nav>
								<div class="nav nav-tabs" id="nav-tab" role="tablist">
									<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
										aria-controls="nav-home" aria-selected="true">1터미널</a> 
									<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"
										aria-controls="nav-profile" aria-selected="false">2터미널</a>
								</div>
							</nav>
							
							<div class="tab-content pl-3 pt-2" id="nav-tabContent" >
								<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
									<div id="map1" style="width: 1005px; height: 700px; margin-top: 50px"></div>
									<div class="mapinfo row" >
									<span class="col-sm-7">업데이트 시간: ${ptginfo1.cgthm}</span>
									<span class="col-sm-5">Blue: 원활, Green: 보통, Yellow: 혼잡, Red: 매우혼잡, Gray: 종료</span>
									</div>
									<hr/>
									<div class="row" >
									<span class="day col-sm-8">${ppinfolist1.get(0).adate }</span>
									<span class="col-sm-4"><input type="button" class="today btn btn-sm btn-info" value="오늘">
									<input type="button" class="tomorrow btn btn-sm btn-info"  value="내일">
										<select>
											<option value="">20180925</option>
											<option value="">20180925</option>
											<option value="">20180925</option>
										</select>
									</span>
									</div>
									<div class="gate_detail"  style="margin: auto;">
									<table class="table">
										<thead>
											<tr>
												<th>시간</th>
												<th>5번출국장</th>
												<th>4번출국장</th>
												<th>3번출국장</th>
												<th>2번출국장</th>
											</tr>
										</thead>
										<tbody id="gate1_detail">
											<c:forEach var="ppinfo" items="${ppinfolist1}">
												<tr>
													<td>${ppinfo.atime }</td>
													<td>${ppinfo.t1sum8 }</td>
													<td>${ppinfo.t1sum7 }</td>
													<td>${ppinfo.t1sum6 }</td>
													<td>${ppinfo.t1sum5 }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									</div>
								</div>
								<div class="tab-pane fade active" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
									<div id="map2" style="width: 1005px; height: 700px; margin-top: 50px"></div>
									<div class="mapinfo row" >
									<span class="col-sm-7">업데이트 시간: ${ptginfo2.cgthm}</span>
									<span class="col-sm-5">Blue: 원활, Green: 보통, Yellow: 혼잡, Red: 매우혼잡, Gray: 종료</span>
									</div>
									<hr/>
										<div class="row" >
									<span class="day col-sm-8">${ppinfolist2.get(0).adate }</span>
									<span class="col-sm-4"><input type="button" class="today btn btn-sm btn-info"  value="오늘">
										<input type="button" class="tomorrow btn btn-sm btn-info"  value="내일">
										<select>
											<option value="">20180925</option>
											<option value="">20180925</option>
											<option value="">20180925</option>
										</select>
										</span>
									</div>
									<div class="gate2_detail" style="margin: auto;">
									<table class="table">
										<thead>
											<tr>
												<th>시간</th>
												<th>2번출국장</th>
												<th>1번출국장</th>
											</tr>
										</thead>
										<tbody id="gate2_detail">
										<c:forEach var="ppinfo" items="${ppinfolist1}">
											<tr>
												<td>${ppinfo.atime }</td>
												<td>${ppinfo.t2sum4 }</td>
												<td>${ppinfo.t2sum3 }</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
									</div>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<!-- <style>
.customoverlay {position:relative;bottom:85px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;}
.customoverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.customoverlay a {display:block;text-decoration:none;color:#000;text-align:center;border-radius:6px;font-size:14px;font-weight:bold;overflow:hidden;background: #d95050;background: #d95050 url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.customoverlay .title {display:block;text-align:center;background:#fff;margin-right:35px;padding:10px 15px;font-size:14px;font-weight:bold;}
.customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
</style> -->
<script>
var mapContainer = document.getElementById('map1'), // 지도를 표시할 div
mapOption = {
	center : new daum.maps.LatLng(37.448180, 126.451617), // 지도의 중심좌표
	draggable : false, // 지도고정
	level : 3
// 지도의 확대 레벨
};
var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var gateinfo2 = ${ptginfo1.gateinfo1}
var gateinfo3 = ${ptginfo1.gateinfo2}
var gateinfo4 = ${ptginfo1.gateinfo3}
var gateinfo5 = ${ptginfo1.gateinfo4}
var gate2 = ${ptginfo1.gate1}
var gate3 = ${ptginfo1.gate2}
var gate4 = ${ptginfo1.gate3}
var gate5 = ${ptginfo1.gate4}
// 마커를 표시할 위치와 title 객체 배열입니다
function getGate(gatename, gate, gateinfo){
	if(gate==0){
		content='<div style="color: blue;">'+gatename+':'+gateinfo+'명<div>';
	}else if(gate==1){
		content='<div style="color: green;">'+gatename+':'+gateinfo+'명<div>';
	}else if(gate==2){
		content='<div style="color: orange;">'+gatename+':'+gateinfo+'명<div>';
	}else if(gate==3){
		content='<div style="color: red;">'+gatename+':'+gateinfo+'명<div>';
	}else if(gate==9){
		content='<div>'+gatename+':'+gateinfo+'명<div>';
	}
	return content;
}
var content2=getGate("GATE2",gate2,gateinfo2)
var content3=getGate("GATE3",gate3,gateinfo3)
var content4=getGate("GATE4",gate4,gateinfo4)
var content5=getGate("GATE5",gate5,gateinfo5)

function getImg(gate){
	if(gate==0){
		imageSrc = "/airport/resources/common/markericon/employment3.png";
	}else if(gate==1){
		imageSrc = "/airport/resources/common/markericon/employment4.png";
	}else if(gate==2){
		imageSrc = "/airport/resources/common/markericon/employment5.png";
	}else if(gate==3){
		imageSrc = "/airport/resources/common/markericon/employment2.png";
	}else if(gate==9){
		imageSrc = "/airport/resources/common/markericon/tiffin-services.png";
	}
	return imageSrc;
}

// 마커 이미지의 이미지 주소입니다
imageSrc1 = "/airport/resources/common/markericon/employment.png";
imageSrc2 = getImg(gate2)
imageSrc3 = getImg(gate3)
imageSrc4 = getImg(gate4)
imageSrc5 = getImg(gate5)
imageSrc6 = "/airport/resources/common/markericon/employment.png";

var imageSrcs = [{imageSrc:imageSrc1},
	{imageSrc:imageSrc2},
	{imageSrc:imageSrc3},
	{imageSrc:imageSrc4},
	{imageSrc:imageSrc5},
	{imageSrc:imageSrc6}]

var positions = [ {
	content : '<div>GATE1<div>',
	latlng : new daum.maps.LatLng(37.450347, 126.454258)
}, {
	content : content2,
	latlng : new daum.maps.LatLng(37.450280, 126.453037)
}, {
	content : content3,
	latlng : new daum.maps.LatLng(37.449976, 126.451739)
}, {
	content : content4,
	latlng : new daum.maps.LatLng(37.448835, 126.449808)
}, {
	content : content5,
	latlng : new daum.maps.LatLng(37.448017, 126.448981)
}, {
	content : '<div>GATE6<div>',
	latlng : new daum.maps.LatLng(37.447149, 126.448445)
} ];


for (var i = 0; i < positions.length; i++) {

	// 마커 이미지의 이미지 크기 입니다
	var imageSize = new daum.maps.Size(24, 35);

	// 마커 이미지를 생성합니다
	var markerImage = new daum.maps.MarkerImage(imageSrcs[i].imageSrc, imageSize);

	// 마커를 생성합니다
	var marker = new daum.maps.Marker({
		map : map, // 마커를 표시할 지도
		position : positions[i].latlng, // 마커를 표시할 위치
		title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		image : markerImage
	});

	var infowindow = new daum.maps.InfoWindow({
		content : positions[i].content
	// 인포윈도우에 표시할 내용
	});
	daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map,
			marker, infowindow));
	daum.maps.event
			.addListener(marker, 'mouseout', makeOutListener(infowindow));
}

// 인포윈도우를 표시하는 클로저를 만드는 함수입니다
function makeOverListener(map, marker, infowindow) {
	return function() {
		infowindow.open(map, marker);
	};
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다
function makeOutListener(infowindow) {
	return function() {
		infowindow.close();
	};
}
/* var content = '<div class="customoverlay">' +
'  <a href="http://map.daum.net/link/map/11394059" target="_blank">' +
'    <span class="title">구의야구공원</span>' +
'  </a>' +
'</div>';

//커스텀 오버레이가 표시될 위치입니다 
var position = new daum.maps.LatLng(37.447149, 126.448445);  

//커스텀 오버레이를 생성합니다
var customOverlay = new daum.maps.CustomOverlay({
map: map,
position: position,
content: content,
yAnchor: 1 
}); */


</script>
<script type="text/javascript">
var mapContainer = document.getElementById('map2'), // 지도를 표시할 div
mapOption = {
	center : new daum.maps.LatLng(37.467852, 126.433843), // 지도의 중심좌표
	draggable : false,
	level : 3
// 지도의 확대 레벨
};

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var gateinfo1 = ${ptginfo2.gateinfo1}
var gateinfo2 = ${ptginfo2.gateinfo2}
var gate1 = ${ptginfo2.gate1}
var gate2 = ${ptginfo2.gate2}
// 마커를 표시할 위치와 title 객체 배열입니다
function getGate(gatename, gate, gateinfo){
	if(gate==0){
		content='<div style="color: blue;">'+gatename+':'+gateinfo+'명<div>'
	}else if(gate==1){
		content='<div style="color: green;">'+gatename+':'+gateinfo+'명<div>'
	}else if(gate==2){
		content='<div style="color: orange;">'+gatename+':'+gateinfo+'명<div>'
	}else if(gate==3){
		content='<div style="color: red;">'+gatename+':'+gateinfo+'명<div>'
	}else if(gate==9){
		content='<div>'+gatename+':'+gateinfo+'명<div>'
	}
	return content;
}
var content1=getGate("GATE1",gate1,gateinfo1)
var content2=getGate("GATE2",gate2,gateinfo2)

// 마커를 표시할 위치와 title 객체 배열입니다
var positions = [ {
	content : content1,
	latlng : new daum.maps.LatLng(37.467625, 126.435449)
}, {
	content : content2,
	latlng : new daum.maps.LatLng(37.467080, 126.434331)
} ];

function getImg(gate){
	if(gate==0){
		imageSrc = "/airport/resources/common/markericon/employment3.png";
	}else if(gate==1){
		imageSrc = "/airport/resources/common/markericon/employment4.png";
	}else if(gate==2){
		imageSrc = "/airport/resources/common/markericon/employment5.png";
	}else if(gate==3){
		imageSrc = "/airport/resources/common/markericon/employment2.png";
	}else if(gate==9){
		imageSrc = "/airport/resources/common/markericon/tiffin-services.png";
	}
	return imageSrc;
}

// 마커 이미지의 이미지 주소입니다
imageSrc1 = getImg(gate1)
imageSrc2 = getImg(gate2)

var imageSrcs = [{imageSrc:imageSrc1},
	{imageSrc:imageSrc2}]
	

for (var i = 0; i < positions.length; i++) {

	// 마커 이미지의 이미지 크기 입니다
	var imageSize = new daum.maps.Size(24, 35);

	// 마커 이미지를 생성합니다
	var markerImage = new daum.maps.MarkerImage(imageSrcs[i].imageSrc, imageSize);

	// 마커를 생성합니다
	var marker = new daum.maps.Marker({
		map : map, // 마커를 표시할 지도
		position : positions[i].latlng, // 마커를 표시할 위치
		title : positions[i].title, // 마커의 타이틀, 마커에마우스를 올리면 타이틀이 표시됩니다
		image : markerImage
	// 마커 이미지
	});

	var infowindow = new daum.maps.InfoWindow({
		content : positions[i].content
	// 인포윈도우에 표시할 내용
	});
	daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map,
			marker, infowindow));
	daum.maps.event
			.addListener(marker, 'mouseout', makeOutListener(infowindow));
}

// 인포윈도우를 표시하는 클로저를 만드는 함수입니다
function makeOverListener(map, marker, infowindow) {
	return function() {
		infowindow.open(map, marker);
	};
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다
function makeOutListener(infowindow) {
	return function() {
		infowindow.close();
	};
}
</script>
<script src="/airport/resources/js/news.js"></script>
</body>
</html>