<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>

<!-- <link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500"> -->
<link rel="stylesheet" type="text/css"
	href="/airport/resources/styles/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/airport/resources/common/css/sign/form-elements.css">
<link rel="stylesheet" type="text/css"
	href="/airport/resources/common/css/sign/signin-style.css">
<link rel="stylesheet" type="text/css"
	href="/airport/resources/common/css/sign/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="/airport/resources/styles/contact.css">
<link rel="stylesheet" type="text/css"
	href="/airport/resources/styles/contact_responsive.css">
<script src="/airport/resources/js/sign.js"></script>
<title>Insert title here</title>
</head>
<body>


	<!-- 로그인 및 회원가입 -->
	<div class="background_image"
		style="background-image: url(/airport/resources/images/greece.jpg); background-size: width: 100%;">
	</div>
	<div class="container">

		<!-- Top content -->
		<div class="top-content">

			<div class="inner-bg">
				<div class="container">

					<div class="row">
						<div class="col-sm-5">

							<div class="form-box">
								<div class="form-top">
									<div class="form-top-left">
										<h3>Login 로그인</h3>
										<p>Enter ID and password to log on:</p>
									</div>
									<div class="form-top-right">
										<i class="fa fa-sign-in"></i>
									</div>
								</div>
								<div class="form-bottom">
									<form role="form" action="" method="post" class="login-form">
										<div class="form-group">
											<label class="sr-only" for="form-username">ID 아이디</label> <input
												type="text" name="form-username" placeholder="ID"
												class="form-username form-control" id="form-username">
										</div>
										<div class="form-group">
											<label class="sr-only" for="form-password">Password
												비밀번호</label> <input type="password" name="form-password"
												placeholder="Password" class="form-password form-control"
												id="form-password">
										</div>
										<button type="submit" class="btn">Sign in 로그인</button>
									</form>
								</div>
							</div>

							<div class="form-box">
								<div class="form-top">
									<div class="form-top-left">
										<h3>SNS 로그인</h3>
									</div>
									<div class="form-top-right">
										<i class="fa fa-google-plus"></i>
									</div>
								</div>
								<div class="social-login-buttons">
									<a class="btn btn-link-2" href="#"> <i
										class="fa fa-facebook"></i> Facebook
									</a> <a class="btn btn-link-2" href="#"> <i
										class="fa fa-twitter"></i> Twitter
									</a> <a class="btn btn-link-2" href="#"> <i
										class="fa fa-google-plus"></i> Google Plus
									</a>
								</div>
							</div>

						</div>

						<div class="col-sm-1 middle-border"></div>
						<div class="col-sm-1"></div>

						<!-- 회원가입 -->
						<div class="col-sm-5">

							<div class="form-box">
								<div class="form-top">
									<div class="form-top-left">
										<h3>Sign up 회원가입</h3>
										<p>Fill in the form below to get instant access:</p>
									</div>
									<div class="form-top-right">
										<i class="fa fa-user-plus"></i>
									</div>
								</div>
								<div class="form-bottom">

									<form role="form" action="/airport/member/signup.do"
										method="post" class="registration-form">

										<div class="form-group">
											<label class="sr-only" for="form-id">ID</label> <input
												type="text" name="id" id="id" placeholder="ID 아이디"
												class="form-id form-control" required autocomplete="off">
										</div>


										<div class="form-group">
											<label class="sr-only" for="form-password">Password</label> <input
												type="password" name="pwd" id="pwd"
												placeholder="Password 비밀번호"
												class="form-password form-control" required
												autocomplete="off">
										</div>

										<div class="form-group">
											<label class="sr-only" for="form-password">Verify
												Password</label> <input type="password" name="pwd-verify"
												placeholder="Verify Password 비밀번호 확인"
												class="form-password form-control" required
												autocomplete="off">
										</div>

										<div class="form-group">
											<label class="sr-only" for="form-name">Name</label> <input
												type="text" name="name" id="name" placeholder="Name 이름"
												class="form-name form-control" required autocomplete="off">
										</div>

										<div class="form-group">
											<label class="sr-only" for="form-phone">Phone</label> <input
												type="text" name="phone" id="phone" placeholder="Phone 전화번호"
												class="form-phone form-control" maxlength="13" required
												autocomplete="off">
										</div>

										<div class="form-group">
											<label class="sr-only" for="form-email">Email</label> <input
												type="email" name="email" id="email" placeholder="Email 이메일"
												class="form-email form-control" required autocomplete="off">
										</div>

										<p style="font-size: 14pt; color: white;">Receive 알림 받기</p>
										<div class="form-group">
											<label class="control control--checkbox" for="form-alarm"></label>
											<span style="font-size: large; color: white;"> Email:
												<input type="checkbox" name="email-check" id="email-check">
											</span>&nbsp;&nbsp;&nbsp;&nbsp; <span
												style="font-size: large; color: white;"> Phone: <input
												type="checkbox" name="phone-check" id="phone-check">
											</span>
										</div>

										<button type="submit" class="btn">Sign up 회원가입</button>

									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>