<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 목록</title>
<link rel="stylesheet" href="../resources/css/userlist.css">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Gothic+Coding:wght@700&family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
   <div class="container">
      <section id="userlist">
         <h2>회원 목록</h2>
         <div class="logout">
            <p>
               <a href="/logout.do">[관리자 로그아웃]</a>
            </p>
         </div>
         <table class="memberlist">
            <thead>
               <tr>
                  <th>번호</th>
                  <th>아이디</th>
                  <th>비밀번호</th>
                  <th>이름</th>
                  <th>주소</th>
                  <th>연락처</th>
                  <th>가입일</th>
               </tr>
            </thead>
            <tbody>

               <%-- 여기에 회원 목록을 동적으로 출력하는 부분을 추가할 수 있습니다. --%>
               <c:forEach var="c" items="${userList}">
                  <tr>
                     <td>${c.userNo}</td>
                     <td class="id-column"><a href="/userview.do?id=${c.userId}">${c.userId}</a></td>
                     <td>${c.userPasswd}</td>
                     <td>${c.userName}</td>
                     <td>${c.userAddr}</td>
                     <td>${c.userPhone}</td>
                     <td><fmt:formatDate value="${c.userJoindate}"
                           pattern="yyyy-MM-dd HH:mm:ss" /></td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
      </section>
   </div>
</body>
</html>