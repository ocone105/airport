<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//전화번호 자동하이픈
	$(document)
			.ready(
					function() {
						$(function() {
							$("#phone")
									.keydown(
											function(event) {
												var key = event.charCode
														|| event.keyCode || 0;
												$text = $(this);
												if (key !== 8 && key !== 9) {
													if ($text.val().length === 3) {
														$text.val($text.val()
																+ '-');
													}
													if ($text.val().length === 8) {
														$text.val($text.val()
																+ '-');
													}
												}
												return (key == 8
														|| key == 9
														|| key == 46
														|| (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
											})
						});
					});

	function update() {
		if ($('input:checkbox[id="email_alarm"]').is(':checked')) {
			$(document.forms["myform"].email_alarm).val('y')
		}
		if ($('input:checkbox[id="sms_alarm"]').is(':checked')) {
			$(document.forms["myform"].sms_alarm).val('y')
		}

		document.myform.submit();
	}
</script>
<link rel="stylesheet" type="text/css"
	href="/airport/resources/styles/member.css">
<!-- <link rel="stylesheet" type="text/css"
	href="/airport/resources/styles/contact_responsive.css"> -->

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
					<div class="card-body">
						<div
							class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
							<form class="form-horizontal" method="post" id="myform"
								name="myform" action="/airport/main/myservice/update.do">
								<div class="panel panel-info">
									<div class="panel-heading">
										<h3 class="panel-title" style="color: black;">회원정보 수정</h3>
									</div>

									<div class="panel-body">
										<div class="row">
											<table class="table table-user-information">
												<tbody>
													<tr>
														<td class="td">아이디</td>
														<td>${member.id}</td>
														<input type="hidden" name="id" value="${member.id }" />
													</tr>
													<tr>
														<td class="td">이름</td>
														<td>${member.name}</td>
														<input type="hidden" name="name" value="${member.name }" />

													</tr>
													<tr>
														<td class="td">이메일</td>
														<td><input type="email" name="email" id="email"
															value=${member.email } class="form-email form-control"
															required></td>
														<td>수신여부: <input type="checkbox" name="email_alarm"
															id="email_alarm"></td>
													</tr>
													<tr>
														<td class="td">전화번호</td>
														<td><input type="text" name="phone" id="phone"
															value=${member.phone } class="form-phone form-control"
															maxlength="13" required></td>
														<td>수신여부: <input type="checkbox" name="sms_alarm"
															id="sms_alarm"></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="panel-footer">
										<button type="button" class="btn green"
											onclick="return update()">수정완료</button>
									</div>
								</div>
							</form>
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