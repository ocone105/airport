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
				<form class="/airport/erp/empsearch.do">
					<select name="tag">
						<option value="all">전체</option>
						<option value="id">사원번호</option>
						<option value="title">이름</option>
						<option value="content">부서</option>
					</select>
					<div class="input-group no-border">
						<input type="text" value="" class="form-control"
							placeholder="Search...">
						<button type="submit"
							class="btn btn-white btn-round btn-just-icon">
							<i class="material-icons">search</i>
							<div class="ripple-container"></div>
						</button>
					</div>
				</form>
				<div class="col-md-12">
					<div class="card">
						<div class="card-header card-header-info">
							<h4 class="card-title ">사원조회</h4>
							<p class="card-category">
								<!-- 검색명 -->
							</p>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table">
									<thead class=" text-primary">
										<th>사원번호</th>
										<th>이름</th>
										<th>부서</th>
										<th>전화번호</th>
										<th>이메일</th>
									</thead>
									<tbody>
										<tr>
											<td>001</td>
											<td><a href="#">이름</a></td>
											<td>부서이름</td>
											<td>010-0000-0000</td>
											<td>abc@gmail.com</td>
										</tr>
										<tr>
											<td>002</td>
											<td><a href="#">이름</a></td>
											<td>부서이름</td>
											<td>010-0000-0000</td>
											<td>abc@gmail.com</td>
										</tr>
										<tr>
											<td>003</td>
											<td><a href="#">이름</a></td>
											<td>부서이름</td>
											<td>010-0000-0000</td>
											<td>abc@gmail.com</td>
										</tr>
										<tr>
											<td>004</td>
											<td><a href="#">이름</a></td>
											<td>부서이름</td>
											<td>010-0000-0000</td>
											<td>abc@gmail.com</td>
										</tr>
										<tr>
											<td>005</td>
											<td><a href="#">이름</a></td>
											<td>부서이름</td>
											<td>010-0000-0000</td>
											<td>abc@gmail.com</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>