<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/airport/resources/common/css/jquery.treeview.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="/airport/resources/common/js/jquery.treeview.js"
	type="text/javascript"></script>
<script src="/airport/resources/common/js/query.cookie.js"></script>
<script type="text/javascript" src="/airport/resources/common/js/treedemo.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$(".step1").on("click",function(){
		//alert($(this).text());
		//alert($(this).next().val());
		deptno = $(this).next().val();
		$.ajax({
			url: "/airport/erp/ajaxdeptlist",
			type: "get",
			data:{
				"deptno":deptno
			},
			success:function(data){
				mydata = ""; 
				for(i=0;i<data.length;i++){
					mydata = mydata + "<li><span class='step2 folder'>"
					+data[i].deptname+"</span>"
					+"<input type='hidden' value='"+data[i].deptno+"'/>"
					+"<ul id='"+data[i].deptno+"' class='filetree'></ul></li>"
				}
				$("#"+deptno).empty(mydata);
				$("#"+deptno).append(mydata); 
			},
			error:function(a,b,c){	//ajax실패시 원인(에러메시지)
				alert(a+b+c);
			}
		});
	});
	$(document).on("click",".step2",function(){
		deptno2 = $(this).next().val();
		$.ajax({
			url: "/airport/erp/ajaxdeptlist",
			type: "get",
			data:{
				"deptno":deptno2
			},
			success:function(data){
				mydata = ""; 
				for(i=0;i<data.length;i++){
					mydata = mydata + "<li><span class='step3 folder'>"
					+data[i].deptname+"</span>"
					+"<input type='hidden' value='"+data[i].deptno+"'/>"
					+"</li>"
					
				}
				//alert(deptno2)
				$("#"+deptno2).empty(mydata);
				$("#"+deptno2).append(mydata); 
			},
			error:function(a,b,c){	//ajax실패시 원인(에러메시지)
				alert(a+b+c);
			}
		});
	});  
	
	$(document).on("click",".folder",function(){
		//alert($(this).next().val());
	 	deptno = $(this).next().val();
		$.ajax({
			url: "/airport/erp/ajaxdeptread",
			type: "get",
			data:{
				"deptno":deptno
			},
			success:function(data){
				$("#deptname").text(data.deptname);
				$("#deptname2").text(data.deptname);
				$("#deptno").text(data.deptno);
				$("#tel").text(data.tel);
				$("#mgr").text(data.mgr);
				$("#task2").text(data.task);
				if(data.deptstep==3){
					editdata = "<a id='deptupdate' href='#' class='btn btn-info btn-round btn-sm'>Edit</a>"
							+"<a href='/airport/erp/deptdelete.do?deptno="+data.deptno+"' class='btn btn-info btn-round btn-sm'>삭제</a>"
					
					$("#edit").empty(editdata);
					$("#edit").append(editdata);
				}
			},
			error:function(a,b,c){	//ajax실패시 원인(에러메시지)
				alert(a+b+c);
			}
		}); 
	});
	
	$(document).on("click","#deptupdate",function(){
		//alert(deptno);
		$.ajax({
			url: "/airport/erp/ajaxdeptread",
			type: "get",
			data:{
				"deptno":deptno
			},
			success:function(data){
				$("#deptname2").empty();
				$("#deptname2").append("<input type='text' class='form-control' name='deptname' value='"+data.deptname+"'>");
				$("#deptno").empty();
				$("#deptno").text(data.deptno);
				$("#deptno").append("<input type='hidden' class='form-control' name='deptno' value='"+data.deptno+"'>");
				$("#tel").empty();
				$("#tel").append("<input type='text' class='form-control' name='tel' value='"+data.tel+"'>");
				$("#mgr").empty();
				$("#mgr").append("<input type='number' class='form-control' name='mgr' value='"+data.mgr+"'>");
				$("#task2").empty();
				$("#task2").append("<input type='text' class='form-control' name='task' value='"+data.task+"'>");
				editdata = "<input type='submit' class='btn btn-info' value='수정'/>"
				
				$("#edit").empty(editdata);
				$("#edit").append(editdata);
			},
			error:function(a,b,c){	//ajax실패시 원인(에러메시지)
				alert(a+b+c);
			}
		});  
	});
});

</script>
</head>
<body>
<div class="content">
	<div class="pull-right">
			<a href="/airport/erp/deptwrite.do">부서등록하기</a>
	</div>
	<br/>
	<br/>
	<div class="row">
		<div class="col-sm-7">
			<div class="treeview" id="tree" style="margin: 20px">
				<ul id="browser" class="filetree">
				<c:forEach var="dept" items="${deptlist}">
					<li class="closed"><span class="step1 folder">${dept.deptname}</span>
						<input type="hidden" value="${dept.deptno}"/>
						<ul id="${dept.deptno}" class="filetree"></ul>
					</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card card-profile">
				<div class="card-body">
				<form class="form-horizontal" method="post"
								action="/airport/erp/deptupdate.do">
					<h6 class="card-category text-gray">부서정보</h6>
					<h4 class="card-title" id="deptname">부서</h4>
						<table class="table">
							<tbody>
								<tr>
									<td>부서번호</td>
									<td id="deptno">000</td>
								</tr>
								<tr>
									<td>부서이름</td>
									<td id="deptname2">부서</td>
								</tr>
								<tr>
									<td>부서연락처</td>
									<td id="tel">000)000-0000</td>
								</tr>
								<tr>
									<td>매니저</td>
									<td id='mgr'>매니저</td>
								</tr>
								</tbody>
							</table>					
			
					<p class="card-description" id="task2">TASK</p>
					<span class="pull-right" id="edit">
					</span>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>