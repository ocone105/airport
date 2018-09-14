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
			category = $(this).val();
				$.ajax({
					url: "/airport/erp/ctglist.do?action=ctg1",
					type: "get",
					data:{
						"category":category
					},
					success:function(data){
						mydata1 = ""; 
						mydata2 = ""; 
						for(i=0;i<data.length;i++){
							if(data[i].deptctg2!=null){
								mydata1 = mydata1 + "<option value='"+data[i].deptctg2+"'>"+data[i].deptctg2+"</option>";
							}else{
								if(data[i].deptctg3!=null){
									mydata2 = mydata2 + "<option value='"+data[i].deptctg3+"'>"+data[i].deptctg3+"</option>";
									mydata1 = "<option value='no2'>분류2가존재하지않습니다</option>"
								}
							}
						}
						$("#ctg2").empty(mydata1);
						$("#ctg2").append(mydata1);
						$("#ctg3").empty(mydata2);
						$("#ctg3").append(mydata2);
					},
					error:function(a,b,c){	
						alert(a+b+c);
					}
				});
			
	});
	$("#ctg2").change(function(){
		category = $(this).val();
		$.ajax({
			url: "/airport/erp/ctglist.do?action=ctg2",
			type: "get",
			data:{
				"category":category
			},
			success:function(data){
				mydata = ""; 
				for(i=0;i<data.length;i++){
					if(data[i].deptctg3!=null){
						mydata = mydata + "<option value='"+data[i].deptctg3+"'>"+data[i].deptctg3+"</option>";
					}
				}
				$("#ctg3").empty(mydata);
				$("#ctg3").append(mydata);
			},
			error:function(a,b,c){	
				alert(a+b+c);
			}
		});
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
							<h4 class="card-title">사원등록</h4>
							<p class="card-category">Complete profile</p>
						</div>
						<div class="card-body">
							<form class="form-horizontal" method="post"
								action="/airport/erp/empinsert.do">
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label class="bmd-label-floating">사원ID</label> <input
												type="text" class="form-control">
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">비밀번호</label> <input
												type="password" class="form-control">
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label class="bmd-label-floating">이름</label> <input
												type="text" class="form-control">
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">생일</label> <input
												type="text" class="form-control">
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">성별</label> 
											<div class="radio">
												<label> <input type="radio" name="me_gender" value="male" checked/>남자</label> 
												<label> <input type="radio" name="me_gender" value="female" />여자
												</label>
											</div>
										</div>
									</div>
									<div class="col-md-10">
										<div class="form-group">
											<label class="bmd-label-floating">전화번호</label> <input
												type="text" class="form-control">
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label class="bmd-label-floating">Email address</label> <input
												type="email" class="form-control">
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
												<div class="panel-body" id="input">
													<select class="selectpicker" id="ctg1" name="deptctg1" size="5">
														<c:forEach var="ctg1" items="${ctg1list }">
															<option value="${ctg1 }">${ctg1 }</option>
														</c:forEach>
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
													<select class="selectpicker" id="ctg3" name="deptctg3" size="5">
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
												type="text" class="form-control">
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