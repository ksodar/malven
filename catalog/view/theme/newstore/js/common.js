$(document).ready(function () {
		$('#menu #menu-list').menuAim({
			activateCallback: activateSubmenu,
			deactivateCallback: deactivateSubmenu,
		});
		function activateSubmenu(row) {$(row).addClass('menu-open');}
		function deactivateSubmenu(row) {$(row).removeClass('menu-open');}
		function exitMenu(row) {return true;}
		$('.dropdown-menu-simple .nsmenu-haschild').menuAim({
			activateCallback: activateSubmenu2level,
			deactivateCallback: deactivateSubmenu2level,
		});
		function activateSubmenu2level(row) {$(row).addClass('menu-open-2level');}
		function deactivateSubmenu2level(row) {$(row).removeClass('menu-open-2level');}
		function exitMenu2level(row) {return true;}	
		$('.dropdown-menu-simple .nsmenu-ischild-simple').menuAim({
			activateCallback: activateSubmenu4level,
			deactivateCallback: deactivateSubmenu4level,
		});
		function activateSubmenu4level(row) {
			
			$(row).addClass('menu-open-4level');}
		function deactivateSubmenu4level(row) {$(row).removeClass('menu-open-4level');}
		function exitMenu4level(row) {return true;}	
		
		
		$(".ns-dd").hover(function() {$(this).parent().find('.parent-link').toggleClass('hover');});
		$(".child-box").hover(function() {$(this).parent().find('.with-child').toggleClass('hover');});
		$(".nsmenu-ischild.nsmenu-ischild-simple").hover(function() {$(this).parent().find('> a').toggleClass('hover');});
		$(".child_4level_simple").hover(function() {$(this).parent().find('> a').toggleClass('hover');});
		$(".toggle-child").click(function() {
			$(this).toggleClass('open');
			$(this).parent().parent().parent().removeClass('open-mob');
			$(this).parent().parent().parent().addClass('open');
			$(this).parent().parent().parent().toggleClass('activemenu');
			$(this).parent().find('.dropdown-menu-simple').slideToggle(200);
			$(this).parent().find('.dropdown-menu-full').slideToggle(200);
			$(this).parent().find('.dropdown-menu-full-image').slideToggle(200);
			$(this).parent().find('.dropdown-menu-html-block').slideToggle(200);
			$(this).parent().find('.dropdown-menu-manufacturer').slideToggle(200);
			$(this).parent().find('.dropdown-menu-information').slideToggle(200);
			$(this).parent().find('.dropdown-menu-product').slideToggle(200);
		});
		if($(document).width()<992){
			$('#menu > ul#menu-list').mouseover(function() {
				$(this).parent().addClass('open-mob');
			}).mouseout(function(){
				$(this).parent().addClass('open');
				$(this).parent().removeClass('open-mob');
			});
		}
		$('#additional-menu .navbar-nav').menuAim({
			activateCallback: activateSubmenu_additional,
			deactivateCallback: deactivateSubmenu_additional,
			defaultDelay: 200,
		});
		function activateSubmenu_additional(row) {$(row).addClass('open');}
		function deactivateSubmenu_additional(row) {$(row).removeClass('open');}
		function exitMenu_additional(row) {return true;} 
});

