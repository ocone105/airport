<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a278f885094d42e1e7475ea96828d5a1"></script>
</head>
<body>
		<div class="faq">
			<h4>인원배치</h4>
			
			<div id="map" style="width: 1005px; height: 700px; margin-top: 100px"></div>
			<div id="result"></div>
				
			<script type="text/javascript">
				$(document).ready(function(){
					
					var imageSrc = '/airport/resources/logo/씨에어.jpg', // 마커이미지의 주소입니다    
				    imageSize = new daum.maps.Size(64, 69), // 마커이미지의 크기입니다
				    imageOption = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
				      
				// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
				var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption);


					var markers = [
						<c:forEach items="${pfinfo}" var="pfmarker"> 
						    {
						        position: new daum.maps.LatLng(${pfmarker.pfloc}),
						        text: '${pfmarker.pfname}',
						        image: markerImage
						    },
						</c:forEach>
				    {
			            position: new daum.maps.LatLng(37.447149, 126.448445), 
			            text: 'Gate6' 
			        }
				    ];
					
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
	
			<!-- 인원배치 리스트 -->
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
										<th>관리부서</th>
										<th>현재인원</th>
									</thead>
									<tbody>
										<c:forEach items="${pfinfo}" var="pfinfo">
											<tr>
												<td>${pfinfo.pfinfono}</td>
												<td><a href="/airport/erp/pfrequest.do">${pfinfo.pfname}</a></td>
												<td>
													<c:forEach items="${pfteam}" var="pfteam">
														<c:if test="${pfteam.pfinfono==pfinfo.pfinfono}">
															${pfteam.deptno}
														</c:if>
													</c:forEach>
												</td>
												<td>
													<c:forEach items="${pfteam}" var="pfteam">
														<c:if test="${pfteam.pfinfono==pfinfo.pfinfono}">
															${pfteam.currentstaff}
														</c:if>
													</c:forEach>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
	</div>

</body>
</html>