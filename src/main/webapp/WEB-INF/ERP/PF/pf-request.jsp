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
					$("#deptname").val(data.deptname)
				}
			});
		});
	});
</script>
</head>
<body>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header card-header-warning">
							<h4 class="card-title">인원배치</h4>
							<p class="card-category">여객시설팀</p>
						</div>
						<div class="card-body">
							<form class="form-horizontal" method="post" action="/airport/erp/pfwrite.do">
								<div class="form-group ">
									<label class="bmd-label-floating">시설이름
										<span class="icon-danger">*</span>
									</label>
									<div id="acordeon">
										<div class="row panel-group" id="accordion">
											<div class="col-sm-5 panel panel-border panel-default">
												<a data-toggle="collapse" href="#collapseOne">
													<div class="panel-heading text-warning">
														<h4 class="panel-title">
															선택하세요.<i class="fa fa-chevron-down"></i>
														</h4>
													</div>
												</a>
												<div id="collapseOne" class="panel-collapse collapse">
													<div class="panel-body">
														<select class="selectpicker" id="pfinfo" name="pfinfono" size="5">
															<c:forEach items="${pfinfo}" var="pfinfo">
																<c:choose>
																	<c:when test="${pfinfo.pfname==name}">
																		<option selected="selected" id="${pfinfo.pfinfono}" value="${pfinfo.pfinfono}">
																			${name}
																		</option>
																	</c:when>
																	<c:otherwise>
																		<option id="${pfinfo.pfinfono}" value="${pfinfo.pfinfono}">
																			${pfinfo.pfname}
																		</option>
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
										<label class="bmd-label-floating">부서
												<span class="icon-danger">*</span>
										</label>
										<c:choose>
											<c:when test="${!empty name}">
												<input type="text" class="form-control" id="deptname"
													name="deptname" value="${dept.deptname}">
											</c:when>
											<c:otherwise>
												<input type="text" class="form-control" id="deptname"
													name="deptname">
											</c:otherwise>
										</c:choose>
										<div class="form-group">
											<label class="bmd-label-floating">인원
												<span class="icon-danger">*</span>
											</label>
											<input type="number" class="form-control"
												name="pfstaff" required="required">
										</div>
										<div class="form-group">
											<label class="bmd-label-floating">사유</label>
											<textarea class="form-control textarea-limited"
												name="pftxt" placeholder="" rows="10" data-limit="150"></textarea>
											<h5>
												<small><span id="textarea-limited-message"
													class="pull-right"><label class="bmd-label-floating">150자 미만</label></span></small>
											</h5>
										</div>
									</div>
								</div>
								<button type="submit" class="btn btn-warning pull-right">요청하기</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>