function getURLVar(key) {
	var value = [];

	var query = String(document.location).split('?');

	if (query[1]) {
		var part = query[1].split('&');

		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');

			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}

		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}
}
$(document).ready(function() {	
	heightblockauto();
	$(window).resize(function(){		
		$('#menu li').removeClass('open');
		$('#menu span').removeClass('open');
		$('#menu a').removeClass('hover');
		$('#menu div').removeAttr('style');
		$('#menu li').removeClass('maintainHover');
		$('#menu li').removeAttr('style');
		setTimeout(function () {
			heightblockauto();			
		}, 150);
	});
	// Adding the clear Fix
	cols1 = $('#column-right, #column-left').length;
	
	if (cols1 == 2) {
		$('#content .product-layout:nth-child(2n+2)').after('<div class="clearfix visible-md visible-sm"></div>');
	} else if (cols1 == 1) {
		$('#content .product-layout:nth-child(3n+3)').after('<div class="clearfix visible-lg"></div>');
	} else {
		$('#content .product-layout:nth-child(4n+4)').after('<div class="clearfix"></div>');
	}
	
	// Highlight any found errors
	$('.text-danger').each(function() {
		var element = $(this).parent().parent();
		
		if (element.hasClass('form-group')) {
			element.addClass('has-error');
		}
	});
		
	// Currency
	$('#currency .currency-select').on('click', function(e) {
		e.preventDefault();

		$('#currency input[name=\'code\']').attr('value', $(this).attr('name'));

		$('#currency').submit();
	});

	// Language
	$('#language a').on('click', function(e) {
		e.preventDefault();

		$('#language input[name=\'code\']').attr('value', $(this).attr('href'));

		$('#language').submit();
	});

	/* Search */

	$('.btn-search').on('click', function() {
		url = $('base').attr('href') + 'index.php?route=product/search';

		var value = $('header input[name=\'search\']').val();

		if (value) {
			url += '&search=' + encodeURIComponent(value);
		} else {
			url += '&search=';
		}
		
		var category_id = $('input[name=\'category_id\']').prop('value');
		if (category_id > 0) {
			url += '&category_id=' + encodeURIComponent(category_id) + '&sub_category=true';
		}
		location = url;
	});

	$('#search input[name=\'search\']').on('keydown', function(e) {
		if (e.keyCode == 13) {
			$('header input[name=\'search\']').parent().find('button.btn.btn-search').trigger('click');
		}
	});
	// Menu
	$('#menu-ocp .dropdown-menu').each(function() {
		var menu = $('#menu-ocp').offset();
		var dropdown = $(this).parent().offset();

		var i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#menu-ocp').outerWidth());

		if (i > 0) {
			$(this).css('margin-left', '-' + (i + 5) + 'px');
		}
	});
//MENU 2
nsmenu_menu();
additional_menu();
$( window ).resize(function() {
	nsmenu_menu();
	additional_menu();
});
$( "#additional-menu a.dropdown-toggle" ).bind( "click", function() {
	if(($(this).attr('href')!="javascript:void(0);")&&($( document ).width()>767))
	{
	window.document.location=$(this).attr('href');
	}
});
$( "#menu a.dropdown-toggle" ).bind( "click", function() {
	if(($(this).attr('href')!="javascript:void(0);")&&($( document ).width()>767))
	{
	window.document.location=$(this).attr('href');
	}
});

function additional_menu(){
	$(".nsmenu-bigblock-additional").css('width',$("#additional-menu .navbar-collapse").outerWidth()-2);
	$('#additional-menu .dropdown-menu').each(function() {
		var menu = $('#additional-menu .navbar-collapse').offset();
		var dropdown = $(this).parent().offset();		
		var i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#additional-menu .navbar-collapse').outerWidth());
		
		if (i > 0) {
			$(this).css('margin-left', '-' + (i + 1) + 'px');
		}		
		var l=$(this).outerWidth()-2;			
		$(this).find(".nsmenu-ischild-simple").css('left',l);
		
	});
}
function nsmenu_menu(){
	$(".nsmenu-bigblock").css('width',$("#horizontal-menu .navbar-collapse").outerWidth()-2);
	$('#horizontal-menu .dropdown-menu').each(function() {
		var menu = $('#horizontal-menu .navbar-collapse').offset();
		var dropdown = $(this).parent().offset();		
		var i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#horizontal-menu .navbar-collapse').outerWidth());
		
		if (i > 0) {
			$(this).css('margin-left', '-' + (i + 1) + 'px');
		}		
		var l=$(this).outerWidth()-2;			
		$(this).find(".nsmenu-ischild-simple").css('left',l);
		
	});
}	
	// Product List
	$('#list-view').click(function() {
		$('.product-thumb .option').removeAttr('style');
		$('#content .product-layout > .clearfix').remove();
		$('#content .row > .product-layout').attr('class', 'product-layout product-list col-xs-12');
		$('#content .row-price').css('margin-left', '-10px').css('margin-right', '-10px');
		$('#list-view').addClass('active');
        $('#grid-view').removeClass('active');
		$('#price-view').removeClass('active');
		localStorage.setItem('display', 'list');
		$(this).addClass('btn-danger');
		 $('#grid-view, #price-view').removeClass('btn-danger');
	});

	// Product Grid
	$('#grid-view').click(function() {
		$('#content .product-layout > .clearfix').remove();
		$('#content .row-price > .clearfix').remove();
		// What a shame bootstrap does not take into account dynamically loaded columns
		cols = $('#column-right, #column-left').length;
		if (cols == 2) {
			$('#content .product-layout').attr('class', 'product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-12');
		} else if (cols == 1) {
			$('#content .product-layout').attr('class', 'product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12');
		} else {
			$('#content .product-layout').attr('class', 'product-layout product-grid col-lg-3 col-md-3 col-sm-6 col-xs-12');
		}
		
		if (cols1 == 2) {
			$('#content .product-layout:nth-child(2n+2)').after('<div class="clearfix visible-md visible-sm"></div>');
		} else if (cols1 == 1) {
			$('#content .product-layout:nth-child(3n+3)').after('<div class="clearfix visible-lg"></div>');
		} else {
			$('#content .product-layout:nth-child(4n+4)').after('<div class="clearfix"></div>');
		}
		
		$('#content .row-price').css('margin-left', '-10px').css('margin-right', '-10px');
		$('#grid-view').addClass('active');
        $('#list-view').removeClass('active');
		$('#price-view').removeClass('active');
		 localStorage.setItem('display', 'grid');
		 $(this).addClass('btn-danger');
		 $('#list-view, #price-view').removeClass('btn-danger');
		 max_height_div('.product-grid .product-thumb .option.productpage-opt');	
	});

	$('#price-view').click(function() {
		$('#content .product-layout > .clearfix').remove();
		$('#content .row-price > .clearfix').remove();
		$('#content .row-price').css('margin-left', '0').css('margin-right', '0');
		$('#content .product-layout').attr('class', 'product-layout product-price col-xs-12');

		localStorage.setItem('display', 'price');
		$('#price-view').addClass('active');
		$('#list-view').removeClass('active');
		$('#grid-view').removeClass('active');
		$(this).addClass('btn-danger');
		 $('#list-view, #grid-view').removeClass('btn-danger');
	});
	
	if (localStorage.getItem('display') == 'list') {
		$('.product-thumb .option').removeAttr('style');
		$('#list-view').trigger('click');
		$('#list-view').addClass('active');
        $('#grid-view').removeClass('active');
        $('#price-view').removeClass('active');
	} else if (localStorage.getItem('display') == 'grid') {
		$('#grid-view').trigger('click');
		$('#grid-view').addClass('active');
        $('#list-view').removeClass('active');
		$('#price-view').removeClass('active');
	} else if (localStorage.getItem('display') == 'price'){
		$('#price-view').trigger('click');
		$("#price-view .additional-image").addClass('hidden');
		$('#price-view').addClass('active');
		$('#list-view').removeClass('active');
		$('#grid-view').removeClass('active');
	} else {
		$('#grid-view').trigger('click');
		$('#grid-view').addClass('active');
        $('#list-view').removeClass('active');
		$('#price-view').removeClass('active');
	}

	// tooltips on hover
	$('[data-toggle=\'tooltip\']').tooltip({container: 'body'});
	setTimeout(function () {
	$('a > img').each(function () {
		if ($(this).attr('data-status')) {
			var status = $(this).attr('data-status');
			$(this).after('<div class="product_status">'+status+'</div>');
		}
		if ($(this).attr('data-additional-hover')) {
			var img_src = $(this).attr('data-additional-hover');
			$(this).addClass('main-img');
			$(this).after('<img src="'+img_src+'" class="additional-img-hover img-responsive" title="'+$(this).attr('alt')+'" />');
		}		
	});
	},3000);
	
	
	// Makes tooltips work on ajax generated content
	$(document).ajaxStop(function() {
		$('[data-toggle=\'tooltip\']').tooltip({container: 'body'});
	});
});

