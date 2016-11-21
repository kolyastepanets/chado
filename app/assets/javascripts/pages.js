document.addEventListener("turbolinks:load", function() {
  $('#myCarousel').carousel({
    interval: 8000
  })

  $('.carousel .item').each(function(){
    var next = $(this).next();
    if (!next.length) {
      next = $(this).siblings(':first');
    }
    next.children(':first-child').clone().appendTo($(this));
    if (screen.width >= 1024) {
      var disp_perf = 3;
    } else {
      var disp_perf = 0;
    }
    for (var i=0;i<disp_perf;i++) {
      next=next.next();
      if (!next.length) {
        next = $(this).siblings(':first');
      }
      next.children(':first-child').clone().appendTo($(this));
    }
  });
})
