<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>놀랭 : 오늘의 놀랭</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/ptoday.css">
<script src="https://kit.fontawesome.com/7c6041109a.js"></script>
<script src="../resources/js/header_bar.js" defer></script>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Gothic+Coding:wght@700&family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
	
	
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="container">
		<div class="box">
			<h3>
				❄️<br>놀랭을 방문해주신<br>여러분들을 위해 준비했어요
				<hr class="hr-top">
			</h3>
			<div class="menu">
				<ul>
					<li class = "where"><a href="pwhere.jsp">어디서 놀랭</a></li>
					<li class = "what"><a href="pwhat.jsp">뭐하고 놀랭</a></li>
					<li><a href="pwho.jsp">누구랑 놀랭</a></li>
				</ul>
			</div>
			<hr class="hr-bottom">
			<div id="content">
				<ul class="prod-list">
				<li><img src="../resources/images/where_card1.png" alt="상품1">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>연남 핫플레이스</h2></a>
						<p>연남동에서 핫한 장소를 추천해드려요!</p>
					</div></li>
				<li><img src="../resources/images/where_card2.png" alt="상품2">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>MD 추천 파인다이닝</h2></a>
						<p>분위기 좋은 파인다이닝</p>
					</div></li>
				<li><img src="../resources/images/where_card3.png" alt="상품3">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>인스타그램에서<br>가장 많이 검색된 카페</h2></a>
						<p>인스타그램에서 한 번쯤 봤던 카페<br>NUDAKE</p>
					</div></li>
				<li><img src="../resources/images/where_card4.png" alt="상품3">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>놀랭's Pick!</h2></a>
						<p>놀랭 최고 인기 코스 모음</p>
					</div></li>
				<li><img src="../resources/images/where_card5.png" alt="상품3">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>서울 전시회 추천</h2></a>
						<p></p>
					</div></li>
				<li><img src="../resources/images/where_card6.png" alt="상품3">
					<div class="caption">
						<a href="../instar/instar.jsp"><h2>캐주얼하게 즐기는 bar</h2></a>
						<p>가볍게 한잔하기 좋은 곳</p>
					</div></li>
				</ul>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>