roundVal = (n) ->
  n = Math.round(n * Math.pow(10, 3)) / Math.pow(10, 3)
  Math.round(n*100)/100
changeCartValues = ($input, operation) ->
  $el = $input.parents('.line-item')
  price = parseFloat($input.data('price'))
  count = parseInt($input.val())
  $el.find('.cart-item-total').html("$#{roundVal(price * count)}")
  $totalSum = $('.total-sum')
  totalSumVal = parseFloat($totalSum.html().slice(1))
  if operation == 'minus'
    $totalSum.html("$#{roundVal(totalSumVal - price)}")
  else if operation == 'plus'
    $totalSum.html("$#{roundVal(totalSumVal + price)}")



ready = ->
  $('.d-search input[type="text"]').click ->
    @select()
  $('.edit_order .plus').click ->
    $input = $(@).parent().find('.line_item_quantity')
    $input.val(parseInt($input.val()) + 1)
    changeCartValues($input,'plus')

  $('.edit_order .minus').click ->
    $input = $(@).parent().find('.line_item_quantity')
    value = parseInt($input.val())
    if value > 0
      $input.val(parseInt($input.val()) - 1)
      changeCartValues($input,'minus')

$(document).ready(ready)
$(document).on('page:load', ready)