function heightblockauto() {
		max_height_div('.product-thumb .option.featured-opt');
		max_height_div('.product-thumb .option.latest-opt');
		max_height_div('.product-thumb .option.latest-gv-opt');
		max_height_div('.product-thumb .option.bestseller-opt');
		max_height_div('.product-thumb .option.special-opt');
		max_height_div('.product-thumb .option.productany-opt');
		max_height_div('.product-thumb .option.productviewed-opt');
		max_height_div('.product-thumb .option.tablatest-opt');		
		max_height_div('.product-thumb .option.tabspecial-opt');		
		max_height_div('.product-thumb .option.tabfeatured-opt');		
		max_height_div('.product-thumb .option.tabbestseller-opt');		
		max_height_div('.product-thumb .option.tabpopular-opt');	
		max_height_div('.product-grid .product-thumb .option.productpage-opt');		
	}
function max_height_div(div) {
	var maxheight = 0;
	$(div).each(function(){
	$(this).removeAttr('style');	
		if($(this).height() > maxheight) {
			maxheight = $(this).height();
		}
	});
	$(div).height(maxheight);
}
// Cart add remove functions
var cart = {
	'add': function(product_id, mod_page_name, quantity) {
		if (mod_page_name === undefined) {
			if ($('#option_'+product_id).length != 0) {
				var options = $('#option_'+product_id+' input[type=\'radio\']:checked, #option_'+product_id+' input[type=\'checkbox\']:checked, #option_'+product_id+' select');
				var data = options.serialize() + '&product_id=' + product_id + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1);
			} else {
				var data = 'product_id=' + product_id + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1);
			}
		} else {
			if ($('#option_'+ mod_page_name +'_'+product_id).length != 0) {
				var options = $('#option_'+ mod_page_name +'_'+product_id+' input[type=\'radio\']:checked, #option_'+ mod_page_name +'_'+product_id+' input[type=\'checkbox\']:checked,#option_'+ mod_page_name +'_'+product_id+' select');
				var data = options.serialize() + '&product_id=' + product_id + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1);
			} else {
				var data = 'product_id=' + product_id + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1);
			}
		}
		
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: data,
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			complete: function() {
				$('#cart > button').button('reset');
			},			
			success: function(json) {
				$('.option-danger, .alert, .text-danger').remove();

				if (json['redirect'] && !options) {
					location = json['redirect'];
				} else {
					
				}
				if (json['error']) {
					if (json['error']['option']) {
						for (i in json['error']['option']) {
							if (mod_page_name === undefined || mod_page_name === null) {
								var element = $('#input-option' + i.replace('_', '-'));		
							} else {
								var element = $('#input-option-'+ mod_page_name + i.replace('_', '-'));	
							}
							if (element.parent().hasClass('input-group')) {
								element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
							} else {
								element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
							}
								setTimeout(function () {
									$('.option-danger, .alert, .text-danger').remove();
								}, 4000);
								$('#top').before('<div class="alert option-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['option'][i] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');					
						}
					}
				}

				if (json['success']) {
					if(json['popup_design']=='1'){
						fastorder_open_cart();
					} else {
						html  = '<div id="modal-addcart" class="modal">';
						html += '  <div class="modal-dialog" style="overflow:hidden">';
						html += '    <div class="modal-content">';
						if(json['show_newstorecheckout']=='1'){
						html += '      	<div class="modal-body"><div class="text-center">' + json['success'] + '<br><img style="margin:10px 0px;" src="'+ json['image_cart'] +'"  /><br></div><div><a href=' + link_newstorecheckout + ' class="btn-checkout">'+ button_checkout +'</a><button data-dismiss="modal" class="btn-shopping">'+ button_shopping +'</button></div></div>';	
						} else {
						html += '      	<div class="modal-body"><div class="text-center">' + json['success'] + '<br><img style="margin:10px 0px;" src="'+ json['image_cart'] +'"  /><br></div><div><a href=' + link_checkout + ' class="btn-checkout">'+ button_checkout +'</a><button data-dismiss="modal" class="btn-shopping">'+ button_shopping +'</button></div></div>';	
						}
						html += '    </div>';
						html += '  </div>';
						html += '</div>';
						$('body').append(html);
						$('#modal-addcart').modal('show');
					}
										
					setTimeout(function () {
						$('.cart-total').html(json['total']);
					}, 100);				

					$('#cart > ul').load('index.php?route=common/cart/info ul li');
				}
				$('#modal-addcart').on('hide.bs.modal', function (e) {
					$('#modal-addcart').remove();
				});
			}
		});
	},
	'update': function(key, quantity) {
		$.ajax({
			url: 'index.php?route=checkout/cart/edit',
			type: 'post',
			data: 'key=' + key + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			complete: function() {
				$('#cart > button').button('reset');
			},			
			success: function(json) {
				// Need to set timeout otherwise it wont update the total
				setTimeout(function () {
					$('.cart-total').html(json['total']);
				}, 100);

				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout' || location.pathname == '/cart/' || location.pathname == '/checkout/') {
					location = 'index.php?route=checkout/cart';
				} else {
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
				}
			}
		});
	},
	'remove': function(key) {
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: 'key=' + key,
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			complete: function() {
				$('#cart > button').button('reset');
			},			
			success: function(json) {
				// Need to set timeout otherwise it wont update the total
				setTimeout(function () {
					$('.cart-total').html(json['total']);
				}, 100);
				
				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout' || location.pathname == '/cart/' || location.pathname == '/checkout/') {
					location = 'index.php?route=checkout/cart';
				} else if (getURLVar('route') == 'checkout/newstorecheckout') { 
					update_checkout();
				} else {
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
				}
			}
		});
	}
}

