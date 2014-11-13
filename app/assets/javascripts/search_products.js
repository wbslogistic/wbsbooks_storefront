function fast_search(){
    $(function() {   
        $('#keywords').autocomplete({
            minLength: 2,
            source: '/search_products/search',
            focus: function(event, ui) {
                $('#keywords').val(ui.item.name);
                return false;
            },
            select: function(event, ui) {
                window.location.href = "/products/" + ui.item.id;
            }
        })
         .data( "uiAutocomplete" )._renderItem = function( ul, item ) {
            return $( "<li></li>" )
                .data( "item.autocomplete", item )
                .append( "<a>" + item.name + "</a>" )
                .appendTo( ul );
        };
    });
};