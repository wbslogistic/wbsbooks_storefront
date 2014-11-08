ready = ->
  $('.date-picker').datepicker
    format: 'dd-mm-yyyy'

$(document).ready(ready)
$(document).on('page:load', ready)
