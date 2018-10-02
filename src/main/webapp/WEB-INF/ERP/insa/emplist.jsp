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
				<form action="/airport/erp/empsearch.do" method="post">
					<select class="selectpicker" name="tag" id="tag">
						<option value="name">이름</option>
						<option value="deptname">부서명</option>
					</select>
					<div class="input-group no-border">
						<input type="text" name="search" id="search" class="form-control"
							placeholder="Search...">
						<button type="submit" class="btn btn-white btn-round btn-just-icon">
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
										<tr>
											<th>사원번호</th>
											<th>이름</th>
											<th>부서</th>
											<th>전화번호</th>
											<th>재직</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="emp" items="${emplist}">
										<tr>
											<td>${emp.empno }</td>
											<td><a href="/airport/erp/empread.do?empno=${emp.empno }">${emp.name }</a></td>
											<td>${emp.deptname }</td>
											<td>${emp.phone  }</td>
											<td>
											<c:if test="${emp.state eq '0' }">
												재직
											</c:if>
											<c:if test="${emp.state eq '1' }">
												퇴사
											</c:if>
											</td>
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