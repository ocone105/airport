<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/contact.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/contact_responsive.css">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a278f885094d42e1e7475ea96828d5a1"></script>
</head>
<body>
	<div class="home">
		<div class="background_image" style="background-image:url(/airport/resources/images/contact.jpg)"></div>
	</div>

	<div id="map" style="width: 1005px; height: 700px; margin-top: 100px"></div>
	<div id="result"></div>
	<script type="text/javascript">
	 $(document).ready(function(){
		/*  var markers = [  {
	         position: new daum.maps.LatLng(37.450280, 126.454258),
	         text: 'Gate1'
	        },
	        {
	            position: new daum.maps.LatLng(37.450280, 126.453037), 
	            text: 'Gate1'    
	        },
	        {
	            position: new daum.maps.LatLng(37.449976,
	        126.451739), 
	            text: 'Gate1' 
	        },
	        {
	            position: new daum.maps.LatLng(37.448835,
	        126.449808), 
	            text: 'Gate1'     
	        },
	        {
	            position: new daum.maps.LatLng(37.448017,
	        126.448981), 
	            text: 'Gate1'      
	        },
	        {
	            position: new daum.maps.LatLng(37.447149,
	        126.448445), 
	            text: 'Gate1' 
	        }]; */
	        var markers = []
			 <c:forEach var="pfone" items="${pf}">
				list = "{ position: new daum.maps.LatLng(${pfone.pfloc}), text: '${pfone.pfname}' },"; 
				markers.push(list);
		</c:forEach>
		$("#result").val(markers);
			
			var staticMapContainer  = document.getElementById('map'), // 이미지 지도를 표시할 div  
			    staticMapOption = { 
			        center: new daum.maps.LatLng(37.448180, 126.451617), // 이미지 지도의 중심좌표
			        level: 3, // 이미지 지도의 확대 레벨
			        marker: markers // 이미지 지도에 표시할 마커 
			    };    
			
			// 이미지 지도를 생성합니다
			var staticMap = new daum.maps.StaticMap(staticMapContainer, staticMapOption);
	 });
	</script>

</body>
</html>