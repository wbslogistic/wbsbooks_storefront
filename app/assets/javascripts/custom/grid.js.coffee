window.display = (view) ->
  if view is "list"
    $(".product-grid").attr "class", "product-list row"
    $(".product-list > div").each (index, element) ->
      html = "<div class=\"col-xs-12 col-sm-4 col-md-3\">"
      image = $(element).find(".image").html()
      html += "<div class=\"image\">" + image + "</div>"  if image?
      html += "</div>"
      html += "<div class=\"col-xs-12 col-sm-10 col-md-10\">"
      price = $(element).find(".price").html()
      html += "<div class=\"price\">" + price + "</div>"  if price?
      html += "  <div class=\"name\">" + $(element).find(".name").html() + "</div>"
      html += "  <div class=\"author\">" + $(element).find(".author").html() + "</div>"  if $(element).find(".author").length > 0
      html += "  <div class=\"description\">" + $(element).find(".description").html() + "</div>"  if $(element).find(".description").length > 0
      
      #      html += '<div class="actions clearfix">';
      #      html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
      #      html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
      #      html += '</div>';
      html += "</div>"
      $(element).html html
      return

    $(".display").html "Display: <span><i class=\"fa fa-th-list\"></i></span> <a onclick=\"display('grid');\"><i class=\"fa fa-th-large\"></i></a>"
    localStorage.setItem 'display', 'list'
  else
    $(".product-list").attr "class", "product-grid row row-5"
    $(".product-grid > div").each (index, element) ->
      html = ""
      image = $(element).find(".image").html()
      html += "<div class=\"actions\">"
      if image?
        html += "<div class=\"image\">"
        html += image
        html += "</div>"
      html += "<div class=\"cart\">" + $(element).find(".cart").html() + "</div>"
      html += "<div class=\"wishlist\">" + $(element).find(".wishlist").html() + "</div>"
      html += "</div>"
      html += "<div class=\"name\">" + $(element).find(".name").html() + "</div>"
      html += "  <div class=\"author\">" + $(element).find(".author").html() + "</div>"  if $(element).find(".author").length > 0
      html += "<div class=\"description\">" + $(element).find(".description").html() + "</div>"  if $(element).find(".description").length > 0
      price = $(element).find(".price").html()
      html += "<div class=\"price\">" + price + "</div>"  if price?
      $(element).html html
      return

    $(".display").html "Display: <a onclick=\"display('list');\"><i class=\"fa fa-th-list\"></i></a><span><i class=\"fa fa-th-large\"></i></span>"
    localStorage.setItem "display", "grid"
  return

#
#view = $.totalStorage('display');
#
#if (view) {
#  display(view);
#} else {
#            display('grid');
#    }