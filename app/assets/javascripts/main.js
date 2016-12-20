document.addEventListener("turbolinks:load", function() {
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

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-89250948-1', 'auto');
  ga('send', 'pageview');

})
