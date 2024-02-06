<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nollaeng : 회원 정보</title>
<link rel="stylesheet" href="../resources/css/updatestyle.css">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Gothic+Coding:wght@700&family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
</head>
<body>
<jsp:include page="../header.jsp" />
    <div id="container">
      <section id="join">
      <h2>회원 수정</h2>
        <form action="/updateuser.do" method="post" name="member"  onsubmit="return validateForm()">
        <input type="hidden" value="${member.userId}">
          <fieldset>
             <div class ="ul_box">
             <ul>
                <li>
                   <label for="t_id">아이디</label>
                   <input type="text" id="t_id" name="id" 
                       value="${member.userId}" readonly>
                  <p class = "p1">　*아이디는 변경할 수 없습니다.</p>
                </li>
                <li>
                   <label for="passwd">비밀번호</label>
                   <input type="password" id="passwd" name="passwd"
                    pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"
                                title="비밀번호는 영문자, 숫자, 특수문자를 모두 포함하여 8자 이상 입력하세요"
                       placeholder="비밀번호는 영문자, 숫자, 특수문자 포함 8자 이상 입력 가능">
                       <p id="passwdMessage"></p>
                </li>
                <li>
                   <label for="passwd2">비밀번호 확인</label>
                   <input type="password" id="passwd2" name="passwd2" 
                    pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"
                                title="비밀번호는 영문자, 숫자, 특수문자를 모두 포함하여 8자 이상 입력하세요"
                      placeholder="비밀번호를 동일하게 입력해 주세요">
                       <p id="passwd2Message"></p>
                </li>
                <li>
                   <label for="name">이름</label>
                   <input type="text" id="name" name="name" 
                      value="${member.userName}" readonly>
                      <p class = "p1">*이름은 변경할 수 없습니다.
                </li>
                <li>
                   <label for="phone">전화번호</label>
                   <input type="text" name="phone" value="${member.userPhone}">
                </li>
                <li>
                   <label for="phone">주소</label>
                   <input type="text" name="addr" value="${member.userAddr}">
                </li>
                
             </ul>
             </div>
          </fieldset>
          <div class="button">
             <button>저장</button>
             <button type="reset">지우기</button>
             <a href="../main.jsp"><button type="button">취소</button></a>
          </div>
        </form>
     </section>
   </div>
   <jsp:include page="../footer.jsp" />
   <script>
        function validateForm() {
            var passwd = document.getElementById('passwd').value;
            var passwd2 = document.getElementById('passwd2').value;

            // Validate password
            if (!isValidPassword(passwd)) {
                document.getElementById('passwdMessage').innerHTML = "비밀번호는 영문자, 숫자, 특수문자를 모두 포함하여 8자 이상 입력하세요";
                return false;
            } else {
                document.getElementById('passwdMessage').innerHTML = "";
            }

            // Validate password confirmation
            if (passwd !== passwd2) {
                document.getElementById('passwd2Message').innerHTML = "비밀번호가 일치하지 않습니다";
                return false;
            } else {
                document.getElementById('passwd2Message').innerHTML = "";
            }
            return true;
            
        }

        function isValidPassword(password) {
            // Password should contain at least one uppercase letter, one digit, and one special character
            var regex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
            return regex.test(password);
        }
    </script>
</body>
</html>