function openModal() {
   document.getElementById('loginModal').style.display = 'block';
   // 회원가입 폼 숨기기
   $('#signupForm').hide();
}

// Function to close the modal
function closeModal() {
   $('#loginModal').modal('hide');
}

// Close the modal when the close button is clicked
$('#closeModal').click(function () {
   closeModal();
});

// Close the modal when the user clicks outside the modal
$(document).on('click', function (event) {
   var modal = $('#loginModal');
   if (event.target === modal[0]) {
       closeModal();
   }
});

$(function () {
   var animates = {
       1: ['animated zoomIn', 'animated zoomOut'],
       2: ['animated flipInX', 'animated flipOutX'],
       3: ['animated rotateIn', 'animated rotateOut'],
       4: ['animated bounceIn', 'animated bounceOut'],
       5: ['animated lightSpeedIn', 'animated lightSpeedOut'],
       6: ['animated slideInDown', 'animated slideOutUp']
   };
   var select_num = 1;

// 모달 열기
$('#modal_open').click(function () {
   select_num = Math.floor((Math.random() * 6) + 1);

   $.each(animates, function (key, val) {
       $('.modal-content').removeClass(val[0]);
   });

   // 모달 열기
   openModal();
   $('.modal-content').addClass(animates[select_num][0]);
   return false;
});

   var hideDelay = true;
   $('#loginModal').on('hidden.bs.modal', function (e) { // 'hidden.bs.modal'로 수정
       if (hideDelay) {
           $('.modal-content').removeClass(animates[select_num][0]).addClass(animates[select_num][1]);
           hideDelay = false;
           setTimeout(function () {
               // 모달 닫을 때 회원가입 폼 초기화 및 숨김
               $('#signupForm').hide();
               $('.modal-content').removeClass(animates[select_num][1]).addClass(animates[select_num][0]);
           }, 500);
           return false;
       }
       hideDelay = true;
       return true;
   });
});

// 회원가입 버튼 클릭 시 이벤트 처리
$('#signup_button').click(function () {
   // 모달 열기
   openModal();
   // 현재 표시 중인 모달 내용 숨기기
   $('.modal-content').hide();
   // 회원가입 폼 보이기
   $('#signupForm').show();
    // 모달 크기 조절
    $('#loginModal').css('height', '677px'); // 원하는 크기로 조절
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