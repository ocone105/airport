<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel="stylesheet" type="text/css"
	href="/airport/resources/styles/contact.css">
<link rel="stylesheet" type="text/css"
	href="/airport/resources/styles/contact_responsive.css">
</head>
<body>
	<div class="home">
		<div class="background_image"
			style="background-image: url(/airport/resources/images/contact.jpg)"></div>
	</div>
	<br />

	<!-- Search -->

	<div class="home_search">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<div class="home_search_title">회원 목록</div>
						<div class="home_search_content">
							<form action="/airport/main/admin/membersearh.do" class="home_search_form"
								id="home_search_form">
								<div class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<input type="text" class="search_input search_input_1" name="search" id="search"
									placeholder="아이디 + 이름" required="required"  style="margin: auto; width: 50%;">
									<button type="submit" class="home_search_button">search</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="container-fluid">
			<div class="row">

				<div class="col-md-12">
					<div class="card-body">
						<div class="table-responsive">
							<table class="table">
								<thead class=" text-primary">
									<tr>
										<th>아이디</th>
										<th>이름</th>
										<th>전화번호</th>
										<th>이메일</th>
										<th>이메일 알림</th>
										<th>문자 알림</th>
										<th>상태</th>
									</tr>
								</thead>
								<tbody style="color: black;">
									<c:forEach var="member" items="${memberlist}">
										<tr>
											<td>${member.id }</td>
											<td>${member.name }</td>
											<td>${member.phone  }</td>
											<td>${member.email }</td>
											<td>${member.email_alarm }</td>
											<td>${member.sms_alarm }</td>
											<td>${member.state }</td>
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
	<br />

	<script
		src="/airport/resources/https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
	<script src="/airport/resources/js/contact.js"></script>

</body>
</html>