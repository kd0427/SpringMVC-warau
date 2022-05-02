/*
* ---------------------------------------------------------------------------
* jQuery Version
* ---------------------------------------------------------------------------
*/
var ctx = getContextPath();
  function getContextPath() {
  return sessionStorage.getItem("contextpath");
}

var $window = $(window),
    $mainHeader = $('#main-header'),
    $logonav=$('#logodiv')
    $logodiv=$('.logo')
    $defaultLogo ='/img/logo.png',
    $smallLogo = '/img/logo2.png';

    $window.scroll(function(){
      if($(this).scrollTop()>100){
        if(!$mainHeader.hasClass('shrink')){
          $mainHeader.addClass('shrink')
          $logonav.addClass('shrink')
          $logodiv.addClass('shrink')
          switchImages($smallLogo);
        }
      }else{
        if($mainHeader.hasClass('shrink')){
          $mainHeader.removeClass('shrink')
          $logonav.removeClass('shrink')
          $logodiv.removeClass('shrink')
          switchImages($defaultLogo);
        }
      }

    });

    //이미지바꾸는 함수
    function switchImages(newPath){
        var $logo = $('#logo');
        $logo.fadeOut(300, function(){
          $logo.attr('src',newPath)
          $logo.fadeIn(300);
        });
    }

// ScrollMagic
//ScrollMagic
const spyEls = document.querySelectorAll('section.scroll-spy');
spyEls.forEach(function (spyEl) {
  new ScrollMagic
    .Scene({
      triggerElement: spyEl, // 보여짐 여부를 감시할 요소를 지정
      triggerHook: 0.7, // viewport에 어느부분에서 감시할지 지정
    })
    .setClassToggle(spyEl, 'show')
    .addTo(new ScrollMagic.Controller());
});

//swipe 슬라이드

var swiper = new Swiper(".mySwiper", {
  slidesPerView: 1,
  spaceBetween: 0,
  autoplay: { //자동슬라이드 
    delay: 2500, // 시간 설정
    disableOnInteraction: false, // false-스와이프 후 자동 재생
  },

  loop: true,
  effect: "fade", //서서히 변화주기
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev"
  }
});

/////가족찾아요 슬라이드
var swiper2 = new Swiper(".mySwiper2", {
  direction: "vertical",
  slidesPerView: 1,
  spaceBetween: 30,
  mousewheel: true,
  pagination: {
    el: ".swiper-pagination",
    clickable: true
  }
});

///////////


