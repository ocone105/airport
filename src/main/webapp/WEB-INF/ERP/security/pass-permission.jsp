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
<script type="text/javascript">
$(document).ready(function(){
	$("#permitInfo").on("show.bs.modal",function(){
		mydata="<img src='/airport/resources/upload/"+$("#empimg").val()+"' class='img-responsive thumbnail'>"
		$("#applicantimg").empty();
		$("#applicantimg").append(mydata);
		$("#applicantno").empty();
		$("#applicantno").append($("#empno").val());
		$("#applicantname").empty();
		$("#applicantname").append($("#empname").val());
		$("#applicantdept").empty();
		$("#applicantdept").append($("#empdept").val());
		$("#applicantemail").empty();
		$("#applicantemail").append($("#empemail").val());
		$("#applicantappdate").empty();
		$("#applicantappdate").append($("#empappdate").val());
	})

});
function onepermit(){
	//alert("test");
	location.href="/airport/erp/permit.do?scno="+$("#empscno").val();
}

</script>
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
					<form class="form-horizontal" method="post"
								action="/airport/erp/permitall.do">
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
										<td><a data-toggle="modal" data-target="#permitInfo" id="modal">${permit.name }</a></td>
										<td>${permit.appdate }</td>
										<td>${permit.deptname }</td>
									</tr>
									<input type="hidden" id="empimg" value="${permit.img }"/>
									<input type="hidden" id="empno" value="${permit.empno }"/>
									<input type="hidden" id="empname" value="${permit.name }"/>
									<input type="hidden" id="empdept" value="${permit.deptname }"/>
									<input type="hidden" id="empemail" value="${permit.email }"/>
									<input type="hidden" id="empappdate" value="${permit.appdate }"/>
									<input type="hidden" id="empscno" value="${permit.scno }"/>
								</c:forEach>
							</tbody>
						</table>
						<button type="submit" class="btn btn-info btn-link btn-sm pull-right">
							<i class="material-icons">done_all</i>출입증 발급 승인
						</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- modal pass_info -->
	<div id="permitInfo" class="modal fade" role="dialog">
        <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h4>출입증신청</h4>
	                <button type="button" class="close" data-dismiss="modal"> &times;</button>
	            </div>
	            <div class="modal-body">
		                  <label class="sr-only">상세정보</label>
		                  <table class="table">
								<tbody>
									<tr>
										<td>사진</td>
										<td id="applicantimg"></td>
									</tr>
									<tr>
										<td>사원번호</td>
										<td id="applicantno"></td>
									</tr>
									<tr>
										<td>사원이름</td>
										<td id="applicantname"></td>
									</tr>
									<tr>
										<td>부서</td>
										<td id="applicantdept"></td>
									</tr>
									<tr>
										<td>email</td>
										<td id="applicantemail"></td>
									</tr>
									<tr>
										<td>신청일</td>
										<td id="applicantappdate"></td>
									</tr>
								</tbody>
						</table>
						<hr/>
							<input type="button" class="btn btn-info pull-right" data-dismiss="modal" value="Cancel"/>
							<input type="button" class="btn btn-info pull-right" onclick="onepermit()" value="출입증 발급 승인"/>
	            </div>
	        </div>
        </div>
    </div>
    <!-- modal pass끝 -->
    
</body>
</html>