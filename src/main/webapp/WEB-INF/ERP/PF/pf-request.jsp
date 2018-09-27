<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/airport/resources/common/css/select.css" rel="stylesheet" />
<script type="text/javascript">
	$(document).ready(function() {
		$("#pfinfo").change(function() {
			pfinfono = $(this).val();

			$.ajax({
				url : "/airport/erp/pflistAjax.do",
				type : "get",
				data : {
					"pfinfono" : pfinfono
				},
				success : function(data) {
					// alert(data.deptno); 	
					$("#deptno").val(data.deptno)
				}
			});
		});
	});
</script>
</head>
<body>
	<div class="content">
		<div class="faq">
			<h4>인원배치</h4>
		</div>
		<div class="col-md-10 col-sm-10">
			<form class="form-horizontal" method="post"
				action="/airport/erp/pfwrite.do">
				<div class="form-group">
					<h6>
						시설이름 <span class="icon-danger">*</span>
					</h6>
					<div id="acordeon">
						<div class="row panel-group" id="accordion">
							<div class="col-sm-5 panel panel-border panel-default">
								<a data-toggle="collapse" href="#collapseOne">
									<div class="panel-heading">
										<h4 class="panel-title">
											시설이름<i class="fa fa-chevron-down"></i>
										</h4>
									</div>
								</a>
								<div id="collapseOne" class="panel-collapse collapse">
									<div class="panel-body">
										<select class="selectpicker" id="pfinfo" name="pfinfono"
											size="5">
											<c:forEach items="${pfinfo}" var="pfinfo">
												<c:choose>
													<c:when test="${pfinfo.pfname==name}">
														<option selected="selected" id="${pfinfo.pfinfono}"
															value="${pfinfo.pfinfono}">${name}</option>
													</c:when>
													<c:otherwise>
														<option id="${pfinfo.pfinfono}" value="${pfinfo.pfinfono}">${pfinfo.pfname}</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row price-row">
					<div class="col-md-10">
						<h6>
							부서 <span class="icon-danger">*</span>
						</h6>
						<c:choose>
							<c:when test="${!empty name}">
								<input type="text" class="form-control" id="deptno"
									name="deptno" value="${dept.deptname}">
							</c:when>
							<c:otherwise>
								<input type="text" class="form-control" id="deptno"
									name="deptno">
							</c:otherwise>
						</c:choose>
						<div class="form-group">
							<h6>
								인원 <span class="icon-danger">*</span>
							</h6>
							<input type="number" class="form-control border-input"
								name="pfstaff" required="required">
						</div>
						<div class="form-group">
							<h6>사유</h6>
							<textarea class="form-control textarea-limited border-input"
								name="pftxt" placeholder="" rows="10" , data-limit="150"></textarea>
							<h5>
								<small><span id="textarea-limited-message"
									class="pull-right">150자 미만</span></small>
							</h5>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<button type="submit" class="btn btn-primary btn-block">요청</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>