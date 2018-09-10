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
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="card">
					<div class="card-header card-header-tabs card-header-primary">
						<div class="nav-tabs-navigation">
							<div class="nav-tabs-wrapper">
								<span class="nav-tabs-title">신청자목록</span>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="messages">
						<table class="table">
							<thead>
								<th>check</th>
								<th>신청자no</th>
								<th>신청자이름</th>
								<th>신청일</th>
								<th>부서</th>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" checked>
												<span class="form-check-sign"> <span class="check"></span>
											</span>
											</label>
										</div>
									</td>
									<td>001</td>
									<td><a href="#">김()()</a></td>
									<td>20180908</td>
									<th>부서이름</th>
								</tr>
								<tr>
									<td>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" checked>
												<span class="form-check-sign"> <span class="check"></span>
											</span>
											</label>
										</div>
									</td>
									<td>002</td>
									<td><a href="#">김()()</a></td>
									<td>20180908</td>
									<th>부서이름</th>
								</tr>
								<tr>
									<td>
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" checked>
												<span class="form-check-sign"> <span class="check"></span>
											</span>
											</label>
										</div>
									</td>
									<td>003</td>
									<td><a href="#">김()()</a></td>
									<td>20180908</td>
									<th>부서이름</th>
								</tr>
							</tbody>
						</table>
						<button type="button" class="btn btn-primary btn-link btn-sm">
							<i class="material-icons">done_all</i>허가
						</button>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>