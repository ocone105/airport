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
					<img style="width: 300px; height: 50%;" alt="User Pic" src="/airport/resources/upload/${sec.img }"
										class="img img-responsive">
								</div>	
				<div
					class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">${sec.name }</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class=" col-md-9 col-lg-9 ">
									<table class="table table-user-information">
										<tbody>
											<tr>
												<td>출입증번호</td>
												<td>${sec.scno }</td>
											</tr>
											<tr>
												<td>사원번호</td>
												<td>${sec.empno }</td>
											</tr>
											<tr>
												<td>부서</td>
												<td>${sec.deptname }</td>
											</tr>
											<tr>
												<td>신청일</td>
												<td>${sec.appdate }</td>
											</tr>
											<tr>
												<td>발급일</td>
												<td>${sec.issuedate }</td>
											</tr>
											<tr>
												<td>만료일</td>
												<td>${sec.exdate }</td>
											</tr>
											<tr>
												<td>발급상태</td>
												<td>
												<c:choose>
													<c:when test="${sec.scstate eq '0'}">
														만료
													</c:when>
													<c:when test="${sec.scstate eq '1'}">
														발급
													</c:when>
												</c:choose>
												</td>
											</tr>
											<tr>
												<td>Email</td>
												<td><a href="mailto:${sec.email }">${sec.email }</a></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<c:if test="${sec.scstate eq '1'}">
									<div class="panel-footer">
							<span
								class="pull-right"> <a href="/airport/erp/seccancel.do?empno=${sec.empno}"
								data-original-title="Edit this user" data-toggle="tooltip"
								type="button" class="btn btn-sm btn-warning"><i
									class="glyphicon glyphicon-cancel"></i>발급취소</a> 
							</span>
						</div>						
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>