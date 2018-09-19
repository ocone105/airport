<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>


<!-- 카카오톡 로그인 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<!-- ---------------------------------------- -->

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
									<form role="form" action="/airport/member/login.do"
										method="post" class="login-form" name="loginform">
										<div class="form-group">
											<label class="sr-only" for="form-username">ID 아이디</label> <input
												type="text" name="id" placeholder="ID"
												class="form-username form-control" id="id">
										</div>
										<div class="form-group">
											<label class="sr-only" for="form-password">Password
												비밀번호</label> <input type="password" name="pwd"
												placeholder="Password" class="form-password form-control"
												id="pwd">
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
								<div class="form-bottom">
									<!-- 네이버 아이디로 로그인 -->
									<%
										String clientId = "8WNSYq9HslIkdHkdXkX8";//애플리케이션 클라이언트 아이디값";
										String redirectURI = URLEncoder.encode("http://localhost:8088/airport/callback", "UTF-8");
										SecureRandom random = new SecureRandom();
										String state = new BigInteger(130, random).toString();
										String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
										apiURL += "&client_id=" + clientId;
										apiURL += "&redirect_uri=" + redirectURI;
										apiURL += "&state=" + state;
										session.setAttribute("state", state);
									%>
									<a href="<%=apiURL%>"><img height="50px"
										src="/airport/resources/sns/naver2.PNG" /></a>


									<!-- 카카오톡으로 로그인 -->
									<!-- 									<a id="custom-login-btn" href="javascript:loginWithKakao()">
										<img src="/airport/resources/sns/kakao.png" height="50px" />
									</a>
									<script type='text/javascript'>
										//<![CDATA[
										// 사용할 앱의 JavaScript 키를 설정해 주세요.
										Kakao
												.init('0b4f8ab826d5bd1a8e4fd171582f0088');
										function loginWithKakao() {
											// 로그인 창을 띄웁니다.
											Kakao.Auth
													.login({
														success : function(
																authObj) {
															alert(JSON
																	.stringify(authObj));
														},
														fail : function(err) {
															alert(JSON
																	.stringify(err));
														}
													});

										};
										//]]>
									</script> -->
									<a id="kakao-login-btn"></a>
									<script type='text/javascript'>
										//<![CDATA[
										// 사용할 앱의 JavaScript 키를 설정해 주세요.
										Kakao.init('0b4f8ab826d5bd1a8e4fd171582f0088');
										// 카카오 로그인 버튼을 생성합니다.
										Kakao.Auth
												.createLoginButton({
													container : '#kakao-login-btn',
													success : function(authObj) {
														// 로그인 성공시, API를 호출합니다.
														Kakao.API.request({
																	url : '/v2/user/me',
																	success : function(res) {
																		alert(JSON.stringify(res.id));
																		//alert(res.id);
																		alert(res.properties.nickname+"  "+res.kakao_account.email);
																		
																		// 카카오 값 보내기
																		var jsonStr = JSON.stringify(pObj);
																		$.ajax({
																			url : '/airport/member/kakao.do', 
																			method : "post", 
																			//dataType : 'json', 
																			//data : jsonStr, 
																			data:{
																			"id":JSON.stringify(res.id),
																			"name":JSON.stringify(res.properties.nickname),
																			"email":JSON.stringify(res.kakao_account.email)
																			}});    
																	},
																	fail : function(
																			error) {
																		alert(JSON
																				.stringify(error));
																	}
																});
													},
													fail : function(err) {
														alert(JSON
																.stringify(err));
													}
												});
										//]]>
									</script>
									

									
									<!-- 페이스북으로 로그인 -->
									<script>
										(function(d, s, id) {
											var js, fjs = d
													.getElementsByTagName(s)[0];
											if (d.getElementById(id))
												return;
											js = d.createElement(s);
											js.id = id;
											js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.1&appId=2203155433297404&autoLogAppEvents=1';
											fjs.parentNode
													.insertBefore(js, fjs);
										}(document, 'script', 'facebook-jssdk'));
									</script>

									<div class="fb-login-button" scope="public_profile,email"
										data-max-rows="1" data-size="large"
										data-button-type="continue_with" data-show-faces="false"
										data-auto-logout-link="false" data-use-continue-as="false"></div>
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
										method="post" class="registration-form" id="signupform"
										name="signupform" onsubmit="return join()">

										<div class="form-group">
											<label class="sr-only" for="form-id">ID</label> <input
												type="text" name="id" id="id" placeholder="ID 아이디"
												class="form-id form-control" maxlength="12" required>
											<p class="help-block" id="idChk"></p>
										</div>

										<div class="form-group">
											<label class="sr-only" for="form-password">Password</label> <input
												type="password" name="pwd" id="pwd"
												placeholder="Password 비밀번호"
												class="form-password form-control" required>
										</div>

										<div class="form-group">
											<label class="sr-only" for="form-password">Verify
												Password</label> <input type="password" name="pwd2" id="pwd2"
												placeholder="Verify Password 비밀번호 확인"
												class="form-password form-control" required>
											<p class="help-block" id="pwMsg"></p>
										</div>

										<div class="form-group">
											<label class="sr-only" for="form-name">Name</label> <input
												type="text" name="name" id="name" placeholder="Name 이름"
												class="form-name form-control" required>
										</div>

										<div class="form-group">
											<label class="sr-only" for="form-phone">Phone</label> <input
												type="text" name="phone" id="phone" placeholder="Phone 전화번호"
												class="form-phone form-control" maxlength="13" required>
										</div>

										<div class="form-group">
											<label class="sr-only" for="form-email">Email</label> <input
												type="email" name="email" id="email" placeholder="Email 이메일"
												class="form-email form-control" required>
										</div>

										<p style="font-size: 14pt; color: white;">Receive 알림 받기</p>
										<div class="form-group">
											<label class="control control--checkbox" for="form-alarm"></label>
											<span style="font-size: large; color: white;"> Email:
												<input type="checkbox" name="alarm" id="email-check"
												value="메일">
											</span>&nbsp;&nbsp;&nbsp;&nbsp; <span
												style="font-size: large; color: white;"> Phone: <input
												type="checkbox" name="alarm" id="phone-check" value="문자">
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