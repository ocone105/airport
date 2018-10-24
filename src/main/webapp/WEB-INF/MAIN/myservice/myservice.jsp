<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/airport/resources/styles/member.css">
<<<<<<< HEAD

=======
<!-- <link rel="stylesheet" type="text/css"
	href="/airport/resources/styles/contact_responsive.css"> -->
	
	<link href="/airport/resources/list/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/airport/resources/list/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
>>>>>>> refs/remotes/origin/osw

</head>
<body>

	<div class="home">
		<!-- Home Slider -->
			<div class="owl-carousel owl-theme home_slider">
				
				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(/airport/resources/images/contact.jpg)"></div>
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
	</div>

	<!-- content -->

	<div class="container">
		<div class="container-fluid">
			<div class="row">

				<div class="col-md-12" >
					<div class="card-body">
						<div
							class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
							<div class="panel panel-info">
								<div class="panel-heading">
									<h3 class="panel-title" style="color: black;">회원정보</h3>
								</div>
								<div class="panel-body">
									<div class="row">
										<table class="table table-user-information">
											<tbody>
												<tr>
													<td class="td">아이디</td>
													<td>${member.id}</td>
												</tr>
												<tr>
													<td class="td">이름</td>
													<td>${member.name}</td>
												</tr>
												<tr>
													<td class="td">이메일</td>
													<td>${member.email }</td>
													<td>수신여부: ${member.email_alarm }</td>
												</tr>
												<tr>
													<td class="td">전화번호</td>
													<td>${member.phone }</td>
													<td>수신여부: ${member.sms_alarm }</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="panel-footer">
									<a href="/airport/main/myservice/withdraw.do?id=${member.id }"
										class="btn red"><span>회원탈퇴</span></a> <a
										href="/airport/main/myservice/update.do?id=${member.id }"
										class="btn orange"><span>수정</span></a>

								</div>

							</div>
						</div>
					</div>
				</div>

				<form class="form-horizontal" action="/airport/main/myservice/myFlightDelete.do">
				<!-- 관심 항공 -->
				<div class="col-md-12">
					<div class="card-body">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">나의 관심 항공</h3>
							</div>
							<div class="table-responsive table-data">
								<table class="table">
									<thead>
										<tr>
											<td>
												<!-- 								<label class="au-checkbox"> 
									<input type="checkbox"> <span class="au-checkmark"></span>
									</label> -->
											</td>
											<td>Airline/Flight
											<td />
											<td></td>
											<td>Destination</td>
											<td>Departure Time</td>
											<td>GATE</td>
											<td>Status</td>
											<td>비정상운항(%)</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="info" items="${myflight}">
											<tr>
												<td><label class="au-checkbox"> 
												<input type="checkbox" value="${info.flightId}+${info.airline}+${info.airport}+${info.scheduleDateTime}+${info.gatenumber}+${info.remark}+${info.delay}" name="info"> 
												<span class="au-checkmark"></span>
												</label></td>
												<td>
													<div class="table-data__info">
														<h6>${info.flightId}</h6>
														<span> ${info.airline} </span>
													</div>
												</td>
												<td></td>
												<td><img
													src="/airport/resources/logo/${info.airline}.jpg" width=300
													height="100"></td>
												<td>
													<div class="table-data__info">
														<h6>${info.airport}</h6>
													</div>
												</td>
												<td>
													<h6>${info.scheduleDateTime}</h6>
												</td>
												<td>${info.gatenumber}</td>
												<td><c:if test="${info.remark=='출발'}">
														<span class="role user">${info.remark}</span>
													</c:if> <c:if test="${empty info.remark}">
														<c:if test="${!empty info.gatenumber}">
															<span class="role member">탑승중</span>
														</c:if>
													</c:if> <!-- <span class="role admin">결항</span> --></td>
												<td>${info.delay}<!-- <span class="more"> <i class="zmdi zmdi-more"></i></span> -->
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
											
							<div class="user-data__footer row">
								<div class="col-sm-10"></div>
								<div class="col-sm-2">
								<div class="user-data__footer">
									<button class="btn red au-btn au-btn-load">항공 삭제</button>
								</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>




	<script
		src="/airport/resources/https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
	<script src="/airport/resources/js/contact.js"></script>
</body>
</html>