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

				<div class="col-md-12">
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
			</div>
		</div>
	</div>




	<script
		src="/airport/resources/https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
	<script src="/airport/resources/js/contact.js"></script>
</body>
</html>