<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col">
					<div
						class="header_content d-flex flex-row align-items-center justify-content-start">
						<div
							class="header_content_inner d-flex flex-row align-items-end justify-content-start">
							<div class="logo">
								<a href="/airport/main/index.do">Airport</a> | <a
									href="/airport/erp/index.do">Corporation</a>
							</div>
							<nav class="main_nav">
								<ul
									class="d-flex flex-row align-items-start justify-content-start">
									<li class="active"><a href="/airport/main/index.do">Airport</a></li>
									<li><a href="/airport/main/realtime.do">실시간정보</a></li>
									<li><a href="/airport/main/passenger.do">예상승객</a></li>
									<li><a href="/airport/main/flight.do">지연결항</a></li>
									
									<%-- <se:authorize access="isAuthenticated()"> --%>
									<li><a href="/airport/main/myservice.do">My Service</a></li>
									<%-- </se:authorize> --%>
									
									<!-- 로그인 로그아웃 -->
									<c:choose>
										<c:when test="${empty loginUser}">
											<li><a href="/airport/main/signin.do">Sign in</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/airport/member/logout.do">Logout</a></li>
										</c:otherwise>
									</c:choose>
									
								</ul>
							</nav>

							<!-- Hamburger -->

							<div class="hamburger ml-auto">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div
			class="header_social d-flex flex-row align-items-center justify-content-start">
			<ul class="d-flex flex-row align-items-start justify-content-start">
				<li><a href="#"><i class="fa fa-pinterest"
						aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-facebook"
						aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-dribbble"
						aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin"
						aria-hidden="true"></i></a></li>
			</ul>
		</div>
	</header>
	<script src="/airport/resources/js/jquery-3.2.1.min.js"></script>
	<script src="/airport/resources/styles/bootstrap4/popper.js"></script>
	<script src="/airport/resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script
		src="/airport/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="/airport/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script
		src="/airport/resources/plugins/scrollTo/jquery.scrollTo.min.js"></script>
	<script src="/airport/resources/plugins/easing/easing.js"></script>
	<script
		src="/airport/resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="/airport/resources/js/custom.js"></script>
</body>
</html>
