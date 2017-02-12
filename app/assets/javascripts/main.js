document.addEventListener("turbolinks:load", function() {
  ahoy.trackAll();
  var owl = $("#owl-carousel-under-photo");
  owl.owlCarousel({
    autoPlay: false,
    slideSpeed: 400,
    itemsCustom: [[320,2], [375,2], [425,3], [1024,3]]
  });
  $(".btn-next").click(function(){
    owl.trigger('owl.next');
  })
  $(".btn-prev").click(function(){
    owl.trigger('owl.prev');
  })
  $("#logo-animation-display").hide();
  function toggleLogo() {
    setTimeout(function () {
      $("#logo-animation").show();
      $("#logo-animation-display").hide();
      setTimeout(function () {
        $("#logo-animation").hide();
        $("#logo-animation-display").show();
        toggleLogo();
      }, 17000);
    }, 2800);
  }
  toggleLogo();
})