var voucher = {
	'add': function() {

	},
	'remove': function(key) {
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: 'key=' + key,
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			complete: function() {
				$('#cart > button').button('reset');
			},
			success: function(json) {
				// Need to set timeout otherwise it wont update the total
				setTimeout(function () {
					$('.cart-total').html(json['total']);
				}, 100);

				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout' || location.pathname == '/cart/' || location.pathname == '/checkout/') {
					location = 'index.php?route=checkout/cart';
				} else {
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
				}
			}
		});
	}
}
var wishlist = {
	'add': function(product_id) {
		$('#modal-wishlist').remove();
		$.ajax({
			url: 'index.php?route=account/wishlist/add',
			type: 'post',
			data: 'product_id=' + product_id,
			dataType: 'json',
			success: function(json) {
				html  = '<div id="modal-wishlist" class="modal fade">';
				html += '  <div class="modal-dialog">';
				html += '    <div class="modal-content">';
				if (json['success']) {
				html += '      <div class="modal-body alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button></div>';}
				if (json['info']) {
				html += '      <div class="modal-body alert-info"><i class="fa fa-info-circle"></i> ' + json['info'] + '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button></div>';}
				html += '    </div>';
				html += '  </div>';
				html += '</div>';

				$('body').append(html);

				$('#modal-wishlist').modal('show');
			
				$('#wishlist-total').html(json['total']);
			}
			
		});
	},
	'remove': function() {

	}
}
var compare = {
	'add': function(product_id) {
		$('#modal-compare').remove();
		$.ajax({
			url: 'index.php?route=product/compare/add',
			type: 'post',
			data: 'product_id=' + product_id,
			dataType: 'json',
			success: function(json) {				
				html  = '<div id="modal-compare" class="modal fade">';
				html += '  <div class="modal-dialog">';
				html += '    <div class="modal-content">';
				html += '      <div class="modal-body alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button></div>';
				html += '    </div>';
				html += '  </div>';
				html += '</div>';
				
				$('body').append(html);

				$('#modal-compare').modal('show');

				$('#compare-total').html(json['total']);
			}
			
		});
	},
	'remove': function() {

	}
}

