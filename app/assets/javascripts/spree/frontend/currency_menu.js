$(function() {
  var csrfToken = $("meta[name='csrf-token']").attr("content");
  return $('.toggle-currency').click(function() {
    return $.ajax({
      headers: {
      'X-CSRF-Token': csrfToken
      },
      type: 'POST',
      url: '/currency/set',
      data: {
        currency: $(this).attr('value')
      }
    }).done(function() {
      return window.location.reload();
    });
  });
});
