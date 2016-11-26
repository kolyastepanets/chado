document.addEventListener("turbolinks:load", function() {
  var owl = $("#owl-carousel");
  owl.owlCarousel({
    items : 5,
    autoPlay : true
  });
  $(".next").click(function(){
    owl.trigger('owl.next');
  })
  $(".prev").click(function(){
    owl.trigger('owl.prev');
  })
})
