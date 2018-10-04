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
							<h4 class="card-title">인원요청 확인</h4>
							<p class="card-category">여객시설팀</p>
						</div>
						<div class="card-body">
						
						<form class="form-horizontal" action="/airport/erp/pfcheck.do">
						<!-- 인원요청 확인 리스트 -->
						<div class="col-md-12">
								<div class="card">
									<div class="card-body">
										<div class="table-responsive">
											<table class="table" style="text-align: center">
												<thead class=" text-primary">
													<th>요청일</th>
													<th>인원수</th>
													<th>상세내용</th>
													<th>확인</th>
												</thead>
												<tbody>
													<c:forEach items="${pf}" var="pf">
														<tr>
															<td>${pf.pfdate}</td>
															<td>${pf.pfstaff}</td>
															<td>${pf.pftxt}</td>
															<td>
																<div class="form-check">
																	<label class="form-check-label"> 
																		<input class="form-check-input" type="checkbox" value="${pf.pfno}+${pf.pfinfono}+${pf.pfstaff}" name="pfno">
																		<span class="form-check-sign"> <span class="check"></span></span>
																	</label>
																</div>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<button type="submit" class="btn btn-warning pull-right"  onclick="window.close();">요청하기</button>
						</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>