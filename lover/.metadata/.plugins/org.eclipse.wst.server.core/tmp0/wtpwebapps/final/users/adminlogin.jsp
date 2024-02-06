<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<link rel="stylesheet" href="../resources/css/admin_login.css">
<style>
	body{
		background-color : #ddddcc;
	}
</style>
</head>
<body>
	<%-- <jsp:include page=""/> --%>
		  <h3>관리자 로그인</h3>
		    <form action="/j_security_check" method="post">
		      <label for="id">
		      	<p class="label-txt">아이디</p>
		            <input type="text" id="id" name="j_username" required>
		          <div class="line-box">
		          	<div class="line"></div>
                  </div>
              </label>
		      <label for="passwd">
		      	<p class="label-txt">비밀번호</p>
		            <input type="password" id="id" name="j_password" required>
		          <div class="line-box">
                    <div class="line"></div>
                </div>
              </label>
		      <%
		      	String error = request.getParameter("error");
		        if(error != null){
		        	out.println("<div class='error'>");
		        	out.println("관리자 전용 페이지입니다.");
		        	out.println("</div>");
		        }
		      %>
		      <div class="button">
		        <button type="submit">로그인</button>
		      </div>
		    </form>
	<%-- <jsp:include page=""/> --%>
</body>
</html>