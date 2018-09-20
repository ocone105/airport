//비밀번호 일치확인
$(document).ready(function(){
	$(document.forms["signupform"].pwd2).on("keyup",function(){
			if((signupform.pwd.value)==(signupform.pwd2.value)){
				document.getElementById("pwMsg").innerHTML = "비밀번호가 일치합니다.";
			}else{
				document.getElementById("pwMsg").innerHTML = "비밀번호가 일치하지 않습니다. 다시 확인해 주세요.";
			}
	});

	$(document.forms["signupform"].pwd).on("keyup",function(){
			if((signupform.pwd.value)==(signupform.pwd2.value)){
				document.getElementById("pwMsg").innerHTML = "비밀번호가 일치합니다.";
			}else{
				document.getElementById("pwMsg").innerHTML = "비밀번호가 일치하지 않습니다. 다시 확인해 주세요.";
			}
	});	
});

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
	$(document.forms["signupform"].id).bind("keyup",function(){
		$.ajax({
			url:"/airport/member/idcheck.do",
			type:"get",
			data:{
				"id":$(document.forms["signupform"].id).val()
			},
			success:function(data){
				$("#idChk").html(data); 
			}
		});
	});
});


//회원가입 비밀번호 일치, 중복 아이디x
function join(){
	if($("#idChk").text()){		//아이디 중복 거르는거 안됨..
		alert("이미 존재하는 아이디입니다.");
		return false;
	}else{
		if(document.signupform.pwd.value==document.signupform.pwd2.value){
			document.signupform.submit();
			alert("회원가입 완료!")
		}else{
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
	}
}