<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<link rel="stylesheet" href="/resources/css/userviewstyle.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
</head>
<body>
   <jsp:include page="../header.jsp" />
    <div id="container">
      <section id="memberview">
      <h2>회원 정보</h2>
      <table>
         <tbody>
            <tr>
               <td class="id1"><label for="id">아이디</label></td>
               <td>${member.userId}</td>
            </tr>
            <tr>
               <td class="id2"><label for="passwd">비밀번호</label></td>
               <td>${member.userPasswd}</td>
            </tr>
            <tr>
               <td class="id3"><label for="name">이름</label></td>
               <td>${member.userName}</td>
            </tr>
            <tr>
               <td class="id4"><label for="phone">연락처</label></td>
               <td>${member.userPhone}</td>
            </tr>
            <tr>
               <td class="id5"><label for="addr">주소</label></td>
               <td>${member.userAddr}</td>
            </tr>
            <tr>
               <td class="id6"><label for="joindate">가입일</label></td>
               <td><fmt:formatDate value="${member.userJoindate}" 
                          pattern="yyyy-MM-dd HH:mm:ss" /></td>
            </tr>
            <tr>
               <td colspan="2">
               
               <!-- 관리자아니면 본인만 볼수잇게 생성 -->
               <c:choose>
               <c:when test="${sessionId eq member.userId }">
                  <a href="/updateuserform.do?id=${member.userId}"> 
                     <button>수정</button>
                  </a>
                  <a href="/deletemember.do?id=${member.userId}" onclick="return confirm('정말로 삭제하시겠습니까?')"> 
                     <button>탈퇴</button>
                  </a>
               </c:when>
             <c:otherwise>
                <a href="/updateuserform.do?id=${member.userId}"> 
                     <button>수정</button>
                  </a>
                  <a href="/deletemember.do?id=${member.userId}" onclick="return confirm('정말로 삭제하시겠습니까?')"> 
                     <button>탈퇴</button>
                  </a>
               </c:otherwise>
               </c:choose>
               </td>
            </tr>
         </tbody>
      </table>
     </section>
   </div>
   <jsp:include page="../footer.jsp" />
</body>
</html>