<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/airport/resources/common/css/select.css" rel="stylesheet" />
<script src="/airport/resources/common/js/empupdate.js"></script>
</head>
<body>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header card-header-primary">
							<h4 class="card-title">사원수정</h4>
							<p class="card-category">Complete profile</p>
						</div>
						<div class="card-body">
							<form class="form-horizontal" method="post"
								action="/airport/erp/empupdate.do">
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label class="bmd-label-floating">사원ID</label> 
											<div>${emp.id }</div>
											<input type="hidden" value="${emp.empno }"/>
											<input type="hidden" name="empno" value="${emp.empno }"/>
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">비밀번호</label> <input
												type="password" class="form-control" name="pwd" value=${emp.pwd } required maxlength="15">
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label class="bmd-label-floating">이름</label> 
											<div>${emp.name }</div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">생일</label> <input
												type="date" class="form-control" name="birth" value="${emp.birth }"> 
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">성별</label> 
											<div class="radio">
												<c:if test="${emp.gender eq 'f' }">
													<label> <input type="radio" name="gender" value="m" />남자</label> 
													<label> <input type="radio" name="gender" value="f" checked />여자</label>
												</c:if>
												<c:if test="${emp.gender eq 'm' }">
													<label> <input type="radio" name="gender" value="m" checked/>남자</label> 
													<label> <input type="radio" name="gender" value="f" />여자</label>
												</c:if>
											</div>
										</div>
									</div>
									
									<div class="col-md-10">
										<div class="form-group">
											<label class="bmd-label-floating">전화번호</label> <input
												type="text" class="form-control" name="phone" id="phone" value="${emp.phone}" required maxlength="13">
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label class="bmd-label-floating">Email address</label> 
											<input type="email" class="form-control" name="email" value="${emp.email }" required maxlength="30"/>
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
												<div class="panel-body">
													<select class="selectpicker" id="ctg1" size="5">
														<c:forEach var="dept" items="${deptlist }">
															<c:choose>
																<c:when test="${dept.deptno eq upcode }">
      																	<option value="${dept.deptno }" selected="selected">${dept.deptname }</option>
  																</c:when>
  																<c:otherwise>
  																		<option value="${dept.deptno }">${dept.deptname }</option>
  																</c:otherwise>
  															</c:choose>
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
														<c:forEach var="up" items="${updept}">
															<c:choose>
																<c:when test="${up.deptno eq curupcode}">
      																<option value="${up.deptno }" selected="selected">${up.deptname }</option>
  																</c:when>
  																<c:otherwise>
  																	<option value="${up.deptno }">${up.deptname }</option>
  																</c:otherwise>
  															</c:choose>
														</c:forEach>
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
<														<c:forEach var="cur" items="${curdept}">
															<c:choose>
  																<c:when test="${cur.deptno eq emp.deptno}">
      																<option value="${cur.deptno }" selected="selected">${cur.deptname }</option>
  																</c:when>
  																<c:otherwise>
  																	<option value="${cur.deptno }">${cur.deptname }</option>
  																</c:otherwise>
															</c:choose>
														</c:forEach>
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
												type="text" class="form-control" name="position" value="${emp.position }">
										</div>
									</div>
									<%-- <div class="col-md-6">
									<div class="form-group">
										<label class="bmd-label-floating">사원상태</label> 
										<div class="radio">
											<c:if test="${emp.state eq '0' }">
												<label> <input type="radio" name="state" value="0" checked/>재직</label> 
												<label> <input type="radio" name="state" value="1" />퇴사</label>
											</c:if>
											<c:if test="${emp.state eq '1' }">
												<label> <input type="radio" name="state" value="0" />재직</label> 
												<label> <input type="radio" name="state" value="1" checked/>퇴사</label>
											</c:if>
										</div>
									</div>
								</div> --%>
								</div>
								<button type="submit" class="btn btn-primary pull-right">수정하기</button>
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