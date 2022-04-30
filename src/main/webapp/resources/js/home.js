
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

