document.addEventListener("turbolinks:load", function() {
  var owl = $("#owl-carousel-under-photo");
  owl.owlCarousel({
    items: 4,
    autoPlay: false,
    slideSpeed: 400
  });
  $(".btn-next").click(function(){
    owl.trigger('owl.next');
  })
  $(".btn-prev").click(function(){
    owl.trigger('owl.prev');
  })
})
