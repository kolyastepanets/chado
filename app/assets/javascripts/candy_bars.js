document.addEventListener("turbolinks:load", function() {
  var candyBarJSON = $("#my_vars_json").html();
  candyBar = $.parseJSON(candyBarJSON);
  var cake_price = candyBar.cake;
  var cup_cake_cream_price = candyBar.cup_cake_cream;
  var cup_cake_mastic_price = candyBar.cup_cake_mastic;
  var gingerbreads_price = candyBar.gingerbreads;
  var cake_pops_price = candyBar.cake_pops;
  var zephyr_price = candyBar.zephyr;
  var jujube_price = candyBar.jujube;
  var makaro_price = candyBar.makaro;

  econom = 0;
  lux = 0;
  vip = 0;
  $("#candy-bar__chosen-plan").prop('disabled', true);

  $('#price_service_economy').change(function() {
    if ($('#price_service_economy')[0].checked) {
      $('#price_service_lux')[0].checked = false
      $('#price_service_vip')[0].checked = false
      econom = 0;
      lux = 0;
      vip = 0;
      econom = parseInt($('#price_service_economy').val());
      $("#candy-bar__chosen-plan").val(econom)
    } else {
      econom = 0;
    }
    $("#results").html(count_total_field() + econom + " грн");
  })

  $('#price_service_lux').change(function() {
    if ($('#price_service_lux')[0].checked) {
      $('#price_service_economy')[0].checked = false
      $('#price_service_vip')[0].checked = false
      econom = 0;
      lux = 0;
      vip = 0;
      lux = parseInt($('#price_service_lux').val());
      $("#candy-bar__chosen-plan").val(lux)
    } else {
      lux = 0;
    }
    $("#results").html(count_total_field() + lux + " грн");
  })

  $('#price_service_vip').change(function() {
    if ($('#price_service_vip')[0].checked) {
      $('#price_service_economy')[0].checked = false
      $('#price_service_lux')[0].checked = false
      econom = 0;
      lux = 0;
      vip = 0;
      vip = parseInt($('#price_service_vip').val());
      $("#candy-bar__chosen-plan").val(vip);
    } else {
      vip = 0;
    }
    $("#results").html(count_total_field() + vip + " грн");
  })

  function count_total_field() {
    var cake_value = parseInt($('#cake').val()) || 0;
    var cup_cake_cream_value = parseInt($('#cup_cake_cream').val()) || 0;
    var cup_cake_mastic_value = parseInt($('#cup_cake_mastic').val()) || 0;
    var gingerbreads_value = parseInt($('#gingerbreads').val()) || 0;
    var cake_pops_value = parseInt($('#cake_pops').val()) || 0;
    var zephyr_value = parseInt($('#zephyr').val()) || 0;
    var jujube_value = parseInt($('#jujube').val()) || 0;
    var makaro_value = parseInt($('#makaro').val()) || 0;

    var res1 = cake_value * cake_price;
    var res2 = cup_cake_cream_value * cup_cake_cream_price;
    var res3 = cup_cake_mastic_value * cup_cake_mastic_price;
    var res4 = gingerbreads_value * gingerbreads_price;
    var res5 = cake_pops_value * cake_pops_price;
    var res6 = zephyr_value * zephyr_price;
    var res7 = jujube_value * jujube_price;
    var res8 = makaro_value * makaro_price;
    return res1 + res2 + res3 + res4 + res5 + res6 + res7 + res8
  }

  $("input").keyup(function(){
    $("#results").html(count_total_field() + econom + lux + vip + " грн");
  });

})
