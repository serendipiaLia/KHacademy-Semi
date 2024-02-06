<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/join.css">
<script src="../resources/js/jquery-3.7.1.js"></script>
<script>

 function validateSignUpForm() {
     var username = document.querySelector('.signup-form input[type="text"]').value;
     var password = document.querySelector('.signup-form input[type="password"]').value;
     var confirmPassword = document.querySelector('.signup-form input[type="password"]').value;
     var contact = document.querySelector('.signup-form input[type="tel"]').value;

 if (!/^[a-z0-9]{5,20}$/i.test(username)) {
     alert("아이디는 영문 소문자, 숫자로 이루어진 5~20자여야 합니다.");
     return false;
 }else if (!/^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\-]).{8,}$/.test(password)) {
     alert("비밀번호는 영문, 숫자, 특수문자를 포함한 8자 이상이어야 합니다.");
     return false;
 }else if (!/^\d{10,11}$/.test(contact)) {
     alert("연락처는 하이픈(-)을 제외한 숫자 10~11자를 입력해주세요.");
     return false;
 }
 return true; // 모든 유효성 검사를 통과하면 true 반환
}

 function checkPasswordMatch() {
     var password = document.querySelector('.signup-form input[type="password"]').value;
     var confirmPassword = document.getElementById('confirmPassword').value;

     var message = document.getElementById('confirmMessage');

 if (password === confirmPassword) {
     message.innerHTML = '비밀번호가 일치합니다.';
 }else {
     message.innerHTML = '비밀번호가 일치하지 않습니다.';
 }
 message.style.fontSize = '12px';
 message.style.fontFamily = 'Noto Sans KR', sans-serif;
}
 
 function checkId(){
	 if(t_id.value == ""){
			alert("아이디를 입력해주세요")
			t_id.focus();
			return false;
		}
		
		$.ajax({
			type: "get",
			dataType: "text",
			url: "/users/checkId",
			data: {id: $("#t_id").val()}, //id 
			success: function(data){
				var messageElement = $("#message-container");
				
				if(data == "usable"){
					$("#btnChk").attr("value", "Y"); //버튼 value값을 'Y'로 설정
					$("#message").text("사용할 수 있는 ID입니다.")
								 .removeClass("error-message")  // 에러 메시지 클래스 제거
                    			 .addClass("success-message");
				}else{ //data == "not_usable"
					$("#message").text("이미 가입된 ID입니다.")
								 .removeClass("error-message")  // 에러 메시지 클래스 제거
       			 				 .addClass("success-message");
				}
			},
			error: function(){
				alert("에러 발생!")
			}
		});
 }
</script>
</head>
<body>
    <!-- 회원가입 폼 -->
    <div id="signupForm" class="signup-form">
        <h3>회원가입</h3>
        <form action="../insertmember.do" method="post" name="member" onsubmit="return validateSignUpForm()">
            <label for="id" class="label-with-button">
                <p class="label-txt">아이디</p>
                <div class="label-box" id="input-container">
				    <input type="text" class="input" placeholder="영문 소문자, 숫자 5~20자의 아이디를 입력해주세요." id="t_id" name="id">
				    <button type="button" class="button2" id="btnChk" onclick="checkId()">중복 확인</button>
                <p id="message"></p>
                </div>
                 <div class="line-box-id">
                 	<div class="line"></div>
                 </div>
            </label>
            <label for="passwd">
                <p class="label-txt">비밀번호</p>
                <input type="password" class="input" 
                	   placeholder="영문, 숫자, 특수문자를 포함한 8자 이상의 비밀번호를 입력해주세요." id="passwd" name="passwd">
                <div class="line-box">
                    <div class="line"></div>
                </div>
            </label>
            <label>
            	<p class="label-txt">비밀번호 확인</p>
            	<input type="password" class="input" id="confirmPassword" oninput="checkPasswordMatch()">
            	<div class="line-box">
                    <div class="line"></div>
                </div>
                <div id="confirmMessage"></div>
            </label>
            <label for="name">
                <p class="label-txt">이름</p>
                <input type="text" class="input" id="name" name="name">
                <div class="line-box">
                    <div class="line"></div>
                </div>
            </label>
            <label for="phone">
                <p class="label-txt">연락처</p>
                <input type="tel" class="input"
                	   placeholder="하이픈(-)을 제외한 숫자 10~11자를 입력해주세요." id="phone" name="phone">
                <div class="line-box">
                    <div class="line"></div>
                </div>
            </label>
            <label for="addr">
                <p class="label-txt">주소</p>
                <input type="text" class="input"
                	   placeholder="Ex. 서울특별시 영등포구 선유동2로 57" id="addr" name="addr">
                <div class="line-box">
                    <div class="line"></div>
                </div>
            </label>
            <button type="submit" id="signup_button_submit">가입하기</button>
            <button type="button" id="back_button"><a href="../main.jsp">취소</a></button>
        </form>
    </div>
</body>
</html>