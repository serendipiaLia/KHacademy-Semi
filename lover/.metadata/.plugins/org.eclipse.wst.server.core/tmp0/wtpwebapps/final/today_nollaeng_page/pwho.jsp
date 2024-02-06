<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nollaeng : 누구랑 놀랭?</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/ptoday.css">

<script src="https://kit.fontawesome.com/7c6041109a.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Gothic+Coding:wght@700&family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="../resources/js/header_bar.js" defer></script>	
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="container">
		<hr class="hr-top">
		<div class="menu">
			<ul>
				<li><a href="pwhere.jsp">어디서 놀랭?</a></li>
				<li><a href="pwhat.jsp">뭐하고 놀랭?</a></li>
				<li><a href="pwho.jsp" id="who_nol">누구랑 놀랭?</a></li>
			</ul>
		</div>
		<hr class="hr-bottom">
		<div id="content">
			<h1>WHO</h1>
			<ul class="prod-list">
				<li><img src="../resources/images/who_card1.jpg" alt="상품1">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>연인</h2></a>
						<p></p>
					</div></li>
				<li><img src="../resources/images/who_card2.png" alt="상품2">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>친구</h2></a>
						<p></p>
					</div></li>
				<li><img src="../resources/images/who_card3.jpg" alt="상품3">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>가족</h2></a>
						<p></p>
					</div></li>
				<li><img src="../resources/images/who_card4.jpg" alt="상품4">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>학교 친구</h2></a>
						<p></p>
					</div></li>
				<li><img src="../resources/images/who_card5.jpg" alt="상품5">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>반려동물 동반</h2></a>
						<p></p>
					</div></li>
				<li><img src="../resources/images/who_card1.png" alt="상품6">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>홀로</h2></a>
						<p></p>
					</div></li>

			</ul>
		</div>

	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>	