<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<meta name="description" content="Travello template project">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/bootstrap4/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/plugins/OwlCarousel2-2.2.1/animate.css">
	<script src="/airport/resources/js/jquery-3.2.1.min.js"></script>
	<script src="/airport/resources/styles/bootstrap4/popper.js"></script>
	<script src="/airport/resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="/airport/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="/airport/resources/plugins/easing/easing.js"></script>
	<script src="/airport/resources/plugins/parallax-js-master/parallax.min.js"></script>
</head>
<body>
	 <div class="super_container">
		<!-- Top -->
		<tiles:insertAttribute name="top"/>
		<!-- Content -->
		<tiles:insertAttribute name="content"/>
		<!-- Footer -->
		<tiles:insertAttribute name="footer"/>
	</div>
</body>
</html>