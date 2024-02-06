<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>놀랭 : 이벤트 및 혜택</title>
    <!-- Bootstrap CSS 파일 추가 -->
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Gothic+Coding:wght@700&family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/event.css">
    <link rel="stylesheet" href="../resources/css/bootstrap.css">
    <script src="../resources/js/header_bar.js" defer></script>
    <style>
         .btn-apply{
         bottom: -1050px 
         }
    </style>
</head>
<body>
<jsp:include page="../header.jsp"/>
    <div class="img">
        <img src="../resources/images/트리2.png" alt="트리">
    </div>
    <div class="back">
        <h2><b>크리스마스 이벤트</b></h2>
        <h5>베스트 리뷰어 선정</h5>
        <form>
            <div class="container text-center">
                <p>이번 달 최고의 리뷰를 쓴 리뷰어에게 투표해 주세요!<br>
                    <b>투표를 통해 당선된 베스트 리뷰어에게 경품을 선물해드립니다</b>
                </p>
                <button type="submit" class="btn-apply">투표하기</button>
            </div>
            <div class="d-flex justify-content-center flex-wrap">
                <div class="card mx-2" style="width: 18rem; height: 26rem;">
                    <img src="../resources/images/고양이.jpg" class="card-img-top" alt="사진">
                    <div class="card-body">
                        <p class="card-text card-description">제목</p>
                        <p class="see">닉네임</p>
                        <p class="text">조회수 1000</p>
                    </div>
                </div>
                <div class="card mx-2" style="width: 18rem; height: 26rem;">
                    <img src="../resources/images/고양이.jpg" class="card-img-top" alt="사진">
                    <div class="card-body">
                        <p class="card-text card-description">제목</p>
                        <p class="see">닉네임</p>
                        <p class="text">조회수 1500</p>
                    </div>
                </div>
                <div class="card mx-2" style="width: 18rem; height: 26rem;">
                    <img src="../resources/images/고양이.jpg" class="card-img-top" alt="사진">
                    <div class="card-body">
                        <p class="card-text card-description">제목</p>
                        <p class="see">닉네임</p>
                        <p class="text">조회수 2000</p>
                    </div>
                </div>
            </div>
        </form>
    <div class="box">
        <ul>
            <li>
                <span><strong>기간</strong></span> 2023.12.04~2023.12.24
            </li>
            <li>
                <span><strong>발표</strong></span> 2023.12.25 (월)
            </li>
            <li>
                <span><strong>경품</strong></span> 최신 디지털 카메라
            </li>
        </ul>
    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <jsp:include page="../footer.jsp"/>
</body>
</html>