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
		<div class="container">
			<div class="row">
				<div class="col-md-5  toppad  pull-right col-md-offset-3 ">
				<br/>
					<img style="width: 300px; height: 50%;" alt="User Pic" src="/airport/resources/common/images/imgemp.jpg"
										class="img img-responsive">
								</div>	
				<div
					class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">${emp.name }</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								

								<!--<div class="col-xs-10 col-sm-10 hidden-md hidden-lg"> <br>
                  <dl>
                    <dt>DEPARTMENT:</dt>
                    <dd>Administrator</dd>
                    <dt>HIRE DATE</dt>
                    <dd>11/12/2013</dd>
                    <dt>DATE OF BIRTH</dt>
                       <dd>11/12/2013</dd>
                    <dt>GENDER</dt>
                    <dd>Male</dd>
                  </dl>
                </div>-->
								<div class=" col-md-9 col-lg-9 ">
									<table class="table table-user-information">
										<tbody>
											<tr>
												<td>사원번호</td>
												<td>${emp.empno }</td>
											</tr>
											<tr>
												<td>부서</td>
												<td>${emp.deptname }</td>
											</tr>
											<tr>
												<td>아이디</td>
												<td>${emp.empid }</td>
											</tr>
											<tr>
												<td>비밀번호</td>
												<td>${emp.pwd }</td>
											</tr>
											<tr>
												<td>생년월일</td>
												<td>${emp.birth }</td>
											</tr>
											<tr>
												<td>성별</td>
												<c:choose>
  													<c:when test="${emp.gender eq 'f' }">
  														<td>여자</td>
													  </c:when>
													  <c:when test="${emp.gender eq 'm' }">
														 <td>남자</td>
													  </c:when>
												</c:choose>
											</tr>
											<tr>
												<td>직급</td>
												<td>${emp.position }</td>
											</tr>
											<tr>
												<td>사원상태</td>
												<c:choose>
  													<c:when test="${emp.state eq '0' }">
  														<td>재직</td>
													  </c:when>
													  <c:when test="${emp.state eq '1' }">
														 <td>퇴사</td>
													  </c:when>
													  <c:when test="${emp.state eq '2' }">
														 <td>휴직</td>
													  </c:when>
												</c:choose>
											</tr>
											<tr>
												<td>입사일</td>
												<td>${emp.startdate }</td>
											</tr>
											<tr>
												<td>퇴사일</td>
												<td>${emp.enddate }</td>
											</tr>
											<tr>
												<td>Email</td>
												<td><a href="mailto:${emp.email }">${emp.email }</a></td>
											</tr>
											<tr>
												<td>Phone Number</td>
												<td>${emp.phone }</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<span
								class="pull-right"> <a href="/airport/erp/empupdate.do?empno=${emp.empno }&deptno=${emp.deptno}"
								data-original-title="Edit this user" data-toggle="tooltip"
								type="button" class="btn btn-sm btn-warning"><i
									class="glyphicon glyphicon-edit"></i>Edit</a> <a
								data-original-title="Remove this user" data-toggle="tooltip"
								type="button" class="btn btn-sm btn-danger"><i
									class="glyphicon glyphicon-remove"></i>삭제</a>
							</span>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>