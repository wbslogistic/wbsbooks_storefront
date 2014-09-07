
function display(view) {
  if (view == 'list') {
    jQuery('.product-grid').attr('class', 'product-list row');
    
    jQuery('.product-list > div').each(function(index, element) {
      
      html = '<div class="col-xs-12 col-sm-4 col-md-3">';
      
      var image = jQuery(element).find('.image').html();
      
      if (image != null) { 
        html += '<div class="image">' + image + '</div>';
      }
      
      html += '</div>';
      
      html += '<div class="left">';

      var price = jQuery(element).find('.price').html();
      
      if (price != null) {
        html += '<div class="price">' + price  + '</div>';
      }
          
      html += '  <div class="name">' + jQuery(element).find('.name').html() + '</div>';
      html += '  <div class="author">' + jQuery(element).find('.author').html() + '</div>';
      
      
      html += '  <div class="description">' + jQuery(element).find('.description').html() + '</div>';
      
      html += '<div class="actions clearfix">';
      html += '  <div class="cart">' + jQuery(element).find('.cart').html() + '</div>';
      html += '  <div class="wishlist">' + jQuery(element).find('.wishlist').html() + '</div>';
      html += '</div>';
      
      html += '</div>';     

      jQuery(element).html(html);
    });   
    
    jQuery('.display').html('Display: <span><i class="fa fa-th-list"></i></span> <a onclick="display(\'grid\');"><i class="fa fa-th-large"></i></a>');
    
    jQuery.totalStorage('display', 'list'); 
  } else {
    jQuery('.product-list').attr('class', 'product-grid row row-5');
    
    jQuery('.product-grid > div').each(function(index, element) {
      html = '';
      
      var image = jQuery(element).find('.image').html();
      html += '<div class="actions">';
      
      if (image != null) {
        html += '<div class="image">';
        html +=  image;
        html += '</div>';
      }
            html += '<div class="cart">' + jQuery(element).find('.cart').html() + '</div>';
            html += '<div class="wishlist">' + jQuery(element).find('.wishlist').html() + '</div>';

            html += '</div>';

      html += '<div class="name">' + jQuery(element).find('.name').html() + '</div>';
      html += '  <div class="author">' + jQuery(element).find('.author').html() + '</div>';
      
      html += '<div class="description">' + jQuery(element).find('.description').html() + '</div>';
      
      var price = jQuery(element).find('.price').html();
      
      if (price != null) {
        html += '<div class="price">' + price  + '</div>';
      }
      
      jQuery(element).html(html);
    }); 
          
    jQuery('.display').html('Display: <a onclick="display(\'list\');"><i class="fa fa-th-list"></i></a><span><i class="fa fa-th-large"></i></span>');
    
    jQuery.totalStorage('display', 'grid');
  }
}

view = jQuery.totalStorage('display');

if (view) {
  display(view);
} else {
            display('grid');
    }