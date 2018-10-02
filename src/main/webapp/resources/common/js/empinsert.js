//전화번호 자동하이픈
$(document).ready(function () {
	   $(function () {
	            $("#phone").keydown(function (event) {
	             var key = event.charCode || event.keyCode || 0;
	             $text = $(this); 
	             if (key !== 8 && key !== 9) {
	                 if ($text.val().length === 3) {
	                     $text.val($text.val() + '-');
	                 }
	                 if ($text.val().length === 8) {
	                     $text.val($text.val() + '-');
	                 }
	             }
	             return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
	         })
	   });
});

//아이디 중복확인
$(document).ready(function() {
	$("#empid").bind("keyup",function(){
		$.ajax({
			url:"/airport/erp/idcheck.do",
			type:"get",
			data:{
				"empid":$("#empid").val()
			},
			success:function(data){
				if(data==1){
					$("#idChk").html("이미 존재하는 아이디입니다."); 
				}else{
					$("#idChk").html("사용가능한 아이디입니다."); 
				}
			}
		});
	});
});


//중복 아이디x
function join(){
	if($("#idChk").text()=="이미 존재하는 아이디입니다."){
		alert("이미 존재하는 아이디입니다.");
		return false;
	}else{
		document.signupform.submit();
		alert("인사등록 완료")
	}
}


//부서분류
$(document).ready(function() {
	$("#ctg1").change(function(){
		deptno = $(this).val();
		$("#deptno").val(deptno)
		$.ajax({
			url: "/airport/erp/deptlist",
			type: "get",
			data:{
				"deptno":deptno
			},
			success:function(data){
				//alert(data); 	
				mydata = ""; 
				for(i=0;i<data.length;i++){
					mydata = mydata + "<option value='"+data[i].deptno+"'>"+data[i].deptname+"</option>";
				} 
				if(data[0].deptstep==3){
					$("#ctg2").empty(mydata);
					$("#ctg2").append("<option value='"+deptno+"'>없음</option>");
					$("#ctg3").empty(mydata);
					$("#ctg3").append(mydata);
				}else{
					$("#ctg2").empty(mydata);
					$("#ctg2").append(mydata);
				}
			},
			error:function(a,b,c){	//ajax실패시 원인(에러메시지)
				alert(a+b+c);
			}
		}); 
	});
	$(document).on("change","#ctg2",function(){
		deptno = $(this).val();
		$.ajax({
			url: "/airport/erp/insadept",
			type: "get",
			data:{
				"deptno":deptno
			},
			success:function(data){
				//alert(data); 	
				mydata = ""; 
				for(i=0;i<data.length;i++){
					mydata = mydata + "<option value='"+data[i].deptno+"'>"+data[i].deptname+"</option>";
				} 
				$("#ctg3").empty(mydata);
				$("#ctg3").append(mydata);
			},
			error:function(a,b,c){	//ajax실패시 원인(에러메시지)
				alert(a+b+c);
			}
		}); 
	});
});