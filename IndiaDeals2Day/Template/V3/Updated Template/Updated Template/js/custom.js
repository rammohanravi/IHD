jQuery(document).ready(function($){
	"use strict";
	
	
	if($('#content_1').length){
	$("#content_1").mCustomScrollbar({
					scrollButtons:{
						enable:true
					}
				});
	}
	
	
	
	if($('.slide-out-div').length){
	$('.slide-out-div').tabSlideOut({
                 tabHandle: '.handle',                              //class of the element that will be your tab
                 pathToTabImage: 'images/gear.png',          //path to the image for the tab (optionaly can be set using css)
                 imageHeight: '40px',                               //height of tab image
                 imageWidth: '40px',                               //width of tab image    
                 tabLocation: 'left',                               //side of screen where tab lives, top, right, bottom, or left
                 speed: 300,                                        //speed of animation
                 action: 'click',                                   //options: 'click' or 'hover', action to trigger animation
                 topPos: '200px',                                   //position from the top
                 fixedPosition: false                               //options: true makes it stick(fixed position) on scroll
             });
	}
	


	$(".navbar-inner ul >li").hover(
		function() {
			$(this).addClass('open');
		},
		function() {
			$(this).removeClass('open');
		}
	);
	
	//Main Slider
	if($('.main-slider').length){
	$('.main-slider').bxSlider({
 	 pagerCustom: '#bx-pager',
	 auto:true,
	 controls:false
	});
	}

	//Side Slider Home Page
	if($('.banner-slider').length){
	$('.banner-slider').bxSlider({
  	auto: false,
  	autoControls: false
	});
	}


	//Full Screen Gallery
	if($('.home-gallery').length){
	$('.home-gallery').bxSlider({
	minSlides: 4,
    maxSlides: 4,
    slideWidth: 312,
    slideMargin: 2,
    ticker: true,
	tickerHover:false,
    speed: 40000
	});
	}


	//Amazing New Stuff Scroll
	if($('.testimonial-slider').length){
	$('.testimonial-slider').bxSlider({
  	mode: 'horizontal',
  	infiniteLoop: false,
	autoControls: false,
  	easing: 'easeOutElastic',
	controls:false,
  	speed: 2000
	});
	}
	
	

	//Amazing New Stuff Scroll
	if($('.hotdeals-slider').length){
	$('.hotdeals-slider').bxSlider({
  	mode: 'fade',
	controls:false,
	autoControls:false,
	auto:true
	});
	}	


	//Amazing New Stuff Scroll
	if($('.bestseller').length){
	$('.bestseller').bxSlider({
	minSlides: 3,
  	maxSlides: 3,
  	slideWidth: 225,
	pager:false,
  	slideMargin: 30
	});
	}
	
	
	//Amazing New Stuff Scroll
	if($('.partner-logo').length){
	$('.partner-logo').bxSlider({
	minSlides: 5,
  	maxSlides: 5,
  	slideWidth: 234,
	pager:false,
  	slideMargin: 0
	});
	}
	





	
	
	//Side bar Whats Hot
	if($('.whats-hotslider').length){
	$('.whats-hotslider').bxSlider({
	mode: 'fade',
	controls:false,
	});
	}
	
	
		//Side bar Whats Hot
	if($('.special-pro').length){
	$('.special-pro').bxSlider({
	mode: 'fade',
	});
	}
	
	//Side bar Whats Hot
	if($('.blog-slider').length){
	$('.blog-slider').bxSlider({
	mode: 'fade',
    pager:false,
    captions: true
	});
	}

	//Testimonials Slider
	if($('.testi-slider').length){
	$('.testi-slider').bxSlider({
    pager:false,
    captions: true
	});
	}

	

	// Gray Image Hover
	if($('.percentage').length){
	$('.percentage').easyPieChart({
    animate: 1000,
    onStep: function(value) {
    this.$el.find('span').text(~~value);
    }
    });
	}


	if($('.vertical-slider').length){
	$('.vertical-slider').bxSlider({
    mode: 'vertical',
    slideWidth: 205,
    minSlides: 3,
	pager:false,
    slideMargin: 20
	});
	}
	
	
	if($('.pd-slider').length){
	$('.pd-slider').bxSlider({
	  pagerCustom: '#bx-pager'
	});
	}
	

	// Side According Navigation
	if($('#side-nav').length){
	        $('#side-nav').metisMenu();

	}

	// Contact Gmap
	if($('#map').length){
      map = new GMaps({
        div: '#map',
        lat: -12.043333,
        lng: -77.028333
      });
      map.addMarker({
        lat: -12.042,
        lng: -77.028333,
        title: 'Marker with InfoWindow',
        infoWindow: {
          content: '<p>HTML Content</p>'
        }
      });
	}
	

	if($('#latest-pro').length){
	$('#latest-pro a:last').tab('show');
	}








		













	
	if($('#flexisel').length){
	$("#flexisel").flexisel({
        visibleItems: 6,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 3000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });
	}
	
	
	
	
	
	
	
	
	
	
	
	$("#submit_btn").click(function() { 
        //get input field values
        var user_name       = $('input[name=name]').val(); 
        var user_email      = $('input[name=email]').val();
        var user_website      = $('input[name=website]').val();
        var user_message    = $('textarea[name=message]').val();
        
        //simple validation at client's end
        //we simply change border color to red if empty field using .css()
        var proceed = true;
        if(user_name==""){ 
            $('input[name=name]').css('border-color','red'); 
            proceed = false;
        }
        if(user_email==""){ 
            $('input[name=email]').css('border-color','red'); 
            proceed = false;
        }
        if(user_website=="") {    
            $('input[name=website]').css('border-color','red'); 
            proceed = false;
        }
        if(user_message=="") {  
            $('textarea[name=message]').css('border-color','red'); 
            proceed = false;
        }
        
        //everything looks good! proceed...
        if(proceed) 
        {
            //data to be sent to server
            post_data = {'userName':user_name, 'userEmail':user_email, 'userWebsite':user_website, 'userMessage':user_message};
            
            //Ajax post data to server
            $.post('../contact_me.php', post_data, function(data){  
                
                //load success massage in #result div element, with slide effect.       
                $("#result").hide().html('<div class="success">'+data+'</div>').slideDown();
                
                //reset values in all input fields
                $('#contact_form input').val(''); 
                $('#contact_form textarea').val(''); 
                
            }).fail(function(err) {  //load any error data
                $("#result").hide().html('<div class="error">'+err.statusText+'</div>').slideDown();
            });
        }
                
    });
    
    //reset previously set border colors and hide all message on .keyup()
    $("#contact_form input, #contact_form textarea").keyup(function() { 
        $("#contact_form input, #contact_form textarea").css('border-color',''); 
        $("#result").slideUp();
    });
	
	














});




// Login Form
jQuery(document).ready(function($){
	"use strict";
    var button = $('#loginButton');
    var box = $('#loginBox');
    var form = $('#loginForm');
    button.removeAttr('href');
    button.mouseup(function(login) {
        box.toggle();
        button.toggleClass('active');
    });
    form.mouseup(function() { 
        return false;
    });
    $(this).mouseup(function(login) {
        if(!($(login.target).parent('#loginButton').length > 0)) {
            button.removeClass('active');
            box.hide();
        }
    });
});


// Login Form
jQuery(document).ready(function($){
	"use strict";
    var button = $('#searchButton');
    var box = $('#searchBox');
    var form = $('#searchForm');
    button.removeAttr('href');
    button.mouseup(function(login) {
        box.toggle();
        button.toggleClass('active');
    });
    form.mouseup(function() { 
        return false;
    });
    $(this).mouseup(function(login) {
        if(!($(login.target).parent('#searchButton').length > 0)) {
            button.removeClass('active');
            box.hide();
        }
    });
});


