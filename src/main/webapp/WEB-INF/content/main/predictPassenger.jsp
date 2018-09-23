<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>  
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/news.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/news_responsive.css">
	<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ebf7b2f2c5987b5f48041fd7c1490397"></script> -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a278f885094d42e1e7475ea96828d5a1"></script>
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
									<div class="mapinfo " style="margin-left: 55%;"  >
									Blue: 원활, Yellow: 보통, Orange: 혼잡, Red: 매우혼잡, Grey: 종료
									</div>
									<hr/>
									<div class="selectdate" style="margin-left: 80%;">
										<span><a href="#">오늘</a></span>
										<span><a href="#">내일</a></span>
										<span><select>
											<option value="">20180925</option>
											<option value="">20180925</option>
											<option value="">20180925</option>
										</select></span>
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
											<tr>
												<td>test</td>
												<td>test</td>
												<td>test</td>
												<td>test</td>
												<td>test</td>
											</tr>
										</tbody>
									</table>
									</div>
								</div>
								<div class="tab-pane fade active" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
									<div id="map2" style="width: 1005px; height: 700px; margin-top: 50px"></div>
									<div class="mapinfo" style="margin-left: 55%;" >
									Blue: 원활, Yellow: 보통, Orange: 혼잡, Red: 매우혼잡, Grey: 종료
									</div>
									<hr/>
									<div class="selectdate" style="margin-left: 80%;">
										<span><a href="#">오늘</a></span>
										<span><a href="#">내일</a></span>
										<span><select>
											<option value="">20180925</option>
											<option value="">20180925</option>
											<option value="">20180925</option>
										</select></span>
									</div>
									<div class="gate_detail" style="margin: auto;">
									<table class="table">
										<thead>
											<tr>
												<th>시간</th>
												<th>2번출국장</th>
												<th>1번출국장</th>
											</tr>
										</thead>
										<tbody id="gate2_detail">
											<tr>
												<td>test</td>
												<td>test</td>
												<td>test</td>
											</tr>
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
		content='<div style="color: blue;">'+gatename+':'+gateinfo+'명<div>'
	}else if(gate==1){
		content='<div style="color: yellow;">'+gatename+':'+gateinfo+'명<div>'
	}else if(gate==2){
		content='<div style="color: orange;">'+gatename+':'+gateinfo+'명<div>'
	}else if(gate==3){
		content='<div style="color: red;">'+gatename+':'+gateinfo+'명<div>'
	}else if(gate==9){
		content='<div>'+gatename+':'+gateinfo+'명<div>'
	}
	return content;
}
var content2=getGate("GATE2",gate2,gateinfo2)
var content3=getGate("GATE3",gate3,gateinfo3)
var content4=getGate("GATE4",gate4,gateinfo4)
var content5=getGate("GATE5",gate5,gateinfo5)


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

// 마커 이미지의 이미지 주소입니다
var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

for (var i = 0; i < positions.length; i++) {

	// 마커 이미지의 이미지 크기 입니다
	var imageSize = new daum.maps.Size(24, 35);

	// 마커 이미지를 생성합니다
	var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);

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
		content='<div style="color: yellow;">'+gatename+':'+gateinfo+'명<div>'
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

// 마커 이미지의 이미지 주소입니다
var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

for (var i = 0; i < positions.length; i++) {

	// 마커 이미지의 이미지 크기 입니다
	var imageSize = new daum.maps.Size(24, 35);

	// 마커 이미지를 생성합니다
	var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize);

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