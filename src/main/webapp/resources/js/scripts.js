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

//Type It
//Type It

    

let isVisible = false;

window.addEventListener('scroll', function() {
    if ( checkVisible($('#second')) && !isVisible) {
        
      new TypeIt('#petName', {
        speed:10,
        loop:true,
        breakLines: true
      })
      .type('부탁드려요 좋은 집사구합니당 ㅠㅠ')
      .type('우리애기 <span class="place">엄청 착해요</span>',{delay:500, speed:50})
      .delete('.place' ,{delay: 1000, instant: true, speed:50})
      .type('나름 착해요', {delay:3000, speed:30})
      .go();

      new TypeIt('#petName2', {
        startDelay:2000,
        speed:10,
        loop:true,
        breakLines: true
      })
      .go();

      new TypeIt('#petName3', {
        startDelay:4000,
        speed:10,
        loop:true,
        breakLines: true
      })
      .go();

      new TypeIt('#petName4', {
        startDelay:6000,
        speed:10,
        loop:true,
        breakLines: true
      })
      .go();

      new TypeIt('#petName5', {
        startDelay:6000,
        speed:10,
        loop:true,
        breakLines: true
      })
      .go();

      new TypeIt('#petName6', {
        startDelay:6000,
        speed:10,
        loop:true,
        breakLines: true
      })
      .go();



        isVisible=true;
    }
});

function checkVisible( elm, eval ) {
    eval = eval || "object visible";
    var viewportHeight = $(window).height(), // Viewport Height
        scrolltop = $(window).scrollTop(), // Scroll Top
        y = $(elm).offset().top,
        elementHeight = $(elm).height();   
    
    if (eval == "object visible") return ((y < (viewportHeight + scrolltop)) && (y > (scrolltop - elementHeight)));
    if (eval == "above") return ((y < (viewportHeight + scrolltop)));
}
//

