<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/about.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/about_responsive.css">
	
	<link href="/airport/resources/list/style.css" rel="stylesheet" media="all">
	<link href="/airport/resources/list/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/airport/resources/list/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    
    <link rel="stylesheet" type="text/css" href="/airport/resources/styles/news.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/news_responsive.css">
</head>
<body>
	<div class="home">
		<div class="background_image" style="background-image:url(/airport/resources/images/about.jpg)"></div>
	</div>

	<!-- Search -->

	<div class="home_search">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<div class="home_search_title">Departures</div>
						<div class="home_search_content">
							<form action="/airport/main/realtimeSearch.do" class="home_search_form" id="home_search_form">
								<div class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<input type="text" class="search_input search_input_1" placeholder="Destination" name="destination">
									<input type="text" class="search_input search_input_2" placeholder="Airline" name="airline">
									<input type="text" class="search_input search_input_3" placeholder="Flight" name="flight">
									<input type="text" class="search_input search_input_4" placeholder="Time" name="time">
									<button type="submit" class="home_search_button">search</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="about">
	<div class="intro_background" style="background-image:url(/airport/resources/images/intro.png)"></div>
		<div class="container">

			<form class="form-horizontal" action="/airport/main/myFlight.do">
			<!-- List -->
			<div class="user-data m-b-40">
				<h3 class="title-3 m-b-30">
					<i class="zmdi zmdi-airplane"></i>Departure Schedule
				</h3>
				<div class="table-responsive table-data">
					<table class="table">
						<thead>
							<tr>
								<td>
								<!-- 	<label class="au-checkbox"> 
									<input type="checkbox"> <span class="au-checkmark"></span>
									</label> -->
								</td>
								<td>Airline/Flight
								<td>
								<td>Destination</td>
								<td>Departure Time</td>
								<td>GATE</td>
								<td>Status</td>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="info" items="${info}">
							<tr>
								<td>
									<se:authorize access="hasRole('ROLE_USER')">
									<label class="au-checkbox"> 
									<input type="checkbox" value="${info.flightId}+${info.airline}+${info.airport}+${info.time}+${info.gatenumber}+${info.remark}" name="info"> 
									<span class="au-checkmark"></span>
									</label>
									</se:authorize>
								</td>
								<td>
									<div class="table-data__info">
										<h6>${info.flightId}</h6>
										<span> <a href="#">${info.airline}</a>
										</span>
									</div>
								</td>
								<td><img src="/airport/resources/logo/${info.airline}.jpg" width=300 height="100"></td>
								<td>
									<div class="table-data__info">
										<h6>${info.airport}</h6>
									</div>
								</td>
								<td>
									<h6>${info.time}</h6>
								</td>
								<td>${info.gatenumber}</td>
								<td>
									<c:if test="${info.remark=='출발'}">
										<span class="role user">${info.remark}</span>	
									</c:if>
									<c:if test="${empty info.remark}">
										<c:if test="${!empty info.gatenumber}">
											<span class="role member">탑승중</span>
										</c:if>
									</c:if>
									<!-- <span class="role admin">결항</span> -->
								</td>
								<!-- <td><span class="more"> <i class="zmdi zmdi-more"></i>
								</span></td> -->
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="user-data__footer">
					<se:authorize access="hasRole('ROLE_USER')">
					<button type="submit" class="au-btn au-btn-load">관심 항공 등록</button>
					</se:authorize>
				</div>
			</div>
			<!-- END LIST-->
			</form>

			<!-- Pagination -->
			<!-- <div class="pagination">
				<ul class="d-flex flex-row align-items-start justify-content-start">
					<li class="active"><a href="#">1.</a></li>
					<li><a href="#">2.</a></li>
					<li><a href="#">3.</a></li>
					<li><a href="#">4.</a></li>
					<li><a href="#">5.</a></li>
				</ul>
			</div>
			</br></br> -->

		</div>
	</div>
</body>
</html>