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
/* $(document).ready(function() {
	$(".folder").on("click", function() {
		deptname = $(this).text().trim();
		//this의 다음노드로 접근
		ulnode = $(this).next();
		//ul노드의 id속성 값을 구하기
		deptno = $(ulnode).attr("id");
		//alert(deptno);
		$.get("/kimsaemERP/ajaxtreedata", {
			"deptno" : deptno
		}, getData, "json");
	});
}); */
/*
 * $(document).ready(function() {
		//id속성이 boardCategory로 정의된 모든 li에 익명의 함수를 적용하겠다는 의미
		$("#boardCategory>li").each(function(){
			$(this).click(function(){
				//현재 작업중인 객체가 click되면 ajax를 요청할 수 있도록 처리
				category = $(this).text();
				//alert(category);
				$.ajax({
					url: "/stswebTest/board/ajax_boardlist.do",
					type: "get",
					data:{
						"category":category
					},
					success:function(data){
						//alert(data[0].title+","+data[0].write_date);
						mydata = ""; //조회한 json객체안의 모든 데이터를 꺼내서 추가할 변수
						for(i=0;i<data.length;i++){
							mydata = mydata + "<tr>"
							+"<td class='boardContent'>"+data[i].title+"</td>"
							+"<td class='boardDate'>"+data[i].write_date+"</td>"
							+"</tr>";
						}
						//alert(mydata);
						$("#mydatalist").empty(mydata);
						$("#mydatalist").append(mydata);
					},
					error:function(a,b,c){	//ajax실패시 원인(에러메시지)
						alert(a+b+c);
					}
				});
			});
		});
	});
 */
/* ulnode = "";
$(document).ready(function() {
	$(".folder").on("click", function() {
		deptname = $(this).text().trim();
		//this의 다음노드로 접근
		ulnode = $(this).next();
		//ul노드의 id속성 값을 구하기
		deptno = $(ulnode).attr("id");
		//alert(deptno);
		$.get("/kimsaemERP/ajaxtreedata", {
			"deptno" : deptno
		}, getData, "json");
	});
	//동적으로 생성된 노드(ajax실행결과로 추가된 태그)에 이벤트를 연결하는 방법		
	//1번매개변수 - 이벤트시점, 2번매개변수 - 어떤 태그에 이벤트를 연결할 것 인지 정의
	//3번매개변수 - 이벤트가 발생할 때 실행할 함수
	$(document).on("click", ".file", function() {
		id = $(this).attr("id");
		//alert(id);
		$.get("/kimsaemERP/getempinfo.do", {
			"id" : id
		}, getEmpInfo, "json");
	})
})
//jquery를 이용하면 json이 파싱되어 객체상태로 리턴된다.
function getData(data) {
	//alert(data.emplist[0].name);
	myli = "";
	for (i in data.emplist) {
		myli = myli
				+ "<li><span class='file' id='"+ data.emplist[i].id +"'>"
				+ data.emplist[i].name + "</span></li>";
	}
	$(ulnode).html(myli);
}
function getEmpInfo(emp) {
	//alert("test");
	$("#empinfo").css("display", "block");
	$("#userImage").attr("src", "/kimsaemERP/images/" + emp.profile_photo);
	$("#deptno").text(emp.deptno);
	$("#name").text(emp.name);
	$("#id").text(emp.id);
	$("#position").text(emp.position);
	$("#duty").text(emp.duty);

} */
</script>
</head>
<body>
	<div class="content">
		<div class="pull-right">
			<a href="/airport/erp/deptwrite.do">부서등록하기</a>
		</div>
	<div class="treeview" id="tree" style="margin: 20px" class="col-sm-6">
		<ul id="browser" class="filetree">
		<c:forEach var="dept" items="${deptlist}">
			<li class="closed"><span class="folder">${dept.deptctg1}</span>
				<ul>
					<%-- <li><span class="file">${dept.deptctg2 }</span></li> --%>
					<li>
					<span class="file">${dept.deptctg2 }</span>
						<ul>
							<li><span class="file">${dept.deptctg3 }</span></li>
						</ul>
					</li>
				</ul>
			</li>
			</c:forEach>
		</ul>
	</div>
	</div>
</body>
</html>