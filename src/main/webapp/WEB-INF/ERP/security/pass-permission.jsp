<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/airport/resources/common/js/plugins/chartist.min.js"></script>
<style type="text/css">
a {
	background-color: transparent
}

a:active, a:hover {
	outline: 0
}

a:focus, a:hover {
	color: #23527c;
	text-decoration: underline
}

a:focus {
	outline: thin dotted;
	outline: 5px auto -webkit-focus-ring-color;
	outline-offset: -2px
}

</style>
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
								<tr>
									<th>check</th>
									<th>신청자no</th>
									<th>신청자이름</th>
									<th>신청일</th>
									<th>부서</th>
								</tr>
							</thead>
								<tbody>
								<c:forEach var="permit" items="${permitlist }">
									<tr>
										<td>
											<div class="form-check">
												<label class="form-check-label"> 
												<input class="form-check-input" type="checkbox" name="scno" value="${permit.scno }" >
												<span class="form-check-sign"><span class="check"></span></span>
												</label>
											</div>
										</td>
										<td>${permit.empno }</td>
										<td><a data-toggle="modal" data-target="#Modaltest">${permit.name }</a></td>
										<td>${permit.appdate }</td>
										<th>${permit.deptname }</th>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<button type="button" class="btn btn-info btn-link btn-sm pull-right">
							<i class="material-icons">done_all</i>허가
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- modal pass_info -->
	<div id="Modaltest" class="modal fade" role="dialog">
        <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h4>출입증신청</h4>
	                <button type="button" class="close" data-dismiss="modal"> &times;</button>
	            </div>
	            <div class="modal-body">
	                   <form class="form-inline">
		                  <label class="sr-only">상세정보</label>
		                  <table class="table">
								<tbody>
									<tr>
										<td>123</td>
										<td>456</td>
									</tr>
									<tr>
										<td>123</td>
										<td>456</td>
									</tr>
								</tbody>
						</table>
		                        <!-- <div class="form-group">  
		                        <label class="sr-only" for="password">Password</label>
		                                     <input type="password" class="form-control input-sm" placeholder="Password" id="password" name="password"></div>
		                         -->
		                       <button type="submit" class="btn btn-info btn-xs">출입증 발급 승인</button>
		                       <button type="button" class="btn btn-default btn-xs" data-dismiss="modal">Cancel</button> 
	                  </form>
	            </div>
	        </div>
        </div>
    </div>
    <!-- modal pass끝 -->
    
</body>
</html>