<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a278f885094d42e1e7475ea96828d5a1"></script>
<link rel="stylesheet" type="text/css" href="/airport/resources/styles/marker.css">
</head>
<body>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header card-header-warning">
							<h4 class="card-title">인원배치</h4>
							<p class="card-category">여객시설팀</p>
						</div>
						<div class="card-body">

							<div id="map" style="width: 1200px; height: 1000px; margin-top: 50px; margin:0 auto;"></div>

							<script type="text/javascript">
								var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								mapOption = {
									center : new daum.maps.LatLng(37.448921, 126.451456), // 지도의 중심좌표
									level : 2,
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
											+ '<a href="/airport/erp/pfrequest.do?pfname=${pfinfo.pfname}">'
											+ '<span class="title">${pfinfo.pfname}</span>' + '</a>' + '</div>',
										yAnchor : 1
										}),
									</c:forEach>
									new daum.maps.CustomOverlay({
									map : map,
									position : new daum.maps.LatLng(37.447149, 126.448445),
									content : '<div class="customoverlay">'
										+ '<a href="http://naver.com">'
										+ '<span class="title">GATE6</span>' + '</a>' + '</div>',
									yAnchor : 1
								})]; 
								
							</script>

							<!-- 인원배치 리스트 -->
							<div class="col-md-12">
								<div class="card">
									<div class="card-body">
										<div class="table-responsive">
											<table class="table" style="text-align: center">
												<thead class=" text-primary">
													<th>여객시설번호</th>
													<th>시설이름</th>
													<th>관리부서</th>
													<th>현재인원</th>
													<th>확인</th>
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
															<td>
																<c:forEach items="${pfinfono}" var="no">
																<c:if test="${pfinfo.pfinfono==no}">
																	<button type="button" rel="tooltip" title="Check" class="btn btn-danger btn-link btn-sm" onclick="window.open('/airport/erp/pfrequestCheck.do?pfinfono=${pfinfo.pfinfono}')">
																		<i class="material-icons">check</i>
																	</button>
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
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>