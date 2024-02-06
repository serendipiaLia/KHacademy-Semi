<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nollaeng : 뭐하고 놀랭?</title>
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
				<li><a href="pwhat.jsp" id="what_nol">뭐하고 놀랭?</a></li>
				<li><a href="pwho.jsp">누구랑 놀랭?</a></li>
			</ul>
		</div>
		<hr class="hr-bottom">
		<div id="content">
			<h1>WHAT</h1>
			<ul class="prod-list">
				<li><img src="../resources/images/what_card1.png" alt="상품1">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>클라이밍</h2></a>
						<p>가격: 20,000원</p>
						<p></p>
					</div></li>
				<li><img src="../resources/images/what_card2.png" alt="상품2">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>잠실 카트 체험장</h2></a>
						<p>2인승 기준</p>
						<p>가격: 10분 25,000원</p>
					</div></li>
				<li><img src="../resources/images/what_card3.png" alt="상품3">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>남산</h2></a>
						<p>사랑의 자물쇠</p>
						<p></p>
					</div></li>
				<li><img src="../resources/images/낙산.jpg" alt="상품3">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>낙산공원</h2></a>
						<p>산책</p>
						<p></p>
					</div></li>
				<li><img src="../resources/images/여의도한강.jpg" alt="상품3">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>세빛둥둥섬</h2></a>
						<p>무지개 분수</p>
						<p></p>
					</div></li>
				<li><img src="../resources/images/what_card6.jpg" alt="상품3">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>아쿠아리움</h2></a>
						<p>가격: 33,000원</p>
						<p></p>
					</div></li>

			</ul>
		</div>

	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>