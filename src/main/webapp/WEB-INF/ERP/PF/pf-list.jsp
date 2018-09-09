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
		<div class="faq">
			<h4>인원배치</h4>
			<div id="acordeon">
				<div class="row panel-group" id="accordion">
					<div class="col-sm-5 panel panel-border panel-default">
						<a data-toggle="collapse" href="#collapseOne">
							<div class="panel-heading">
								<h4 class="panel-title">
									분류1 <i class="fa fa-chevron-down"></i>
								</h4>
							</div>
						</a>
						<div id="collapseOne" class="panel-collapse collapse">
							<div class="panel-body">분류1 분류1</div>
						</div>
					</div>
					<div class="col-sm-5 panel panel-border panel-default">
						<a data-toggle="collapse" href="#collapseTwo">
							<div class="panel-heading">
								<h4 class="panel-title">
									분류2 <i class="fa fa-chevron-down"></i>
								</h4>
							</div>
						</a>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">분류2 분류2</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-12">
					<div class="card">
						<div class="card-header card-header-info">
							<h4 class="card-title ">인원배치</h4>
							<p class="card-category">
								<!-- 검색명 -->
							</p>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table">
									<thead class=" text-primary">
										<th>여객시설번호</th>
										<th>시설이름</th>
										<th>배치인원이름</th>
										<th>관리부서</th>
										<th>현재인원</th>
									</thead>
									<tbody>
										<tr>
											<td>001</td>
											<td><a href="#">시설이름</a></td>
											<td>사원이름</td>
											<td>부서이름</td>
											<td>5</td>
										</tr>
										<tr>
											<td>001</td>
											<td><a href="#">시설이름</a></td>
											<td>사원이름</td>
											<td>부서이름</td>
											<td>5</td>
										</tr>
										<tr>
											<td>001</td>
											<td><a href="#">시설이름</a></td>
											<td>사원이름</td>
											<td>부서이름</td>
											<td>5</td>
										</tr><tr>
											<td>001</td>
											<td><a href="#">시설이름</a></td>
											<td>사원이름</td>
											<td>부서이름</td>
											<td>5</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
	</div>
</body>
</html>