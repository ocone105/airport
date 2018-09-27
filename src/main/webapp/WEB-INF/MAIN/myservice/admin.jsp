<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/contact.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/contact_responsive.css">
</head>
<body>
	<div class="home">
		<div class="background_image" style="background-image:url(/airport/resources/images/contact.jpg)"></div>
	</div>

	<!-- Search -->
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<form class="/airport/member/search.do">
					<select name="tag">
						<option value="all">아이디+이름</option>
					</select>
					<div class="input-group no-border">
						<input type="text" value="" class="form-control"
							placeholder="Search...">
						<button type="submit"
							class="btn btn-white btn-round btn-just-icon">
							<i class="material-icons">search</i>
							<div class="ripple-container"></div>
						</button>
					</div>
				</form>
				<div class="col-md-12">
					<div class="card">
						<div class="card-header card-header-info">
							<p class="card-category">
								<!-- 검색명 -->
							</p>
						</div>
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
									<tbody>
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
	</div>



<script src="/airport/resources/https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="/airport/resources/js/contact.js"></script>

</body>
</html>