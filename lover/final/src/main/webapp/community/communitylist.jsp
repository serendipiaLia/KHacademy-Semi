<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nollaeng : 커뮤니티</title>
<link rel="stylesheet" href="../resources/css/communitylist.css">
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap"
   rel="stylesheet">
<script src="../resources/js/header_bar.js" defer></script>
</head>
<body>
   <jsp:include page="../header.jsp" />
   <div class="container">
      <h2 class="h2_css"><a href="/communitylist.do" id="h2_css2">커뮤니티</a></h2>
      <div class="communitylist_box">
         <table class="communitylist_top">
            <tbody>
               <tr>
                  <td>
                     <div class="selecter">
                        <!-- 검색 영역 -->
                        <!-- <form action="" method="get" class="arrayform">
                        <label for="sort"> 정렬 기준 선택: </label>
                        <select name="sort" id="sort">
                           <option value="recent" >최신순</option>
                           <option value="popular">조회순</option>
                           <option value="local">지역순</option>
                        </select>
                        <input type="submit" value="정렬하기">
                     </form>    -->

                        <form action="" method="get" class="searchform">
                           <select name="field" class="field">
                              <option value="title" ${(field eq "title") ? "selected" : ""}>제목</option>
                              <option value="local_name"
                                 ${(field eq "local_name") ? "selected" : ""}>지역</option>
                              <option value="user_id"
                                 ${(field eq "user_id") ? "selected" : ""}>ID</option>
                           </select> <input type="text" id="text" name="kw" value="${kw}"
                              class="kw" placeholder="검색어를 입력하세요.">
                           <button type="submit" id="button4">
                           <i class="fas fa-search" aria-hidden="true"></i>
                           </button>

                        </form>

                     </div>
                  </td>
               </tr>
            </tbody>
         </table>
         <table class="communitylist">
				<thead>
					<tr>
						<th>번호</th>
						<th>지역</th>
						<th>제목</th>
						<th>아이디</th>
						<th>조회수</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>

					<%-- 여기에 회원 목록을 동적으로 출력하는 부분을 추가할 수 있습니다. --%>
					<c:forEach var="c" items="${boardList}">
						<tr>
							<td>${c.reviewNo}</td>
							<td>${c.localName}</td>
							<td><a href="/communityview.do?review_no=${c.reviewNo}">${c.title}</a></td>
							<td>${c.userId}</td>
							<td>${c.hit}</td>
							<td><fmt:formatDate value="${c.reviewCreatedate}"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- 페이지 처리 영역 -->
		<div class="pagination_write">
			<!-- 이전 페이지 -->
			<c:choose>
				<c:when test="${startPage > 1}">
					<a href="/communitylist.do?pageNum=${startPage - 1}">&laquo;</a>
				</c:when>
				<c:otherwise>
					<a href="">&laquo;</a>
				</c:otherwise>
			</c:choose>
			<!-- 페이지 리스트 -->
			<c:forEach var="i" begin="1" end="${endPage}">
				<c:if test="${page == i}">
					<a href="/communitylist.do?pageNum=${i}"><b>${i}</b></a>
				</c:if>
				<c:if test="${page != i}">
					<a href="/communitylist.do?pageNum=${i}">${i}</a>
				</c:if>
			</c:forEach>
			<!-- 다음 페이지 -->
			<c:choose>
				<c:when test="${endPage > startPage}">
					<a href="/communitylist.do?pageNum=${startPage + 1}">&raquo;</a>
				</c:when>
				<c:otherwise>
					<a href="">&raquo;</a>
				</c:otherwise>
			</c:choose>
			<a href="/writeform.do" class="communitylist_bottom">
				<button type="button" id="button5">글쓰기</button>
			</a>
		</div>
		<!-- 글쓰기 버튼 -->
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>