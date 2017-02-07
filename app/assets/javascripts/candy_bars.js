document.addEventListener("turbolinks:load", function() {
  if ($('#my_vars_json').length > 0) {
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
  }

  $("#candy-bar__chosen-plan").prop('disabled', true);

  $('#economy').change(function() {
    handle_change("economy");
  })

  $('#lux').change(function() {
    handle_change("lux");
  })

  $('#vip').change(function() {
    handle_change("vip");
  })

  function handle_change(type) {
    if ($('#' + type)[0].checked) {
      $('#lux')[0].checked = false
      $('#vip')[0].checked = false
      $('#economy')[0].checked = false
      $('#' + type)[0].checked = true
      choosen_type_price = parseInt($('#' + type).val());
      $("#candy-bar__chosen-plan").val(choosen_type_price)
    } else {
      $('#' + type)[0].checked = true
    }
    $("#results").html(count_total_field() + choosen_type_price + " грн");
  }

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
    $("#results").html(count_total_field() + choosen_type_price + " грн");
  });

})
