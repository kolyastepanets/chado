document.addEventListener("turbolinks:load", function() {
  if ($('#my_vars_json').length > 0) {
    var candyBarJSON = $("#my_vars_json").html();
    candyBar = $.parseJSON(candyBarJSON);
    cake_price = candyBar.cake;
    cup_cake_cream_price = candyBar.cup_cake_cream;
    cup_cake_mastic_price = candyBar.cup_cake_mastic;
    gingerbreads_price = candyBar.gingerbreads;
    cake_pops_price = candyBar.cake_pops;
    zephyr_price = candyBar.zephyr;
    jujube_price = candyBar.jujube;
    makaro_price = candyBar.makaro;
  }

  hash_types = [];
  hash_types["mini"] = "Мини";
  hash_types["economy"] = "Эконом";
  hash_types["lux"] = "Люкс";
  hash_types["vip"] = "VIP";
  $("#candy-bar__chosen-plan").prop('disabled', true);

  $('#mini').change(function() {
    handle_change("mini");
  })

  $('#economy').change(function() {
    handle_change("economy");
  })

  $('#lux').change(function() {
    handle_change("lux");
  })

  $('#vip').change(function() {
    handle_change("vip");
  })

  choosen_type_price = 0;
  function handle_change(type) {
    if ($('#' + type)[0].checked) {
      $('#lux')[0].checked = false
      $('#vip')[0].checked = false
      $('#economy')[0].checked = false
      $('#mini')[0].checked = false
      $('#' + type)[0].checked = true
      choosen_type_price = parseInt($('#' + type).val());
      $("#candy-bar__chosen-plan").val(choosen_type_price);
      choosen_type_text = type;
    } else {
      choosen_type_price = 0;
      $("#candy-bar__chosen-plan").val(choosen_type_price)
    }
    $("#results").html(count_total_field() + choosen_type_price + " грн");
  }

  function count_total_field() {
    cake_value = parseInt($('#cake').val()) || 0;
    cup_cake_cream_value = parseInt($('#cup_cake_cream').val()) || 0;
    cup_cake_mastic_value = parseInt($('#cup_cake_mastic').val()) || 0;
    gingerbreads_value = parseInt($('#gingerbreads').val()) || 0;
    cake_pops_value = parseInt($('#cake_pops').val()) || 0;
    zephyr_value = parseInt($('#zephyr').val()) || 0;
    jujube_value = parseInt($('#jujube').val()) || 0;
    makaro_value = parseInt($('#makaro').val()) || 0;

    res1 = cake_value * cake_price;
    res2 = cup_cake_cream_value * cup_cake_cream_price;
    res3 = cup_cake_mastic_value * cup_cake_mastic_price;
    res4 = gingerbreads_value * gingerbreads_price;
    res5 = cake_pops_value * cake_pops_price;
    res6 = zephyr_value * zephyr_price;
    res7 = jujube_value * jujube_price;
    res8 = makaro_value * makaro_price;
    return res1 + res2 + res3 + res4 + res5 + res6 + res7 + res8
  }

  $("input").keyup(function(){
    $("#results").html(count_total_field() + choosen_type_price + " грн");
  });

  $('#first-modal').on('show.bs.modal', function() {
    if (count_total_field() == 0 && choosen_type_price == 0) { return false }
    var modal = $(this)
    if (choosen_type_price) {
      modal.find(".candy-bar__tr-candy-bar__chosen-plan-price").show();
      modal.find('.candy-bar__td-checkbox-choose-type').html(hash_types[choosen_type_text]);
      modal.find('.candy-bar__td-candy-bar__chosen-plan-price').html(choosen_type_price);
    } else {
      modal.find(".candy-bar__tr-candy-bar__chosen-plan-price").hide();
    }
    preview_result(modal, cake_value, "cake_value", res1);
    preview_result(modal, cup_cake_cream_value, "cup_cake_cream_value", res2);
    preview_result(modal, cup_cake_mastic_value, "cup_cake_mastic_value", res3);
    preview_result(modal, gingerbreads_value, "gingerbreads_value", res4);
    preview_result(modal, cake_pops_value, "cake_pops_value", res5);
    preview_result(modal, zephyr_value, "zephyr_value", res6);
    preview_result(modal, jujube_value, "jujube_value", res7);
    preview_result(modal, makaro_value, "makaro_value", res8);
    modal.find('.candy-bar-dialog__total-result').html(count_total_field() + choosen_type_price + " грн");
  })

  function preview_result(modal, value, id, result) {
    if (value) {
      modal.find(".candy-bar__tr-" + id).show();
      modal.find(".candy-bar__td-" + id).html(value)
      modal.find(".candy-bar__td-result-" + id).html(result)
    } else {
      modal.find(".candy-bar__tr-" + id).hide();
    }
  }

  $('#second-modal').on('show.bs.modal', function() {
    $("#first-modal").modal('hide');
    var modal = $(this)
    if (choosen_type_price) {
      modal.find(".form-group input#package_type").attr("value", "тип: " + hash_types[choosen_type_text]  + ", цена: " + choosen_type_price + " грн" )
    }
    add_hidden_value(modal, cake_value, "cake", cake_price, res1)
    add_hidden_value(modal, cup_cake_cream_value, "cup_cake_cream", cup_cake_cream_price, res2)
    add_hidden_value(modal, cup_cake_mastic_value, "cup_cake_mastic", cup_cake_mastic_price, res3)
    add_hidden_value(modal, gingerbreads_value, "gingerbreads", gingerbreads_price, res4)
    add_hidden_value(modal, cake_pops_value, "cake_pops", cake_pops_price, res5)
    add_hidden_value(modal, zephyr_value, "zephyr", zephyr_price, res6)
    add_hidden_value(modal, jujube_value, "jujube", jujube_price, res7)
    add_hidden_value(modal, makaro_value, "makaro", makaro_price, res8)
    var total_amount = count_total_field() + choosen_type_price;
    modal.find(".form-group input#total_price").attr("value", total_amount)
  })

  function add_hidden_value(modal, value, id, price, total) {
    if (value) {
      modal.find(".form-group input#" + id).attr("value", "цена: " + price + " грн, кол-во: " + value + ", сумма: " + total + " грн")
    }
  }
  if(window.location.search == "?order=success"){
    $('.candy-bar__hidden-btn').click();
  }
  $("#third-modal").on("hide.bs.modal", function(){
    window.location.href = location.origin + location.pathname;
  })

})
