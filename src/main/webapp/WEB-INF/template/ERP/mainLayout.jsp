<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- js -->
<script src="/airport/resources/common/js/core/jquery.min.js" type="text/javascript"></script>
<script src="/airport/resources/common/js/core/popper.min.js" type="text/javascript"></script>
<script src="/airport/resources/common/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
<script src="/airport/resources/common/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!-- CSS Files -->
<link href="/airport/resources/common/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
<script src="/airport/resources/common/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}
/*  #toparea{
		padding: 30px;
	}  */
/* body{
		background-color: #edeef1
	} */
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<div class="main-panel">
			<tiles:insertAttribute name="menu"></tiles:insertAttribute>
			<tiles:insertAttribute name="top"></tiles:insertAttribute>
			<tiles:insertAttribute name="content"></tiles:insertAttribute>
			<tiles:insertAttribute name="footer"></tiles:insertAttribute>
		</div>
	</div>
</body>
</html>









