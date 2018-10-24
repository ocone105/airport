<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function () {
	   $(function () {
	            $("#phone").keydown(function (event) {
	             var key = event.charCode || event.keyCode || 0;
	             $text = $(this); 
	             if (key !== 8 && key !== 9) {
	                 if ($text.val().length === 3) {
	                     $text.val($text.val() + '-');
	                 }
	                 if ($text.val().length === 8) {
	                     $text.val($text.val() + '-');
	                 }
	             }
	             return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
	         })
	   });
});
</script>
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
					<form action="/airport/erp/empserviceupdate.do" method="post" >
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
												<td>${erploginUser.empno }
												<input type="hidden" name="empno" value="${erploginUser.empno }">
												</td>
											</tr>
											<tr>
												<td>부서</td>
												<td>${erploginUser.deptname }</td>
											</tr>
											<tr>
												<td>아이디</td>
												<td>${erploginUser.id }</td>
											</tr>
											<tr>
												<td>비밀번호</td>
												<td><input class="form-control" type="password" id="pwd" name="pwd" value="${erploginUser.pwd }" required maxlength="15"></td>
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
												<td><input class="form-control" type="email" name="email" value="${erploginUser.email }" required maxlength="30"></td>
											</tr>
											<tr>
												<td>Phone Number</td>
												<td><input class="form-control" type="text" id="phone" name="phone" value="${erploginUser.phone }" required maxlength="13"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<span
								class="pull-right"> <input type="submit" 
								data-original-title="Edit this user" data-toggle="tooltip"
								class="btn btn-warning" value="수정"><i
									class="glyphicon glyphicon-edit"></i>
							</span>
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>