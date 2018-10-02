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
	$(".modalname").on("click",function(){
		scno = $(this).next().val();
		img = $(this).next().next().val();
		empno =  $(this).next().next().next().val();
		empname =  $(this).next().next().next().next().val();
		deptname =  $(this).next().next().next().next().next().val();
		email =  $(this).next().next().next().next().next().next().val();
		appdate =  $(this).next().next().next().next().next().next().next().val();
	})
	$("#permitInfo").on("show.bs.modal",function(){
		mydata="<img src='/airport/resources/upload/"+img+"' class='img-responsive thumbnail' style='width: 130px; height: 150px;'>"
		$("#applicantimg").empty();
		$("#applicantimg").append(mydata);
		$("#applicantno").empty();
		$("#applicantno").append(empno);
		$("#applicantname").empty();
		$("#applicantname").append(empname);
		$("#applicantdept").empty();
		$("#applicantdept").append(deptname);
		$("#applicantemail").empty();
		$("#applicantemail").append(email);
		$("#applicantappdate").empty();
		$("#applicantappdate").append(appdate); 
		$("#empscno").val(scno); 
	})
});
function onepermit(){
	//alert($("#empscno").val());
	location.href="/airport/erp/permit.do?scno="+$("#empscno").val()+"&action=permit";
}
function reject(){
	location.href="/airport/erp/permit.do?scno="+$("#empscno").val()+"&action=reject";
}

</script>
</head>
<body>
	<div class="content">
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="card">
					<div class="card-header card-header-tabs card-header-info">
						<div class="nav-tabs-navigation">
							<div class="nav-tabs-wrapper">
								<span class="nav-tabs-title">출입증신청자목록</span>
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
									<th>사원번호</th>
									<th>사원이름</th>
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
										<td><a data-toggle="modal" data-target="#permitInfo" class="modalname" href="#">${permit.name }</a>
										<input type="hidden" value="${permit.scno }"/>
										<input type="hidden" value="${permit.img }"/>
										<input type="hidden" value="${permit.empno }"/>
										<input type="hidden" value="${permit.name }"/>
										<input type="hidden" value="${permit.deptname }"/>
										<input type="hidden" value="${permit.email }"/>
										<input type="hidden" value="${permit.appdate }"/></td>
										<td>${permit.appdate }</td>
										<td>${permit.deptname }</td>
									</tr>
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
							<input type="hidden" id="empscno" value=""/>
							<input type="button" class="btn btn-info pull-right" data-dismiss="modal" value="Cancel"/>
							<input type="button" class="btn btn-info pull-right" onclick="reject()" value="출입증 발급 불승인"/>
							<input type="button" class="btn btn-info pull-right" onclick="onepermit()" value="출입증 발급 승인"/>
	            </div>
	        </div>
        </div>
    </div>
    <!-- modal pass끝 -->
    
</body>
</html>