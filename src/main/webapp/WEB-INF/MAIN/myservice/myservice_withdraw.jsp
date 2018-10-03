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

<script type="text/javascript">
	function withdraw() {
		$.ajax({
			url : "/airport/main/myservice/withdraw.do",
			type : "post",
			data : {
				"id" : $("#id").val(),
				"pwd" : $("#pwd").val(),
			},
			success : function(data) {
				if (data == 0) {
					alert("비밀번호를 확인해주세요.");
				} else if (data == 1) {
					alert("탈퇴 완료");
					location.href = "/airport/main/index.do";
				}
			}
		})
	}
</script>

</head>
<body>
	<div class="home">
		<!-- Home Slider -->
		<div class="owl-carousel owl-theme home_slider">

			<!-- Slide -->
			<div class="owl-item">
				<div class="background_image"
					style="background-image: url(/airport/resources/images/contact.jpg)"></div>
				<div class="home_slider_content_container">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="home_slider_content">
									<div class="home_title">
										<h2>Let us take you away</h2>
									</div>
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
					<div class="panel-footer" style="text-align: center; margin: auto;">
						<br /> <img src="/airport/resources/images/unjoin.png">
						<p style="font-size: 24px; margin: auto;">회원탈퇴를 원하시면 비밀번호를 한번
							더 입력하시기 바랍니다.</p>
						<p style="font-size: 20px;">탈퇴 후에는 새로 회원가입을 하셔야 서비스 이용이 가능합니다.</p>
						<input style="margin: auto; width: 400px; height: 50px;"
							type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력해주세요."
							class="form-password form-control" required> <input
							type="hidden" id="id" name="id" value="${member.id }" />
					</div>
					<div class="panel-footer" style="text-align: center;">
						<button type="button" class="btn red" onclick="withdraw()">회원탈퇴</button>
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