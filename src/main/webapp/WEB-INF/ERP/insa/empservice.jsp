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
							<h3 class="panel-title">${erploginUser.name }</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class=" col-md-9 col-lg-9 ">
									<table class="table table-user-information">
										<tbody>
											<tr>
												<td>사원번호</td>
												<td>${erploginUser.empno }</td>
											</tr>
											<tr>
												<td>부서</td>
												<td>${erploginUser.deptname }</td>
											</tr>
											<tr>
												<td>아이디</td>
												<td>${erploginUser.empid }</td>
											</tr>
											<tr>
												<td>비밀번호</td>
												<td>${erploginUser.pwd }</td>
											</tr>
											<tr>
												<td>생년월일</td>
												<td>${erploginUser.birth }</td>
											</tr>
											<tr>
												<td>성별</td>
												<c:choose>
  													<c:when test="${erploginUser.gender eq 'f' }">
  														<td>여자</td>
													  </c:when>
													  <c:when test="${erploginUser.gender eq 'm' }">
														 <td>남자</td>
													  </c:when>
												</c:choose>
											</tr>
											<tr>
												<td>직급</td>
												<td>${erploginUser.position }</td>
											</tr>
											<tr>
												<td>입사일</td>
												<td>${erploginUser.startdate }</td>
											</tr>
											<tr>
												<td>Email</td>
												<td><a href="mailto:${erploginUser.email }">${erploginUser.email }</a></td>
											</tr>
											<tr>
												<td>Phone Number</td>
												<td>${erploginUser.phone }</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<span
								class="pull-right"> <a href="/airport/erp/empserviceupdate.do"
								data-original-title="Edit this user" data-toggle="tooltip"
								type="button" class="btn btn-sm btn-warning"><i
									class="glyphicon glyphicon-edit"></i>Edit</a> 
							</span>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>