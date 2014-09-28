# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $("#car_brand_id").change ->
    brand_id = $(this).val()
    $.ajax "get_models",
      data:
        brand: brand_id

      type: "POST"
      success: (result) ->
        jQuery("#brand_models_div").html result

      error: ->
        alert "Error"