/* Agree to Terms */
$(document).delegate('.agree', 'click', function(e) {
	e.preventDefault();

	$('#modal-agree').remove();

	var element = this;

	$.ajax({
		url: $(element).attr('href'),
		type: 'get',
		dataType: 'html',
		success: function(data) {
			html  = '<div id="modal-agree" class="modal">';
			html += '  <div class="modal-dialog">';
			html += '    <div class="modal-content">';
			html += '      <div class="modal-header">';
			html += '        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>';
			html += '        <h4 class="modal-title">' + $(element).text() + '</h4>';
			html += '      </div>';
			html += '      <div class="modal-body">' + data + '</div>';
			html += '    </div';
			html += '  </div>';
			html += '</div>';

			$('body').append(html);

			$('#modal-agree').modal('show');
		}
	});
});

// Autocomplete */
(function($) {
	$.fn.autocomplete = function(option) {
		return this.each(function() {
			this.timer = null;
			this.items = new Array();
	
			$.extend(this, option);
	
			$(this).attr('autocomplete', 'off');
			
			// Focus
			$(this).on('focus', function() {
				this.request();
			});
			
			// Blur
			$(this).on('blur', function() {
				setTimeout(function(object) {
					object.hide();
				}, 200, this);				
			});
			
			// Keydown
			$(this).on('keydown', function(event) {
				switch(event.keyCode) {
					case 27: // escape
						this.hide();
						break;
					default:
						this.request();
						break;
				}				
			});
			
			// Click
			this.click = function(event) {
				event.preventDefault();
	
				value = $(event.target).parent().attr('data-value');
	
				if (value && this.items[value]) {
					this.select(this.items[value]);
				}
			}
			
			// Show
			this.show = function() {
				var pos = $(this).position();
	
				$(this).siblings('ul.dropdown-menu').css({
					top: pos.top + $(this).outerHeight(),
					left: pos.left
				});
	
				$(this).siblings('ul.dropdown-menu').show();
			}
			
			// Hide
			this.hide = function() {
				$(this).siblings('ul.dropdown-menu').hide();
			}		
			
			// Request
			this.request = function() {
				clearTimeout(this.timer);
		
				this.timer = setTimeout(function(object) {
					object.source($(object).val(), $.proxy(object.response, object));
				}, 200, this);
			}
			
			// Response
			this.response = function(json) {
				html = '';
	
				if (json.length) {
					for (i = 0; i < json.length; i++) {
						this.items[json[i]['value']] = json[i];
					}
	
					for (i = 0; i < json.length; i++) {
						if (!json[i]['category']) {
							html += '<li data-value="' + json[i]['value'] + '"><a href="#">' + json[i]['label'] + '</a></li>';
						}
					}
	
					// Get all the ones with a categories
					var category = new Array();
	
					for (i = 0; i < json.length; i++) {
						if (json[i]['category']) {
							if (!category[json[i]['category']]) {
								category[json[i]['category']] = new Array();
								category[json[i]['category']]['name'] = json[i]['category'];
								category[json[i]['category']]['item'] = new Array();
							}
	
							category[json[i]['category']]['item'].push(json[i]);
						}
					}
	
					for (i in category) {
						html += '<li class="dropdown-header">' + category[i]['name'] + '</li>';
	
						for (j = 0; j < category[i]['item'].length; j++) {
							html += '<li data-value="' + category[i]['item'][j]['value'] + '"><a href="#">&nbsp;&nbsp;&nbsp;' + category[i]['item'][j]['label'] + '</a></li>';
						}
					}
				}
	
				if (html) {
					this.show();
				} else {
					this.hide();
				}
	
				$(this).siblings('ul.dropdown-menu').html(html);
			}
			
			$(this).after('<ul class="dropdown-menu"></ul>');
			$(this).siblings('ul.dropdown-menu').delegate('a', 'click', $.proxy(this.click, this));	
			
		});
	}
})(window.jQuery);
// autocompleteSerach */
(function($) {
	$.fn.autocompleteSerach = function(option) {
		return this.each(function() {
			this.timer = null;
			this.items = new Array();
	
			$.extend(this, option);
	
			$(this).attr('autocompleteSerach', 'off');
			
			// Focus
			$(this).on('focus', function() {
				this.request();
			});
			
			// Blur
			$(this).on('blur', function() {
				setTimeout(function(object) {
					object.hide();
				}, 200, this);				
			});
			
			// Keydown
			$(this).on('keydown', function(event) {
				switch(event.keyCode) {
					case 27: // escape
						this.hide();
						break;
					default:
						this.request();
						break;
				}				
			});
			
			// Click
			this.click = function(event) {
				event.preventDefault();
	
				value = $(event.target).parent().attr('data-value');
	
				if (value && this.items[value]) {
					this.select(this.items[value]);
				}
			}
			
			// Show
			this.show = function() {
				var pos = $(this).position();
	
				$(this).siblings('ul.dropdown-menu').css({
					top: pos.top + $(this).outerHeight(),
					left: pos.left
				});
	
				$(this).siblings('ul.dropdown-menu').show();
			}
			
			// Hide
			this.hide = function() {
				$(this).siblings('ul.dropdown-menu').hide();
			}		
			
			// Request
			this.request = function() {
				clearTimeout(this.timer);
		
				this.timer = setTimeout(function(object) {
					object.source($(object).val(), $.proxy(object.response, object));
				}, 200, this);
			}
			
			// Response
			this.response = function(json) {
				html = '';
	
				if (json.length) {
					for (i = 0; i < json.length; i++) {
						this.items[json[i]['value']] = json[i];
					}
	
					for (i = 0; i < json.length; i++) {
						if (!json[i]['category']) {
							html += '<li data-value="' + json[i]['value'] + '"><a href="#">' + json[i]['label'] + '</a></li>';
						}
					}
	
					// Get all the ones with a categories
					var category = new Array();
	
					for (i = 0; i < json.length; i++) {
						if (json[i]['category']) {
							if (!category[json[i]['category']]) {
								category[json[i]['category']] = new Array();
								category[json[i]['category']]['name'] = json[i]['category'];
								category[json[i]['category']]['item'] = new Array();
							}
	
							category[json[i]['category']]['item'].push(json[i]);
						}
					}
	
					for (i in category) {
						html += '<li class="dropdown-header">' + category[i]['name'] + '</li>';
	
						for (j = 0; j < category[i]['item'].length; j++) {
							html += '<li data-value="' + category[i]['item'][j]['value'] + '"><a href="#">&nbsp;&nbsp;&nbsp;' + category[i]['item'][j]['label'] + '</a></li>';
						}
					}
				}
	
				if (html) {
					this.show();
				} else {
					this.hide();
				}
	
				$(this).siblings('ul.dropdown-menu').html(html);
			}
			
			$(this).after('<ul class="dropdown-menu autosearch"></ul>');
			$(this).siblings('ul.dropdown-menu autosearch').delegate('a', 'click', $.proxy(this.click, this));	
			
		});
	}
})(window.jQuery);



