$(document).ready(function(){

          var owl = $(".owl-carousel");
		  owl.owlCarousel({items : 4,itemsCustom : false});
		  $("#next").click(function(){
		    owl.trigger('owl.next');
		  });
		  $("#prev").click(function(){
		    owl.trigger('owl.prev');
		  });
	});

