document.addEventListener("turbolinks:load", function() {
  var owl = $("#owl-carousel");
  owl.owlCarousel({
    items: 5,
    autoPlay: true,
    slideSpeed: 400,
    itemsCustom: [[320,1], [375,2], [667,3], [1000,4], [1200,5]]
  });
  $(".next").click(function(){
    owl.trigger('owl.next');
  })
  $(".prev").click(function(){
    owl.trigger('owl.prev');
  })
})
