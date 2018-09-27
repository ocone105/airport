<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/airport/resources/styles/contact.css">
<link rel="stylesheet" type="text/css"
	href="/airport/resources/styles/contact_responsive.css">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a278f885094d42e1e7475ea96828d5a1"></script>
<style>
.customoverlay {
	position: relative;
	bottom: 80px;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	width: 100px;
	height: 5px;
	float: left;
}

.customoverlay:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.customoverlay a {
	display: block;
	text-decoration: none;
	color: #000;
	text-align: center;
	border-radius: 6px;
	font-size: 14px;
	font-weight: bold;
	overflow: hidden;
	background: #d95050;
	background: #d95050
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.customoverlay .title {
	display: block;
	text-align: center;
	background: #fff;
	margin-right: 35px;
	padding: 10px 15px;
	font-size: 14px;
	font-weight: bold;
}

.customoverlay:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: -12px;
	width: 10px;
	height: 12px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}
</style>
</head>
<body>

<div class="home">
		<div class="background_image" style="background-image:url(/airport/resources/images/news.jpg)"></div>
	</div>
	<div id="map" style="width: 1005px; height: 700px; margin-top: 100px"></div>

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.448180, 126.451617), // 지도의 중심좌표
			level : 3,
			draggable : false
		// 지도의 확대 레벨
		};

		var map = new daum.maps.Map(mapContainer, mapOption);
	
		<c:forEach begin="0" end="${fn:length(pfinfo)-1}" varStatus="pf">
			var marker = new daum.maps.Marker({
				position : new daum.maps.LatLng(${pfinfo[pf.index].pfloc}),
				image : 
						new daum.maps.MarkerImage('/airport/resources/common/markericon/${pfinfo[pf.index].pfname}.png',	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
						new daum.maps.Size(30,35))  // 마커가 표시될 위치입니다
			});
			marker.setMap(map);
		</c:forEach>

		// 커스텀 오버레이를 생성합니다
		var customOverlay = [
			<c:forEach items="${pfinfo}" var="pfinfo"> 
				new daum.maps.CustomOverlay({
				map : map,
				position :new daum.maps.LatLng(${pfinfo.pfloc}),
				content : '<div class="customoverlay">'
					+ '<a href="/airport/erp/pfrequest.do?pfname=${pfinfo.pfname}" target="_blank">'
					+ '<span class="title">${pfinfo.pfname}</span>' + '</a>' + '</div>',
				yAnchor : 1
				}),
			</c:forEach>
			new daum.maps.CustomOverlay({
			map : map,
			position : new daum.maps.LatLng(37.447149, 126.448445),
			content : '<div class="customoverlay">'
				+ '<a href="http://naver.com" target="_blank">'
				+ '<span class="title">GATE6</span>' + '</a>' + '</div>',
			yAnchor : 1
		})]; 
		
	</script>
</body>
</html>