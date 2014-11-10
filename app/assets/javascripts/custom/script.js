/** 
 *------------------------------------------------------------------------------
 * @package       T3 Framework for Joomla!
 *------------------------------------------------------------------------------
 * @copyright     Copyright (C) 2004-2013 JoomlArt.com. All Rights Reserved.
 * @license       GNU General Public License version 2 or later; see LICENSE.txt
 * @authors       JoomlArt, JoomlaBamboo, (contribute to this project at github 
 *                & Google group to become co-author)
 * @Google group: https://groups.google.com/forum/#!forum/t3fw
 * @Link:         http://t3-framework.org 
 *------------------------------------------------------------------------------
 */
 
var ready = function() {
 	// browser detector
	(function () {
		var browser = '';
		if (/constructor/i.test(window.HTMLElement)) {
			browser = 'safari';
		} else if ('-ms-scroll-limit' in document.documentElement.style && '-ms-ime-align' in document.documentElement.style) {
			browser = 'ie11';
		} else if (document.documentElement.style.msTouchAction !== undefined) {
			browser = 'ie10';
		}

		browser && $('html').addClass(browser);
	})();
	
	$(document).ready(function ($) {
		$('#back-to-top').addClass('deactive');
		// back to top
		$(window).scroll(function() {
			if($(this).scrollTop() > 0){				
				$('#back-to-top').removeClass('deactive').addClass('active');			
			}else{
				$('#back-to-top').removeClass('active').addClass('deactive');
			}			
		});
		(function(){
			$('#back-to-top').on('click', function(){
				$('html, body').stop(true).animate({
					scrollTop: 0
				}, {
					duration: 800, 
					easing: 'easeInOutCubic',
					complete: window.reflow
				});

				return false;
			});
		})();
		//Check div message show
		if($("#system-message").children().length){
		  $("#system-message-container").show();
		  $("#system-message a.close").click(function(){
				  setTimeout(function(){if(!$("#system-message").children().length) $("#system-message-container").hide();}, 100);
		  });
		}else{
		  $("#system-message-container").hide();
		}
	});
	
};

$(document).ready(ready);
$(document).on('page:load', ready);
