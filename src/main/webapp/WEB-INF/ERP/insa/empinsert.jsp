<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/airport/resources/common/css/select.css" rel="stylesheet" />
<script src="/airport/resources/common/js/empinsert.js"></script>
</head>
<body>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header card-header-primary">
							<h4 class="card-title">사원등록</h4>
							<p class="card-category">Complete profile</p>
						</div>
						<div class="card-body">
							<form class="form-horizontal" method="post"
								action="/airport/erp/empinsert.do" id="signupform" name="signupform">
								<div class="row">
									<div class="col-md-4">
										<div class="form-group ">
											<label class="bmd-label-floating">사원ID</label> <input
												type="text" class="form-control" id="empid" name="empid" required maxlength="15">
												<p class="help-block" id="idChk">아이디중복check</p>
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">비밀번호</label> <input
												type="password" class="form-control" name="pwd" required maxlength="15">
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label class="bmd-label-floating">이름</label> <input
												type="text" class="form-control" name="name" required>
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">생일</label> <input
												type="text" class="form-control" name="birth" required> 
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">성별</label> 
											<div class="radio" required>
												<label> <input type="radio" name="gender" value="m" checked/>남자</label> 
												<label> <input type="radio" name="gender" value="f" />여자
												</label>
											</div>
										</div>
									</div>
									<div class="col-md-10">
										<div class="form-group">
											<label class="bmd-label-floating">전화번호</label> <input
												type="text" class="form-control" name="phone" id="phone" required maxlength="13">
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label class="bmd-label-floating">Email address</label> <input
												type="email" class="form-control" name="email" required maxlength="30">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<a data-toggle="collapse" href="#collapseOne">
												<div class="panel-heading">
													<label class="bmd-label-floating">부서분류1 <i
														class="fa fa-chevron-down"></i></label>
												</div>
											</a>
											<div id="collapseOne" class="panel-collapse collapse">
												<div class="panel-body" id="input">
													<select class="selectpicker" id="ctg1" size="5">
														<c:forEach var="dept" items="${deptlist }">
															<option value="${dept.deptno }">${dept.deptname }</option>
														</c:forEach>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<a data-toggle="collapse" href="#collapsetwo">
												<div class="panel-heading">
													<label class="bmd-label-floating">부서분류2<i
														class="fa fa-chevron-down"></i></label>
												</div>
											</a>
											<div id="collapsetwo" class="panel-collapse collapse">
												<div class="panel-body">
													<select class="selectpicker" id="ctg2" size="5">
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<a data-toggle="collapse" href="#collapse3">
												<div class="panel-heading">
													<label class="bmd-label-floating">부서분류3 <i
														class="fa fa-chevron-down"></i></label>
												</div>
											</a>
											<div id="collapse3" class="panel-collapse collapse">
												<div class="panel-body" id="input3">
													<select class="selectpicker" id="ctg3" name="deptno" size="5">
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label class="bmd-label-floating">직급</label> <input
												type="text" class="form-control" name="position" required>
										</div>
									</div>
								</div>
								<button type="button" class="btn btn-primary pull-right" onclick="return join()">등록하기</button>
								<div class="clearfix"></div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>