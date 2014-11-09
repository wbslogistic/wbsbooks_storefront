ready = ->
  $('.d-search input[type="text"]').click ->
    @select()

$(document).ready(ready)
$(document).on('page:load', ready)
