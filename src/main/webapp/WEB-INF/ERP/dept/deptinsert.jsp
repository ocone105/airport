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
	$("#ctg1").change(function(){
			//현재 작업중인 객체가 click되면 ajax를 요청할 수 있도록 처리
			category = $(this).val();
			alert(category)
			//alert($(this).val());
			if(category=="self"){
				//alert("test");
				myself = "<input type='text' class='form-control' name='deptctg1' id='deptctg1'>";
				$("#input1").empty(myself);
				$("#input1").append(myself);
				myself = "<input type='text' class='form-control' name='deptctg2' id='deptctg2'>";
				$("#input2").empty(myself);
				$("#input2").append(myself);
			}else{
				$.ajax({
					url: "/airport/erp/ctglist.do?action=ctg1",
					type: "get",
					data:{
						"category":category
					},
					success:function(data){
						//alert(data);
						mydata = ""; 
						for(i=0;i<data.length;i++){
							if(data[i].deptctg2!=null){
								mydata = mydata + "<option value='"+data[i].deptctg2+"'>"+data[i].deptctg2+"</option>";
							}
						}
						mydata = mydata + "<option value='self'>직접입력하기</option>";
						$("#input1").empty(mydata);
						$("#ctg2").empty(mydata);
						$("#ctg2").append(mydata);
					},
					error:function(a,b,c){	//ajax실패시 원인(에러메시지)
						alert(a+b+c);
					}
				});
			}
	});
	$("#ctg2").change(function(){
		category = $(this).val();
		if(category=="self"){
			//alert("test");
			myself = "<input type='text' class='form-control' name='deptctg2' id='deptctg2'>";
			$("#input2").empty(myself);
			$("#input2").append(myself);
		}else{
			$("#input2").empty(myself);
		}
	})
});
</script>
</head>
<body>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header card-header-primary">
							<h4 class="card-title">부서등록</h4>
							<p class="card-category">Complete profile</p>
						</div>
						<div class="card-body">
							<form class="form-horizontal" method="post"
								action="/airport/erp/deptwrite.do">
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
												<div class="panel-body" id="input">
													<select class="selectpicker" id="ctg1" name="deptctg1" size="5">
														<c:forEach var="ctg1" items="${ctg1list }">
															<option value="${ctg1 }">${ctg1 }</option>
														</c:forEach>
														<option value="self">직접입력하기</option>
													</select>
												</div>
												<div id="input1"> </div>
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
													<select class="selectpicker" id="ctg2" name="deptctg2" size="5">
													</select>
												</div>
												<div id="input2"> </div>
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
													<input type='text' class='form-control' name='deptctg3' id='deptctg3'>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">부서번호</label> <input
												type="text" class="form-control" name="deptno" id="deptno">
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">매니저</label> <input
												type="text" class="form-control" name="mgr" id="mgr">
										</div>
									</div>
									<div class="col-md-7">
										<div class="form-group">
											<label class="bmd-label-floating">부서연락처</label> <input
												type="text" class="form-control" name="tel" id="tel">
										</div>
									</div>
									<div class="col-md-10">
										<div class="form-group">
											<label class="bmd-label-floating">임무</label> <input
												type="text" class="form-control" name="task" id="task">
										</div>
									</div>
								</div>

								<button type="submit" class="btn btn-primary pull-right">등록하기</button>
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