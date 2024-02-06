document.addEventListener("DOMContentLoaded", function() {
      // 스크롤 이벤트에 따라 상단 메뉴를 고정하는 함수
      function handleScroll() {
        var navbar = document.getElementById("navbar_box");
        var scrollY = window.scrollY;

        if (scrollY > 0) {
          navbar.style.position = "fixed";
          navbar.style.top = "0";
          navbar.style.width = "100%";
        } else {
          navbar.style.position = "static";
          navbar.style.top = "auto";
        }
      }

      // 스크롤 이벤트 리스너 등록
      window.addEventListener("scroll", handleScroll);
    });

//제이쿼리로 구현
$(document).ready(function(){
  // alert("test..");
  //toggle() - show(), hide() / toggleClass()도 있음
  $(".navbar_toggleBtn").click(function(){
    $(".navbar_menu").toggle("active");
  });

  //pc기준에서 상단 메뉴가 보이지 않을때 처리
  $(window).resize(function(){
    if(parseInt($("nav").css("width")) > 768){
      $(".navbar_menu").css("display", "flex");
    }else{
      $(".navbar_menu").css("display", "none");
    }
  })
})
