<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/airport/resources/common/js/plugins/chartist.min.js"></script>
</head>
<body>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8 col-md-12">
					<div class="card">
						<div class="card-header card-header-tabs card-header-primary">
							<div class="nav-tabs-navigation">
								<div class="nav-tabs-wrapper">
									<span class="nav-tabs-title">출입증</span>
									<ul class="nav nav-tabs" data-tabs="tabs">
										<li class="nav-item"><a class="nav-link active"
											href="#application" data-toggle="tab"> <i
												class="material-icons">chevron_right</i>신청
										</a></li>
										<li class="nav-item"><a class="nav-link"
											href="#reissuance" data-toggle="tab"> <i
												class="material-icons">chevron_right</i> 재발급
										</a></li>
										<li class="nav-item"><a class="nav-link" href="#inquiry"
											data-toggle="tab"> <i class="material-icons">chevron_right</i>
												조회
										</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="card-body">
							<div class="tab-content">
								<div class="tab-pane active" id="application">
									<table class="table">
										<tbody>
											<tr>
												<td>신청자</td>
												<td>신청자아이디</td>
											</tr>
											<tr>
												<td>부서</td>
												<td>신청자부서</td>
											</tr>
											<tr>
												<td>신청일</td>
												<td>오늘날짜</td>
											</tr>
											<tr>
												<td>사진</td>
												<td><div>
														<img style="width: 130px; height: 150px;"
															src="/airport/resources/common/images/basicUser.png"
															id="empimg">
													</div> <br /> <input type="file" name="me_img"
													onchange="document.getElementById('empimg').src = window.URL.createObjectURL(this.files[0])"
													accept="upload/*"></td>
											</tr>
										</tbody>
									</table>
									<input type="button" class="btn btn-primary pull-right" value="신청하기"> 
								</div>
								<div class="tab-pane" id="reissuance">
									<table class="table">
										<tbody>
											<tr>
												<td>신청자</td>
												<td>신청자아이디</td>
											</tr>
											<tr>
												<td>부서</td>
												<td>신청자부서</td>
											</tr>
											<tr>
												<td>재발급신청일</td>
												<td>오늘날짜</td>
											</tr>
											<tr>
												<td>사진</td>
												<td><div>
														<img style="width: 130px; height: 150px;"
															src="/airport/resources/common/images/basicUser.png"
															id="empimg">
													</div> <br /> <input type="file" name="me_img"
													onchange="document.getElementById('empimg').src = window.URL.createObjectURL(this.files[0])"
													accept="upload/*"></td>
											</tr>
											<tr>
												<td>재발급횟수</td>
												<td>5</td>
											</tr>
										</tbody>
									</table>
									<input type="button" class="btn btn-primary pull-right" value="신청하기"> 
								</div>
								<div class="tab-pane" id="inquiry">
									<div>
										<div class="row">
											<div class="col-sm-5">
												<div class="profile-photo">
													<img alt=""
														src="/airport/resources/common/images/basicUser.png"
														class="photo">
												</div>
											</div>
											<div class="col-sm-7">
												<div>
													<h2>123-456-789</h2>
												</div>
												<ul>
													<li><strong class="title">사원번호</strong> <span
														class="cont">사원번호</span></li>
													<li><strong class="title">이름</strong> <span
														class="cont">사원이름</span></li>
													<li><strong class="title">부서</strong> <span
														class="cont">부서</span></li>
													<li><strong class="title">발급일</strong> <span
														class="cont">180908</span></li>
													<li><strong class="title">만료일</strong> <span
														class="cont">180908</span></li>
												</ul>
											</div>
										</div>
									</div>
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