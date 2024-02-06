<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <title>놀랭 : Nollaeng</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="resources/css/index.css">
    <link rel="stylesheet" href="resources/css/open.css">
    <link rel="stylesheet" href="post_inc/bootstrap/animate.min.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../resources/js/login.js"></script>
</head>
<body>
    <body>
    <!-- 로그인 모달 -->
    <div id="loginModal" class="modal fade">
      <div class="modal-dialog">
            <div class="modal-content">
                <span class="close" id="closeModal">&times;</span>
                <div class="login-form"> <!-- 로그인 폼을 감싸는 div 추가 -->
                    <h3>로그인</h3>
                    <form>
                        <label>
                            <p class="label-txt">아이디</p>
                            <input type="text" class="input">
                            <div class="line-box">
                                <div class="line"></div>
                            </div>
                        </label>
                        <label>
                           <p class="label-txt">비밀번호</p>
                           <input type="password" class="input">
                           <div class="line-box">
                           <div class="line"></div>
                           </div>
                        </label>
                        <button type="submit" id="login_button">로그인</button>
                        <button type="button" id="signup_button">회원가입</button>
                        <div class="na">
                           <ul>
                              <li>
                                 <p>아이디 찾기</p>
                                 <p>|</p>
                                 <p>비밀번호 찾기</p>
                              </li>
                           </ul>
                        </div>
                    </form>
                </div>

                <!-- 회원가입 폼 -->
                <div id="signupForm" class="signup-form"> <!-- 회원가입 폼을 감싸는 div 추가 -->
                    <h3>회원가입</h3>
                    <form>
                     <label>
                        <p class="label-txt">아이디</p>
                        <input type="text" class="input" placeholder="영문 소문자, 숫자 5~20자의 아이디를 입력해주세요."> 
                        <div class="line-box">
                           <div class="line"></div>
                        </div> 
                     </label>
                     <label>
                        <p class="label-txt">비밀번호</p>
                        <input type="email" class="input" placeholder="영문, 숫자를 포함한 8자 이상의 비밀번호를 입력해주세요.">
                        <div class="line-box">
                           <div class="line"></div>
                        </div>
                     </label>
                     <label>
                        <p class="label-txt">이름</p>
                        <input type="password" class="input" placeholder="하이픈(-)을 제외한 숫자 10~11자를 입력해주세요.">
                        <div class="line-box">
                           <div class="line"></div>
                        </div>
                     </label>
                     <label>
                        <p class="label-txt">연락처</p>
                        <input type="password" class="input">
                        <div class="line-box">
                           <div class="line"></div>
                        </div>
                     </label>
                     <label>
                        <p class="label-txt">주소</p>
                        <input type="password" class="input" placeholder="Ex. 서울특별시 영등포구 선유동2로 57">
                        <div class="line-box">
                           <div class="line"></div>
                        </div>
                     </label>
                     <button type="button" id="signup_button_submit">가입하기</button>
                     <button type="button" id="back_button">홈으로</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div id="container">
        <section id="home">
            <div id="logo">
                <a href="main.jsp">
                    <img src="resources/images/nollaeng1_white.png" alt="Logo" id="logo"></a>
            </div>

            <!-- Updated login_logo div with onclick attribute -->
            <div id="login_logo" onclick="openModal()">
                <img src="resources/images/login_icon_white.png" alt="로그인 로고" id="login_logo">
            </div>

            <div id="caption">
                <h1>Enjoy With Us Nollaeng <br> 놀랭에서 즐겨 보세요!</h1>
                <p>다양한 장소, 이벤트, 소식을 찾아보세요. <br> 가장 특별한 시간을 간직할 수 있게 해드릴게요. </p>
                <a href="main.jsp" class="default-button scroll-btn btn-open">Let's Go</a>
            </div>
        </section>
    </div>

    <!-- 스크립트 부분 -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // 모달 열기
        function openModal() {
            $('#loginModal').modal('show');
            var animates = {
                1: 'animated zoomIn',
                2: 'animated flipInX',
                3: 'animated rotateIn',
                4: 'animated bounceIn',
                5: 'animated lightSpeedIn',
                6: 'animated slideInDown'
            };
            var select_num = Math.floor((Math.random() * 6) + 1);
            $('.modal-content').removeClass().addClass('modal-content ' + animates[select_num]);
        }

        // 모달 닫기 함수
        function closeModal() {
            $('#loginModal').modal('hide');
        }

        // Close 버튼 클릭 시 모달 닫기
        $('#closeModal').click(function () {
            closeModal();
        });

        // 모달이 닫힐 때 이벤트 처리
        $('#loginModal').on('hidden.bs.modal', function () {
            // 로그인 폼 초기화 및 보이기
            $('.login-form').show();
            // 회원가입 폼 초기화 및 숨김
            $('#signupForm').hide();
        });

        $('#signup_button').click(function () {
            // 현재 표시 중인 로그인 폼 숨기기
            $('.login-form').hide();
            // 회원가입 폼 보이기
            $('#signupForm').show();
            // 모달 크기 조절
            $('#loginModal').css('height', '677px'); // 원하는 크기로 조절
            // 외부 클릭 시 닫히도록 설정
            $('#loginModal').off('click.dismiss.bs.modal');
         });

        // 회원가입 폼의 가입하기 버튼 클릭 시 이벤트 처리
        $('#signup_button_submit').click(function () {
            // 여기에 회원가입 폼 제출 로직을 추가하세요.
            alert('가입이 완료되었습니다.');
        });

        // 홈으로 버튼 클릭 시 이벤트 처리
        $('#back_button').click(function () {
            // 모달 닫기
            closeModal();
      });

      // 모달이 닫힐 때 이벤트 처리
      $('#loginModal').on('hidden.bs.modal', function () {  
         // 로그인 폼 초기화 및 보이기
         $('.login-form').show();
         // 회원가입 폼 초기화 및 숨김
         $('#signupForm').hide();
         // 모달 크기 초기화
         $('#loginModal').css('height', '400px'); // 초기 크기로 복원
      });
    </script>
</body>
</html>