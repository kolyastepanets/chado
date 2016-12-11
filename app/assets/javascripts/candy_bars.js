document.addEventListener("turbolinks:load", function() {
  $('#imageGallery').lightSlider({
    gallery:true,
    item:1,
    loop:true,
    thumbItem:9,
    slideMargin:0,
    enableDrag: false,
    currentPagerPosition:'left'
  });
})
