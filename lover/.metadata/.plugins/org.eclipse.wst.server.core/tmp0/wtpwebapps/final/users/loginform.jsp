<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="../resources/css/login.css">
</head>
<script>
     function goToSignUpPage() {
    	//회원 가입 폼으로 이동
        window.location.href = "joinform.do";
        }
     
    function validateForm() {
        var username = document.querySelector('.input[type="text"]').value;
        var password = document.querySelector('.input[type="password"]').value;
        var confirmPassword = document.querySelector('.input[type="password"]').value;

        if (username.trim() === '') {
            alert("아이디를 입력하세요.");
            return false;
        }

        var usernameRegex = /^[a-zA-Z0-9]+$/;
        if (!usernameRegex.test(username)) {
            alert("아이디는 숫자 또는 영어로 입력해 주세요.");
            return false;
        }

        if (password.trim() === '') {
            alert("비밀번호를 입력하세요.");
            return false;
        }

        if (password !== confirmPassword) {
            alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
            return false;
        }

        return true; // 모든 유효성 검사를 통과하면 true 반환
    }
</script>
<body>
    <div class="login-form">
        <form action="/login.do" method="post" onsubmit="return validateForm()">
            <h3>로그인<a href="adminlogin.jsp" id="adminlogin">.</a></h3>
            <label for="id">
                <p class="label-txt">아이디</p>
                <input type="text" class="input" id="id" name="id" required>
                <div class="line-box">
                    <div class="line"></div>
                </div>
            </label>
            <label for="passwd">
                <p class="label-txt">비밀번호</p>
                <input type="password" class="input" id="passwd" name="passwd" required>
                <div class="line-box">
                    <div class="line"></div>
                </div>
            </label>
            <div class="error">${error}</div>
            <button type="submit" id="login_button" onclick="validateForm()">로그인</button>
            <button type="button" id="signup_button" onclick="goToSignUpPage()">회원가입</button>
            <div class="na">
                <ul>
                    <li>
                        <p>아이디 찾기</p>
                        <p>|</p>
                        <p>비밀번호 찾기</p>
                    </li>
                </ul>
            </div>
        </form>
    </div>
</body>
</html>