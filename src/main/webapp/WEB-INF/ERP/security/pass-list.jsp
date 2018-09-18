<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
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
							<h4 class="card-title ">출입증발급조회</h4>
							<p class="card-category">
								<!-- 검색명 -->
							</p>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table">
									<thead class=" text-primary">
										<tr>
											<th>출입증번호</th>
											<th>사원번호</th>
											<th>이름</th>
											<th>부서</th>
											<th>발급일</th>
											<th>만료일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="pass" items="${passlist }">
										<tr>
											<td>${pass.scno }</td>
											<td>${pass.empno }</td>
											<td><a href="#">${pass.name }</a></td>
											<td>${pass.deptname }</td>
											<td>${pass.issuedate }</td>
											<td>${pass.exdate }</td>
										</tr>
										</c:forEach>
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