<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ebf7b2f2c5987b5f48041fd7c1490397"></script>
</head>
<body>
	<div class="content">
		<div class="faq">
			<h4>인원배치</h4>
			<div class="tab-content pl-3 pt-2" id="nav-tabContent">
								<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
										<div id="map" style="width: 1005px; height: 700px; margin-top: 100px"></div>
								</div>
								<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
									<div id="map" style="width: 1005px; height: 700px; margin-top: 100px"></div>
								</div>
							</div>
											<!-- Map -->
				
									<script>
										var mapContainer = document
												.getElementById('map'), // 지도를 표시할 div  
										mapOption = {
											center : new daum.maps.LatLng(
													37.448180, 126.451617), // 지도의 중심좌표
											level : 3
										// 지도의 확대 레벨
										};

										var map = new daum.maps.Map(
												mapContainer, mapOption); // 지도를 생성합니다

										// 마커를 표시할 위치와 title 객체 배열입니다 
										var positions = [
												{
													content : '<div>GATE1<div>',
													latlng : new daum.maps.LatLng(
															37.450347,
															126.454258)
												},
												{
													content : '<div>GATE2<div>',
													latlng : new daum.maps.LatLng(
															37.450280,
															126.453037)
												},
												{
													content : '<div>GATE3<div>',
													latlng : new daum.maps.LatLng(
															37.449976,
															126.451739)
												},
												{
													content : '<div>GATE4<div>',
													latlng : new daum.maps.LatLng(
															37.448835,
															126.449808)
												},
												{
													content : '<div>GATE5<div>',
													latlng : new daum.maps.LatLng(
															37.448017,
															126.448981)
												},
												{
													content : '<div>GATE6<div>',
													latlng : new daum.maps.LatLng(
															37.447149,
															126.448445)
												} ];

										// 마커 이미지의 이미지 주소입니다
										var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

										for (var i = 0; i < positions.length; i++) {

											// 마커 이미지의 이미지 크기 입니다
											var imageSize = new daum.maps.Size(
													24, 35);

											// 마커 이미지를 생성합니다    
											var markerImage = new daum.maps.MarkerImage(
													imageSrc, imageSize);

											// 마커를 생성합니다
											var marker = new daum.maps.Marker({
												map : map, // 마커를 표시할 지도
												position : positions[i].latlng, // 마커를 표시할 위치
												title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
												image : markerImage
											// 마커 이미지 
											});

											var infowindow = new daum.maps.InfoWindow(
													{
														content : positions[i].content
													// 인포윈도우에 표시할 내용
													});
											daum.maps.event
													.addListener(marker,
															'mouseover',
															makeOverListener(
																	map,
																	marker,
																	infowindow));
											daum.maps.event
													.addListener(
															marker,
															'mouseout',
															makeOutListener(infowindow));
										}

										// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
										function makeOverListener(map, marker,
												infowindow) {
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
									
									<!-- End Map -->
			
			
			
			
			<div id="acordeon">
				<div class="row panel-group" id="accordion">
					<div class="col-sm-5 panel panel-border panel-default">
						<a data-toggle="collapse" href="#collapseOne">
							<div class="panel-heading">
								<h4 class="panel-title">
									분류1 <i class="fa fa-chevron-down"></i>
								</h4>
							</div>
						</a>
						<div id="collapseOne" class="panel-collapse collapse">
							<div class="panel-body">분류1 분류1</div>
						</div>
					</div>
					<div class="col-sm-5 panel panel-border panel-default">
						<a data-toggle="collapse" href="#collapseTwo">
							<div class="panel-heading">
								<h4 class="panel-title">
									분류2 <i class="fa fa-chevron-down"></i>
								</h4>
							</div>
						</a>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">분류2 분류2</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-12">
					<div class="card">
						<div class="card-header card-header-info">
							<h4 class="card-title ">인원배치</h4>
							<p class="card-category">
								<!-- 검색명 -->
							</p>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table">
									<thead class=" text-primary">
										<th>여객시설번호</th>
										<th>시설이름</th>
										<th>배치인원이름</th>
										<th>관리부서</th>
										<th>현재인원</th>
									</thead>
									<tbody>
										<tr>
											<td>001</td>
											<td><a href="#">시설이름</a></td>
											<td>사원이름</td>
											<td>부서이름</td>
											<td>5</td>
										</tr>
										<tr>
											<td>001</td>
											<td><a href="#">시설이름</a></td>
											<td>사원이름</td>
											<td>부서이름</td>
											<td>5</td>
										</tr>
										<tr>
											<td>001</td>
											<td><a href="#">시설이름</a></td>
											<td>사원이름</td>
											<td>부서이름</td>
											<td>5</td>
										</tr><tr>
											<td>001</td>
											<td><a href="#">시설이름</a></td>
											<td>사원이름</td>
											<td>부서이름</td>
											<td>5</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
	</div>
</body>
</html>