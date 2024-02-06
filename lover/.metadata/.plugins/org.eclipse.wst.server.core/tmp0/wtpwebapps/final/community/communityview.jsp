<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"  href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/communityview.css">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Gothic+Coding:wght@700&family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="../resources/js/header_bar.js" defer></script>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="blog-post">
		<h2>${community.title}</h2>
		<p class="date">
			<strong>ID : </strong>${community.userId} <span class=hit> <small>조회수:
					${community.hit}</small></span>
		</p>
		<span class="reviewCreatedate">작성일 | <fmt:formatDate
				value="${community.reviewCreatedate}" pattern="yyyy-MM-dd HH:mm" />
		</span>


		<table>


			<tr>
				<td>장소명 : ${community.localName}</td>
			</tr>
		</table>
		<div class="content">

			<div>
				<c:if test="${not empty community.fileName}">
					<img src="../upload/${community.fileName}" alt="이미지">
				</c:if>
			</div>

			<p>${community.reviewContent}</p>
			<c:if test="${sessionId eq community.userId}">
				<div class="buttons-container">
					<a href="../updatewirteform.do?review_no=${community.reviewNo}">
						<button type="button" class="btn-custom edit">수정</button>
					</a> <a href="/deletecommunity.do?review_no=${community.reviewNo}"
						onclick="return confirm('정말로 삭제하시겠습니까?')">
						<button type="button" class="btn-custom delete">삭제</button>
					</a>
				</div>
			</c:if>

		</div>
		<hr class="content-divider">
		<div class="reaction">

			<div class="comment-section">
				<ul class="comments">
					<li><span><span class="point-span userID"><b>postmalone</b>
						</span>내가 입으면 더 잘어울릴 것 같아</span> <img id="heartIcon2" img class="comment-heart"
						src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png"
						alt="하트" onclick="toggleHeart2()"></li>
					<!-- input 값 여기에 추가 -->
				</ul>
				<div class="time-log">
					<span>32분 전</span>
				</div>
			</div>
		</div>
		<div class="hl"></div>
		<div class="comment">
			<input id="input-comment" class="input-comment" type="text"
				placeholder="댓글 달기...">
			<button type="submit" class="submit-comment" disabled>등록</button>
		</div>
		<div></div>

	</div>
	</div>



	<script src="../resources/js/communityview.js"></script>
   
   
    <jsp:include page="../footer.jsp"/>
    <script>
					const commentInput = document
							.getElementById('input-comment');
					const commentBtn = document
							.getElementsByClassName('submit-comment')[0];
					const commentList = document
							.getElementsByClassName('comments')[0];

					commentInput
							.addEventListener(
									'keypress',
									function(e) {
										if (commentInput.value) {
											if (e.which === 13) {
												var newComment = document
														.createElement('li')
												newComment.innerHTML = `<span><span class="point-span userID">thisisyourhyung　</span>`
														+ this.value
														+ `</span><img class="comment-heart" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">`;
												commentList
														.appendChild(newComment);
												this.value = "";
											}
										}
									})

					commentBtn
							.addEventListener(
									'click',
									function() {
										if (commentInput.value) {
											var newComment = document
													.createElement('li')
											newComment.innerHTML = `<span><span class="point-span userID">thisisyourhyung </span>`
													+ commentInput.value
													+ `</span><img class="comment-heart" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">`;
											commentList.appendChild(newComment);
											commentInput.value = "";
										}
									})

					commentInput.addEventListener('keyup', function(event) {
						if (commentInput.value) {
							commentBtn.disabled = false;
						} else {
							commentBtn.disabled = true;
						}
					})
				</script>
   </body>
  