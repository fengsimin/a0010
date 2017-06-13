$(document).ready(function () {

	var swiper_options = {
		pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
		paginationClickable: true,
		keyboardControl: true,
		mousewheelControl: true,
		paginationType: 'progress',
//      hashnav: true,
		onInit: function(swiper) {
			
			var count = swiper.slides.length;
			
			for(var i=0; i<count; i++)
            {
            	$('.ajax-popup-link').magnificPopup({
					type: 'ajax',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in',
					closeMarkup: '<button title="%title%" class="mfp-close">返回</button>'
				});
            }

			$('.swiper-pagination-bullet').css('width',(100/count)+'%');
		}
    };

	var swiper = new Swiper('.swiper-container', $.extend(swiper_options, swiper_options_custom));
	
	$('#open_about').magnificPopup({
		type: 'inline',
		fixedContentPos: false,
		fixedBgPos: true,
		overflowY: 'auto',
		closeBtnInside: true,
		preloader: false,
		midClick: true,
		removalDelay: 300,
		mainClass: 'my-mfp-zoom-in',
		closeMarkup: '<button title="%title%" class="mfp-close">返回</button>',
	});
});
