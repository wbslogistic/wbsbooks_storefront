ready = ->
  $("#keywords").autocomplete
    minLength: 2
    source: "/search_products/search"
    focus: (event, ui) ->
      $("#keywords").val ui.item.label
      false

    select: (event, ui) ->
      window.location.href = "/products/" + ui.item.id
      return

$(document).ready(ready)
$(document).on('page:load', ready)