$(document).delegate('#button-login-popup', 'click', function() {
    $.ajax({
        url: 'index.php?route=common/header/login_validate',
        type: 'post',
        data: $('#login-form-popup :input'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-login').button('loading');
			creatOverlayLoadPage(true);
		},  
        complete: function() {
            $('#button-login').button('reset');
			creatOverlayLoadPage(false);
        },              
        success: function(json) {
            $('#login-form-popup .alert, #login-form-popup .text-danger').remove();
            if(json['islogged']){
				 window.location.href="index.php?route=account/account";
			}
			if (json['error']) {
				$('#login-form-popup .message').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
			}
			if(json['success']){
				loacation();
				$('#login-form-popup').modal('hide');
			}
            
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    }); 
});
function loacation() {
	location.reload();
}


function banner_link_open(link) {
$('body').prepend('<div id="messageLoadPage"></div>');
creatOverlayLoadPage(true); 
$('body').append('<div class="popup_banner"></div>');
	$('.popup_banner').popup({
		transition: 'all 0.3s',
		closetransitionend: function () {
			$(this).remove();
		}
	});
	$('.popup_banner').load(link+' #content', function() {
	creatOverlayLoadPage(false); 
		$('.popup_banner').append('<i class="fa fa-times close" onclick="$(\'.popup_banner\').popup(\'hide\');"></i>');
		$('.popup_banner').popup('show');
	});
}

$(document).ready(function() {   
    var sideslider = $('[data-toggle=collapse-side]');
    var sel = sideslider.attr('data-target');
    sideslider.click(function(event){
		$(sel).toggleClass('in');		
	});
});


function validate_quantity(input, minval){
	input.value = input.value.replace(/[^\d]/g, '');
	if (input.value == '') input.value = minval;
	if (input.value == '0') input.value = minval;
}
function recalc_quantity(product_id,minval,price,special, mod, mod_page_name) {
	var quantity = $(mod +' .quantity_plus_minus .input-number-quantity'+product_id).val();
	if(isNaN(quantity)){
		quantity = '1';
	}
	quantity = quantity.replace(/[^\d]/g, '');
	if (quantity == '') quantity = minval;
	if (quantity == '0') quantity = minval;
	
	var main_price = parseFloat(price);
	var special_price = parseFloat(special);
	special_coefficient = parseFloat(price)/parseFloat(special);
	
	
	var options_price = 0;
	$('#option_'+ mod_page_name +'_'+product_id+' option:selected,#option_'+ mod_page_name +'_'+product_id+' input:checked').each(function() {
      if ($(this).data('option-prefix') == '=') {
        options_price += Number($(this).data('option-price'));
        main_price = 0;
        special_price = 0;
      }
    });
	
	$('#option_'+ mod_page_name +'_'+product_id+' option:selected,#option_'+ mod_page_name +'_'+product_id+' input:checked').each(function() {
		if ($(this).data('option-prefix') == '+') {
			options_price += Number($(this).data('option-price'));
		}
		if ($(this).data('option-prefix') == '-') {
			options_price -= Number($(this).data('option-price'));
		}
		
	});
		
	main_price += options_price;
   
	//alert(!isNaN(special_price));
	if(!isNaN(special_price)){
		special_price += options_price;		 
		main_price = special_price * special_coefficient;
		special_price *= quantity;
	}
	
	main_price *= quantity;
   
	
	
	var start_price = parseFloat($(mod +' .price_no_format_' + product_id).html().replace(/\s*/g,''));	
	$({val:start_price}).animate({val:main_price}, {
		duration: 400,
		step: function(val) {
			$(mod +' .price_no_format_'+product_id).html(price_format(val));
		}
	});
	
	if(!isNaN(special_price)){
		var start_price = parseFloat($(mod +' .special_no_format_' + product_id).html().replace(/\s*/g,''));
		$({val:start_price}).animate({val:special_price}, {
			duration: 400,
			step: function(val) {
				$(mod +' .special_no_format_'+product_id).html(price_format(val));
			}
		});	
	}


}

function get_cart_quantity(product_id,mod) {
	input_val = $(mod +' .quantity_plus_minus .input-number-quantity'+product_id).val();
	var input_val = typeof(input_val) != 'undefined' ? input_val : 1;
	quantity  = parseInt(input_val);
	return quantity;
}