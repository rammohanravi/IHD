$(window).load(function() {
	"use strict";
		$('.imglist .iwrapper img').each(function() {
			$(this).wrap('<div style="display:inline-block;width:' + this.width + 'px;height:' + this.height + 'px;">').clone().addClass('gotcolors').css('position', 'absolute').insertBefore(this);
			this.src = grayscale(this.src);
		}).animate({opacity: 1}, 500);
	});
	
	$(document).ready(function() {
	
		$("#imglist1 a").hover(
			function() {
				$(this).find('.gotcolors').stop().animate({opacity: 1}, 200);
			}, 
			function() {
				$(this).find('.gotcolors').stop().animate({opacity: 0}, 500);
			}
		);
	
		
		$("#imglist2 a").hover(
			function() {
				var nativeImage = new Image();
				nativeImage.src = this.getElementsByTagName('img')[0].src;
				$(this).find('.gotcolors').stop().css('width', 0).stop().animate({opacity: 1,width: nativeImage.width}, 200);
			}, 
			function() {
				$(this).find('.gotcolors').animate({opacity: 0}, 500);
			}
		);
	
		
		$("#imglist3 a").hover(
			function() {
				$(this).find('div').css({'position': 'relative','overflow': 'hidden'}); // do this in your stylesheet
				var nativeImage = new Image();
				nativeImage.src = this.getElementsByTagName('img')[0].src;
				$(this).find('.gotcolors').stop().css({'height': 0,'top': nativeImage.height}).stop().animate({opacity: 1,top: 0,height: nativeImage.height}, 200);
			}, 
			function() {
				$(this).find('.gotcolors').animate({opacity: 0}, 500);
			}
		);
	
		
		$("#imglist4 a").hover(
			function() {
				var nativeImage = new Image();
				nativeImage.src = this.getElementsByTagName('img')[0].src;
				$(this).find('.gotcolors').stop().css({'height': 0,'width': nativeImage.width}).stop().animate({opacity: 1,height: nativeImage.height}, 200);
			}, 
			function() {
				$(this).find('.gotcolors').animate({opacity: 0}, 500);
			}
		);
	
		
		$("#imglist5 a").hover(
			function() {
				$(this).find('div').css({'position': 'relative','overflow': 'hidden'}); // do this in your stylesheet
				var nativeImage = new Image();
				nativeImage.src = this.getElementsByTagName('img')[0].src;
				$(this).find('.gotcolors').stop().css({'height': 0,'width': nativeImage.width,'top': nativeImage.height}).stop().animate({opacity: 1,top: 0,height: nativeImage.height}, 200);
			}, 
			function() {
				$(this).find('.gotcolors').animate({opacity: 0}, 500);
			}
		);
	
		
		$("#imglist6 a").hover(
			function() {
				$(this).find('div').css({'position': 'relative','overflow': 'hidden'}); // do this in your stylesheet
				var nativeImage = new Image();
				nativeImage.src = this.getElementsByTagName('img')[0].src;
				$(this).find('.gotcolors').stop().css({'width': nativeImage.width,'top': nativeImage.height}).stop().animate({opacity: 1,top: 0,height: nativeImage.height}, 200);
			}, 
			function() {
				$(this).find('.gotcolors').animate({opacity: 0}, 500);
			}
		);
	
		
		$("#imglist7 a").hover(
			function() {
				$(this).find('div').css({'position': 'relative','overflow': 'hidden'}); // do this in your stylesheet
				var nativeImage = new Image();
				nativeImage.src = this.getElementsByTagName('img')[0].src;
				$(this).find('.gotcolors').stop().css({'width': nativeImage.width,'top': -nativeImage.height}).stop().animate({opacity: 1,top: 0,height: nativeImage.height}, 200);
			}, 
			function() {
				$(this).find('.gotcolors').animate({opacity: 0}, 500);
			}
		);
	
		
		$("#imglist8 a").hover(
			function() {
				var canvas = document.createElement('canvas'),
				maskwidth = 0,
				ctx = canvas.getContext('2d'),
				image = new Image();
				
				image.src = this.getElementsByTagName('img')[0].src;
				canvas.width = image.width;
				canvas.height = image.height;
				canvas.style.position = 'absolute';
				
				$(this).find('div').prepend(canvas);
				
				(function animate() {
					if (maskwidth >= image.width) {
						return false;
					} else {
						maskwidth += 20;
						ctx.save();
						ctx.rect(0, 0, maskwidth, image.height);
						ctx.clip();
						ctx.drawImage(image, 0, 0);
						ctx.restore();
						window.requestAnimFrame(animate, 0);
					}
				})();
			}, 
			function() {
				$(this).find('canvas').animate({opacity: 0}, 500, function() {
					$(this).remove();
				});
			}
		);
	
		
		$("#imglist9 a").hover(
			function() {
				var canvas = document.createElement('canvas'),
				maskheight = 0,
				ctx = canvas.getContext('2d'),
				image = new Image();
				
				image.src = this.getElementsByTagName('img')[0].src;
				canvas.width = image.width;
				canvas.height = image.height;
				canvas.style.position = 'absolute';
				
				$(this).find('div').prepend(canvas);
				
				(function animate() {
					if (maskheight >= image.height) {
						return false;
					} else {
						maskheight += 15;
						ctx.save();
						ctx.rect(0, 0, image.width, maskheight);
						ctx.clip();
						ctx.drawImage(image, 0, 0);
						ctx.restore();
						window.requestAnimFrame(animate, 0);
					}
				})();
			}, 
			function() {
				$(this).find('canvas').animate({opacity: 0}, 500, function() {
					$(this).remove();
				});
			}
		);
	
		
		$("#imglist10 .iwrapper a").hover(
			function() {
				var canvas = document.createElement('canvas'),
				ctx = canvas.getContext('2d'),
				masky,
				image = new Image();
				
				image.src = this.getElementsByTagName('img')[0].src;
				canvas.width = image.width;
				canvas.height = image.height;
				canvas.style.position = 'absolute';
				masky = image.height;
	
				$(this).find('div').prepend(canvas);
				
				(function animate() {
					if (masky <= 0) {
						return false;
					} else {
						masky -= 15;
						ctx.save();
						ctx.rect(0, masky, image.width, image.height);
						ctx.clip();
						ctx.drawImage(image, 0, 0);
						ctx.restore();
						window.requestAnimFrame(animate, 0);
					}
				})();
			}, 
			function() {
				$(this).find('canvas').animate({opacity: 0}, 500, function() {
					$(this).remove();
				});
			}
		);
	
	
		$("#imglist11 a").hover(
			function() {
				var canvas = document.createElement('canvas'),
				ctx = canvas.getContext('2d'),
				masky, maskwidth,
				image = new Image();
				
				image.src = this.getElementsByTagName('img')[0].src;
				canvas.width = image.width;
				canvas.height = image.height;
				canvas.style.position = 'absolute';
				masky = image.height;
				maskwidth = Math.sqrt(image.width * image.width + image.height * image.height);
				ctx.rotate(0.45);
				
				$(this).find('div').prepend(canvas);
				
				(function animate() {
					if (masky <= -(image.width / 2)) {
						return false;
					} else {
						masky -= 15;
						ctx.save();
						ctx.rect(0, masky, maskwidth, image.height);
						ctx.clip();
						ctx.rotate(-0.45);
						ctx.drawImage(image, 0, 0);
						ctx.restore();
						window.requestAnimFrame(animate, 0);
					}
				})();
			}, 
			function() {
				$(this).find('canvas').animate({opacity: 0}, 500, function() {
					$(this).remove();
				});
			}
		);
	
	});
	
	
	function grayscale(src) {
		var supportsCanvas = !!document.createElement('canvas').getContext;
		if (supportsCanvas) {
			var canvas = document.createElement('canvas'), 
			context = canvas.getContext('2d'), 
			imageData, px, length, i = 0, gray, 
			img = new Image();
			
			img.src = src;
			canvas.width = img.width;
			canvas.height = img.height;
			context.drawImage(img, 0, 0);
			
			imageData = context.getImageData(0, 0, canvas.width, canvas.height);
			px = imageData.data;
			length = px.length;
			
			for (; i < length; i += 4) {
				gray = px[i] * .3 + px[i + 1] * .59 + px[i + 2] * .11;
				px[i] = px[i + 1] = px[i + 2] = gray;
			}
			
			context.putImageData(imageData, 0, 0);
			return canvas.toDataURL();
		} else {
			return src;
		}
	}
	
	
	window.requestAnimFrame = (function() {
		return window.requestAnimationFrame || 
		window.webkitRequestAnimationFrame || 
		window.mozRequestAnimationFrame || 
		window.oRequestAnimationFrame || 
		window.msRequestAnimationFrame || 
		function(callback, element) {
			window.setTimeout(callback, 1000 / 60);
		};
	})();