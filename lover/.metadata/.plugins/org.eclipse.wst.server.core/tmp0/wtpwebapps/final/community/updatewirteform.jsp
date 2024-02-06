<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/writeform.css">
<script src="https://kit.fontawesome.com/7c6041109a.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Gothic+Coding:wght@700&family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
   
<jsp:include page="../header.jsp"/>
<div class="email-form-container">
    <h2>Update<br>Log</h2>
    <form action="/updatewirte.do" id="box" method="post">
      <input type="hidden" name="review_no" value="${community.reviewNo}">
      <div id="div">   
        <label>제목</label>
        <input type="text" id="title" name="title" value="${community.title}" required>
       </div>
      <div id="div">
        <label>장소명</label>
        <input type="text" id="place" name="local_name" value="${community.localName}"required>
      </div>
      <div id="file">
        <label for="attachment" class="custom-file-input">첨부 파일 선택</label>
        <input type="file" id="attachment" name="filename">
     </div>       
        <textarea id="message" name="review_content" rows="40">${community.reviewContent}</textarea>
        <div id="btn">      
            <button type="submit" id="btn2">저장</button>
          <a href="/communitylist.do">
            <button type="button" id="btn2">취소</button>
          </a>
        </div>
    </form>
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>