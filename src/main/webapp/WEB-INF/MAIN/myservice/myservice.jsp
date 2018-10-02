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
<!-- <link rel="stylesheet" type="text/css"
	href="/airport/resources/styles/contact_responsive.css"> -->

</head>
<body>
	<div class="home">
		<div class="background_image"
			style="background-image: url(/airport/resources/images/contact.jpg)"></div>
	</div>

	<!-- Search -->

	<div class="home_search">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<div class="home_search_title">Search for your trip</div>
						<div class="home_search_content">
							<form action="#" class="home_search_form" id="home_search_form">
								<div
									class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<input type="text" class="search_input search_input_1"
										placeholder="City" required="required"> <input
										type="text" class="search_input search_input_2"
										placeholder="Departure" required="required"> <input
										type="text" class="search_input search_input_3"
										placeholder="Arrival" required="required"> <input
										type="text" class="search_input search_input_4"
										placeholder="Budget" required="required">
									<button class="home_search_button">search</button>
								</div>
							</form>
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
									<h3 class="panel-title">회원정보</h3>
								</div>
								<div class="panel-body">
									<div class="row">
											<table class="table table-user-information">
												<tbody>
													<tr>
														<td>아이디</td>
														<td>${member.id}</td>
													</tr>
													<tr>
														<td>이름</td>
														<td>${member.name}</td>
													</tr>
													<tr>
														<td>이메일</td>
														<td>${member.email }</td>
														<td>수신여부: ${member.email_alarm }</td>
													</tr>
													<tr>
														<td>전화번호</td>
														<td>${member.phone }</td>
														<td>수신여부: ${member.sms_alarm }</td>
													</tr>
												</tbody>
											</table>
									</div>
								</div>
								<div class="panel-footer">
									<a href="/airport/main/myservice/withdraw.do?id=${member.id }"
										class="btn red"><span>회원탈퇴</span></a>
									<a href="/airport/main/myservice/update.do?id=${member.id }"
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