<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>join.jsp</title>
<link href="css/join.css" rel="stylesheet" type="text/css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.7.1.js"></script>
<script src='${pageContext.request.contextPath}/js/validate3.js'></script>
<script>

$(function () {
	let checkid=false;
	let checkemail=false;
	
	$("input[name=id]").on('keyup',
			function () {
				const pattern=/^\w{5,12}$/;
				const id=$(this).val();
				if( !pattern.test(id)){
					 $("#id_message").css('color','red')
					 					.html("영문자 숫자 _로 5~12자 가능합니다");
					 checkid=false;
					 return;
				}
				
				$.ajax({
					url:"idcheck.net", 
					data: { "id" :id}	,
					success : function (resp) { 
							if(resp=='-1'){
								$("#id_message").html("사용 가능한 아이디 입니다").css('color','green');
								checkid=true;
							}else{
								$("#id_message").css('color','red').html("사용중인 아이디입니다");
								checkid=false;
							}
						}//success
					})//ajax
				})
		

		$("input[name=email]").on('keyup',
				function(){
				const pattern =/^\w+@\w+[.][A-Za-z0-9]{3}$/;
				const email_value=$(this).val();
				
				if( !pattern.test(email_value)){
					 $("#email_message").css('color','red')
					 					.html("이메일 형식 다시 작성 바람");
					 		
					 	checkemail=false;
					 	
						}else{
							$("#email_message").css('color','green')
		 					.html("이메일 형식 맞음 굳");
							
					 		checkemail=true;
							}
				});//email key up 이벤트처리 끝
				
				$('form').submit(function () {
					if(!$.isNumeric($("input[name='age']").val())){
						alert("나이는 숫자를 입력하세요");
						$("input[name='age']").val('').focus();
						return false;
					}
					
					if(!checkid){
						alert("사용 가능한 id로 입력하세요");
						$("input[name=id]").val('').focus();
						$("#id_message").text('');
						return false;
					}
					if(!checkemail){
						alert("emali형식을 확인하세요");
						$("input[name=email]").focus();
						return false;
					}
					
					
				})
				
})
</script>

</head>
<body>
	<form action="joinProcess.net" method="post" name="joinform">
		<h1>회원가입</h1>
		<hr>
		<b>아이디</b> <input type="text" placeholder="Enter id" name="id"
			maxlength="12" required> <span id="id_message"></span>
		
		 <b>비밀번호</b>
		<input type="password" placeholder="Enter Password" name="pass" required>
		
		 <b>이름</b> <input type="text"
			placeholder="Enter name" name="name" maxlength="5" required>

		<b>나이</b> <input type="text" placeholder="Enter age" name="age"
			maxlength="2" required> <b>성별</b>
		<div>
			<input type="radio" name="gender" value="남" checked><span>남자
			</span> <input type="radio" name="gender" value="여"><span>여자</span>
		</div>


		<b>이메일 주소</b> 
		<input type="text" name="email"
			placeholder="Enter email" maxlength="30" required>
			 <span id="email_message"></span>


		<div class="clearfix">
			<button type="submit" class="submitbtn">회원가입</button>
			<button type="reset" class="cancelbtn">다시작성</button>
		</div>

	</form>
</body>
</html>




