<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
							<form>
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label class="bmd-label-floating">사원ID</label> <input
												type="text" class="form-control">
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">비밀번호</label> <input
												type="password" class="form-control">
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label class="bmd-label-floating">이름</label> <input
												type="text" class="form-control">
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">생일</label> <input
												type="text" class="form-control">
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">성별</label> 
											<div class="radio">
												<label> <input type="radio" name="me_gender" value="male" checked/>남자</label> 
												<label> <input type="radio" name="me_gender" value="female" />여자
												</label>
											</div>
										</div>
									</div>
									<div class="col-md-10">
										<div class="form-group">
											<label class="bmd-label-floating">전화번호</label> <input
												type="text" class="form-control">
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label class="bmd-label-floating">Email address</label> <input
												type="email" class="form-control">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label class="bmd-label-floating">직급</label> <input
												type="text" class="form-control">
										</div>
									</div>
								</div>
								<button type="submit" class="btn btn-primary pull-right">등록하기</button>
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