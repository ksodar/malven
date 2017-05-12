<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,400italic,700,700italic,300,300italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Marck+Script&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<?php echo $cssnewstore ;?>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php if ($config_ns_themes_custom_bg_mode) { ?>
	<?php if ($config_themes_custom_bg_img_preview) { ?>
		<style type="text/css">body {background:url('image/<?php echo $config_themes_custom_bg_img_preview; ?>')<?php if ($config_themes_custom_bg_repeat) { echo $config_themes_custom_bg_repeat; } ?> <?php if ($config_themes_custom_bg_attachment) { echo $config_themes_custom_bg_attachment; } ?> <?php if ($config_themes_custom_bg_position) { echo $config_themes_custom_bg_position; } ?>;}</style>
	<?php } ?>
<?php } else { ?>  
		<style type="text/css">body {background-color: <?php echo $config_ns_themes_custom_bg_mode_color; ?>;}</style>
<?php } ?>
<?php if ($config_on_off_shopping_cart_hover =='1') { ?>
<style type="text/css">
#cart:hover .dropdown-menu{
	display:block; 
}
#cart:hover  .dropdown-menu:before{
	content: "";
	position: absolute;
	top: -7px;
	width: 100%;
	height: 9px;
	background: transperent;
}
#cart:hover .car-down{
	-webkit-transform: rotate(-180deg);
	transform: rotate(-180deg);
}

</style>
<?php } ?>
<style type="text/css">
.sticker-ns.popular .fa{
	color:<?php echo $config_change_color_icon_sticker_popular;?>
}
.sticker-ns.popular{
	background: <?php echo $config_change_background_sticker_popular;?> none repeat scroll 0 0;
	color:<?php echo $config_change_color_text_sticker_popular;?>;
}				
.sticker-ns.special .fa{
	color:<?php echo $config_change_color_icon_sticker_special;?>
}
.sticker-ns.special {
	background: <?php echo $config_change_background_sticker_special;?> none repeat scroll 0 0;
	color:<?php echo $config_change_color_text_sticker_special;?>;
}
.sticker-ns.bestseller .fa{
	color:<?php echo $config_change_color_icon_sticker_topbestseller;?>
}
.sticker-ns.bestseller {
	background: <?php echo $config_change_background_sticker_topbestseller;?> none repeat scroll 0 0;
	color:<?php echo $config_change_color_text_sticker_topbestseller;?>;
}
.sticker-ns.newproduct .fa{
	color:<?php echo $config_change_color_icon_sticker_newproduct;?>
}
.sticker-ns.newproduct{
	background: <?php echo $config_change_background_sticker_newproduct;?> none repeat scroll 0 0;
	color:<?php echo $config_change_color_text_sticker_newproduct;?>;
}
</style>
<?php echo $jsnewstore; ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<script type="text/javascript">
function init(elem, options){
	elem.addClass('countdownHolder');
	$.each(['Days','Hours','Minutes','Sec'],function(i){
		var clas;
		if (this=='Days') {clas="<?php echo $days; ?>";}
		if (this=='Hours') {clas="<?php echo $hours; ?>";}
		if (this=='Minutes') {clas="<?php echo $minutes; ?>";}
		if (this=='Sec') {clas="<?php echo $sec; ?>";}
		$('<span class="count'+this+'">' +
			'<span class="position">' +
			'<span class="digit static">0</span>' +	'</span>' +
			'<span class="position">' +	'<span class="digit static">0</span>' +	'</span><span class="time_productany">'+clas+'</span></span>').appendTo(elem);	
		});
}
</script>
<script type="text/javascript">
  var button_shopping = "<?php echo $button_shopping; ?>";
  var button_checkout = "<?php echo $button_checkout; ?>";
  var link_checkout = "<?php echo $checkout; ?>";
  var link_newstorecheckout = "<?php echo $newstorecheckout; ?>";
</script>
<script type="text/javascript">
var text_showmore = '<?php echo $text_showmore?>';
var color_schem = '<?php echo $color_schem?>';
var loading_masked_img = '<img src="catalog/view/theme/newstore/image/ring-alt-'+ color_schem +'.svg" />';
function loading_masked(action) {
	if (action) {
		$('.loading_masked').html(loading_masked_img);
		$('.loading_masked').show();
	} else {
		$('.loading_masked').html('');
		$('.loading_masked').hide();
	}
}
function creatOverlayLoadPage(action) {
	if (action) {
		$('#messageLoadPage').html(loading_masked_img);
		$('#messageLoadPage').show();
	} else {
		$('#messageLoadPage').html('');
		$('#messageLoadPage').hide();
	}
}
function quickview_open(id) {
$('body').prepend('<div id="messageLoadPage"></div><div class="mfp-bg-quickview"></div>');
	$.ajax({
		type:'post',
		data:'quickview29=1',
		url:'index.php?route=product/product&product_id='+id,	
		beforeSend: function() {
			creatOverlayLoadPage(true); 
		},
		complete: function() {
			$('.mfp-bg-quickview').hide();
			$('#messageLoadPage').hide();
			creatOverlayLoadPage(false); 
		},	
		success:function (data) {
			$('.mfp-bg-quickview').hide();
			$data = $(data);
			var new_data = $data.find('#quickview-container').html();							
			$.magnificPopup.open({
				tLoading: loading_masked_img,
				items: {
					src: new_data,
				},
				type: 'inline'
			});
		}
});							
}
	$(document).ready(function(){
		$("#back-top").hide();
		$(function () {
			$(window).scroll(function () {
				if ($(this).scrollTop() > 150) {
					$('#back-top').fadeIn();
				} else {
					$('#back-top').fadeOut();
				}
			});
			$('#back-top a').click(function () {
				$('body,html').animate({
					scrollTop: 0
				}, 800);
				return false;
			});
		});
		
	});	
</script>
<?php if($config_fixed_panel_top) { ?>
<script type="text/javascript">
$(document).ready(function() {
<?php if($config_main_menu_selection =='1') { ?>
	if($("#top-fixed").length==0) {
	var menu_fix = '<div class="menu_fix col-sm-3 col-md-3"></div>';
	<?php if($main_phone) { ?>
		var phone_fix = '<div class="phone_fix col-sm-2 col-md-2"></div>';
		var search_fix = '<div class="search_fix col-sm-4 col-md-5"><div id="search-fixed-top"></div></div>';
	<?php } else { ?>
		var phone_fix = '';
		var search_fix = '<div class="search_fix col-sm-6 col-md-7"><div id="search-fixed-top"></div></div>';
	<?php } ?>
	
	var cart_fix = '<div class="col-sm-3 col-md-2 cart_fix"></div>';	
	
	$('#top').before('<div id="top-fixed" class="hidden-xs hidden-sm"><div class="container"><div class="row">'+menu_fix+' '+phone_fix+' '+search_fix+' '+cart_fix+'</div></div></div>');	
		
	$('#menu').clone().appendTo('#top-fixed .menu_fix');	
	<?php if($main_phone) { ?>
	$('#phone').clone().appendTo('#top-fixed .phone_fix');	
	<?php } ?>
	$('#search').clone().appendTo('#top-fixed #search-fixed-top');
	$('header .shopping-cart').clone().appendTo('#top-fixed .cart_fix');
}	
	$(window).scroll(function(){		
		if($(this).scrollTop()>200) {
			$('header .shopping-cart #cart').removeClass('open');
			$('#top-fixed').addClass('sticky-header-1');
		}else{
			$('#top-fixed').removeClass('sticky-header-1');
		}		
	});
	$('#top-fixed #menu-list').menuAim({
		activateCallback: activateSubmenu_fixed,
		deactivateCallback: deactivateSubmenu_fixed,
	});
	function activateSubmenu_fixed(row) {$(row).addClass('menu-open');}
	function deactivateSubmenu_fixed(row) {$(row).removeClass('menu-open');}
	function exitMenu_fixed(row) {return true;}
	$('#top-fixed .dropdown-menu-simple .nsmenu-haschild').menuAim({
		activateCallback: activateSubmenu2level_fixed,
		deactivateCallback: deactivateSubmenu2level_fixed,
	});
	function activateSubmenu2level_fixed(row) {$(row).addClass('menu-open-2level');}
	function deactivateSubmenu2level_fixed(row) {$(row).removeClass('menu-open-2level');}
	function exitMenu2level_fixed(row) {return true;}	
		
	
$('#top-fixed #search a').bind('click', function() {
	$("#top-fixed #selected_category").val($(this).attr('data-idsearch'));
	$('#top-fixed .category-name').html($(this).html());
});
$('#top-fixed .btn-search').bind('click', function() {										
	url = $('base').attr('href') + 'index.php?route=product/search';

	var value = $('#top-fixed input[name=\'search\']').val();

	if (value) {
		url += '&search=' + encodeURIComponent(value);
	} else {
		url += '&search=';
	}
							
	var category_id = $('#top-fixed input[name=\'category_id\']').prop('value');
						
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id) + '&sub_category=true';
	}
	location = url;
						
});
		
<?php } ?>
<?php if($config_main_menu_selection =='0') { ?>
if($("#top-fixed").length==0) {
var menu_fix2 = '<div class="menu_fix col-sm-3 col-md-3"></div>';
$('#top').before('<div id="top-fixed" class="hidden-xs hidden-sm"><div class="container"><div class="row">'+menu_fix2+'</div></div></div>');	
$('header .menu-fixed').clone().appendTo('#top-fixed .menu_fix');
}
$(window).scroll(function(){		
		if($(this).scrollTop()>220) {
			$('#top-fixed').addClass('sticky-header-2');
		}else{
			$('#top-fixed').removeClass('sticky-header-2');
		}		
	});
$('#top-fixed').hover(function() {
$('#top-fixed #horizontal-menu .menu-full-width .dropdown-menu').each(function() {
	var menu = $('#horizontal-menu .container').offset();
	var dropdown = $(this).parent().offset();		
	var i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#horizontal-menu .container').outerWidth());	
							
	if (i > 0) {
		$(this).css('margin-left', '-' + (i + 10) + 'px');
	} 
	var width = $('#horizontal-menu .container').outerWidth();
	$(this).css('width', '' + (width - 23) + 'px');
});
});
<?php } ?>
});
</script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

				<?php if (isset($agreedata) && $agreedata['status'] != 0) { ?>
				<link href="catalog/view/theme/newstore/stylesheet/agree_popup/style_agree.css" rel="stylesheet">
				<script type="text/javascript">
				$(function() {
				<?php $delay_time = isset($agreedata['delay_time']) ? $agreedata['delay_time'] : '1000'; ?>
					<?php if($agreedata['method_agree_popup']=='method_session') { ?>
						if(sessionStorage['PopupAgree'] != 'yes'){ 
							setTimeout(function(){
								ShowAgree();
							}, <?php echo $delay_time; ?>);
						}
					<?php } else { ?>
						<?php if (!isset($_COOKIE['PopupAgree'])) { ?>
							setTimeout(function(){
								ShowAgree();
							}, <?php echo $delay_time; ?>);
						<?php } ?>
					<?php } ?>
				});
				var loading_masked_agree = '<img src="catalog/view/theme/newstore/image/ring-alt-1.svg" />';
				function loading_agree(action) {
					if (action) {
						$('#loading_agree').html(loading_masked_agree);
						$('#loading_agree').show();
					} else {
						$('#loading_agree').html('');
						$('#loading_agree').hide();
					}
				}
				function ShowAgree() {
					$('body').prepend('<div id="loading_agree"></div>');
					loading_agree(true); 
					$('body').append('<div class="popup_agree"></div>');
					$('.popup_agree').popup({
						transition: 'all 0.3s',
						escape: <?php if($agreedata['escape_click']=='1') { ?> true <?php } else { ?> false <?php } ?>,
						blur: <?php if($agreedata['blur_click']=='1') { ?> true <?php } else { ?> false <?php } ?>,
						closetransitionend: function () {$(this).remove();}
					});
					$('.popup_agree').load('index.php?route=module/agree_popup', function() {
						loading_agree(false); 
						$('.popup_agree').popup('show');
					});
				}
				</script>
				<?php } ?>
			

				<link rel="stylesheet" type="text/css" href="catalog/view/theme/newstore/stylesheet/csscallback.css" />
			

        <?php if (isset($fcpdata['status']) && $fcpdata['status']) { ?>
		<style type="text/css">
		<?php if ($fcpdata['color_found_cheaper_button']) { ?>
		.btn-cheaper {color:<?php echo $fcpdata['color_found_cheaper_button']; ?> !important; }
		<?php } ?>
		<?php if ($fcpdata['background_found_cheaper_button']) { ?>
		.btn-cheaper {background:<?php echo $fcpdata['background_found_cheaper_button']; ?> !important; }
		<?php } ?>
		<?php if ($fcpdata['background_found_cheaper_button_hover']) { ?>
		.btn-cheaper:hover {background:<?php echo $fcpdata['background_found_cheaper_button_hover']; ?> !important; }
		<?php } ?>
		<?php if ($fcpdata['border_found_cheaper_button']) { ?>
		.btn-cheaper {border-color:<?php echo $fcpdata['border_found_cheaper_button']; ?> !important; }
		<?php } ?>
		<?php if ($fcpdata['border_found_cheaper_button_hover']) { ?>
		.btn-cheaper:hover {border-color:<?php echo $fcpdata['border_found_cheaper_button_hover']; ?> !important; }
		<?php } ?>
		</style>
        <link href="catalog/view/theme/newstore/stylesheet/popup-found_cheaper_product/stylefcp.css" rel="stylesheet" media="screen" />
        <script type="text/javascript">
        function open_popup_fcp(product_id) {  
          $.magnificPopup.open({
            tLoading: loading_masked_img,
            items: {
              src: 'index.php?route=module/found_cheaper_product&product_id='+product_id,
              type: 'ajax'
            }
          });
        }
        </script>
      <?php } ?>
      
				
<script type="text/javascript">
function fastorder_open(product_id) {  
          $.magnificPopup.open({
            tLoading: loading_masked_img,
            items: {
              src: 'index.php?route=module/newfastorder&product_id='+product_id,
              type: 'ajax'
            }
          });
        }
function fastorder_open_cart() {  
          $.magnificPopup.open({
            tLoading: loading_masked_img,
            items: {
              src: 'index.php?route=module/newfastordercart',
              type: 'ajax'
            }
			
          });
        }		
</script>
			
</head>
<body class="<?php echo $class; ?>">
<p id="back-top"><a rel="nofollow" class="btn btn-default" href="#top"><i class="fa fa-chevron-up" style="font-size:18px;"></i></a></p>
<div id="login-form-popup" class="modal fade" role="dialog">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<form>
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title"><?php echo $text_login; ?></h4>
				</div>
				<div class="modal-body">
				<div class="form-group">
					<div class="message"></div>
				</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope"></i></span> 
							<input type="text" name="email" value="" placeholder="<?php echo str_replace(':','',$entry_email); ?>" id="input-email" class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-lock"></i></span>	
							<input type="password" name="password" value="" placeholder="<?php echo str_replace(':','',$entry_password); ?>" id="input-password" class="form-control" />
						</div>
					</div>
					<div class="form-group text-center">
						<a href="<?php echo $register; ?>"><?php echo $text_register; ?></a> | <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
					</div>
				</div>		
				<div class="modal-footer">	
					<input type="button" value="<?php echo $button_login; ?>" id="button-login-popup" class="btn-login btn-block" />		
				</div>					
			</form>
		</div>
	</div>
</div>
<nav id="top">
  <div class="container">
  <?php if(!empty($header_nav_menu_links)) { ?>
	<div class="pull-left">
		<div class="navbar navbar-inverse">
			<div class="navbar-header">
				<button data-toggle="collapse-side" data-target=".side-collapse" type="button" class="navbar-toggle btn-question"><i class="fa fa-question-circle" aria-hidden="true"></i></button>
			</div>
			<div class="navbar-inverse side-collapse in">
				<nav class="navbar-collapse">
					<ul class="nav navbar-nav">
						<?php foreach($header_nav_menu_links as $header_nav_menu_link) { ?>
							<li><button <?php if(($header_nav_menu_link['popup']=='1') && ($header_nav_menu_link['link'] !='')){ ?> onclick="$('.side-collapse').toggleClass('in'); banner_link_open('<?php echo $header_nav_menu_link['link']; ?>')" <?php } elseif(($header_nav_menu_link['popup']=='0') && ($header_nav_menu_link['link'] !='')) { ?>onclick="location='<?php echo $header_nav_menu_link['link']; ?>'" <?php } ?> type="button" class="btn btn-link"><i class="<?php echo $header_nav_menu_link['icon_image'];?>"></i> <?php echo $header_nav_menu_link['title'][$lang_id]; ?></button></li>						
						<?php  } ?>
					</ul>
				</nav>
			</div>
		</div>		
	</div>
	<?php } ?>
	<div class="pull-right">	
	<div class="pull-right">	
		<div class="btn-group">
				<button data-toggle="dropdown" type="button" class="dropdown-toggle btn btn-link">
				<i class="fa fa-user"></i>
				<span class="hidden-xs hidden-sm"><?php echo $text_account; ?></span> <span class="caret"></span>		
				</button>
			<ul class="dropdown-menu dropdown-menu-right">
				<?php if ($logged) { ?>
				<li><a rel="nofollow" href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a rel="nofollow" href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				<li><a rel="nofollow" href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
				<li><a rel="nofollow" href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
				<li><a rel="nofollow" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
				<?php } else { ?>
				<li><a rel="nofollow" href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
				<li><a rel="nofollow" href="#login_modal_popup" data-toggle="modal" data-target="#login-form-popup"><?php echo $text_login; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
	<div class="pull-right">
		<?php echo $currency; ?>
	</div>
	<div class="pull-right">
		<?php echo $language; ?>
	</div>
	<div class="pull-right">
		<a rel="nofollow" class="btn btn-link" href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart fa-fw"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a>
	</div>
	<div class="pull-right">
		<a rel="nofollow" class="btn btn-link" href="<?php echo $compare; ?>"  id="compare-total" title="<?php echo $text_compare; ?>"><i class="fa fa-balance-scale" aria-hidden="true"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_compare; ?></span></a>
	</div>
	</div>
  </div>
</nav>
<header>
<?php if($config_main_menu_selection =='0') { ?>
<div class="container">
	<div class="row">
      <div class="col-sm-12 col-md-3 text-center text-left-md logo-top">
        <div id="logo">
		<?php if ($logo) { ?>
            <?php if ($home == $home_page) { ?>
              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
            <?php } else { ?>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
            <?php } ?>
          <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
	  <?php if($main_phone) { ?>
	  <div class="col-sm-12 col-md-3 text-xs-center text-sm-center text-md-center">
			<div id="phone">
			<div class="contact-header">
					<span data-toggle="dropdown">
						<i class="glyphicon glyphicon-phone-alt telephone-icon"></i>
							<?php if($main_phone) { ?>
								<span><?php echo $main_phone;?></span>
							<?php } else { ?>
								<span><?php echo $telephone;?></span>
							<?php } ?>
							<?php if(!empty($header_phones) || ($email_header_contact) || ($header_social)) { ?>	
							<i class="car-down fa fa-angle-down"></i>	
							<?php } ?>					
					</span>	
					<?php if(!empty($header_phones) || ($email_header_contact) || ($header_social)) { ?>	
					<ul class="dropdown-menu drop-contacts">
						<?php if(!empty($header_phones)) { ?>
									<?php foreach($config_phones_array as $contact_phone_header) { ?>
									<li><a href="tel:<?php echo preg_replace("/[^0-9]/","",$contact_phone_header['phone']);?>"><?php if($contact_phone_header['icon_phone'] !=''){ ?><img src="<?php echo $contact_phone_header['icon_phone'];?>" alt="<?php echo $contact_phone_header['phone'];?>" />&nbsp;&nbsp;<?php } ?><?php echo $contact_phone_header['phone'];?></a></li>
									<?php } ?>
									<li class="line-contact"></li>
						<?php } ?>
						<?php if($email_header_contact) { ?>
							<li><a target="_blank" href="mailto:<?php echo $email_header_contact?>" ><i class="fa fa-envelope-o"></i>&nbsp;&nbsp;<?php echo $email_header_contact?></a></li>
							<?php } ?>
							<?php if($skype_header_contact) { ?>
							<li><a target="_blank" href="skype:<?php echo $skype_header_contact?>" ><i class="fa fa-skype"></i>&nbsp;&nbsp;<?php echo $skype_header_contact?></a></li>
							<?php } ?>
						<?php if(!empty($header_social)) { ?>
								<li class="line-contact"></li>
								<?php foreach($config_social_array as $contact_social_header) { ?>
								<li><a target="_blank" href="http://<?php echo $contact_social_header['social'];?>"><?php if($contact_social_header['icon_phone'] !='') { ?><img src="<?php echo $contact_social_header['icon_phone'];?>" alt="<?php echo $contact_social_header['social'];?>" />&nbsp;&nbsp;<?php } ?><?php echo $contact_social_header['social'];?></a></li>
								<?php } ?>
						<?php } ?>
					</ul>
					<?php } ?>
					<?php if($config_schedule_header[$lang_id]['config_schedule_header']) { ?>
							<br /><span class="info-contact"><?php echo $config_schedule_header[$lang_id]['config_schedule_header']?></span>
					<?php } ?>
				</div>
			</div>
	  </div>
	  <?php } ?>
      <div class="col-sm-12  <?php if($main_phone) { ?>col-md-4<?php } else { ?>col-md-7<?php } ?> search-top"><?php echo $search; ?></div>
      <div class="col-md-2 col-sm-12 col-md-push-0"><?php echo $cart; ?></div>
	</div>
</div>
<?php if ($items) { ?>
<div class="menu-fixed">
	<?php if($hmenu_type =='1') { ?>
		<nav id="horizontal-menu" class="navbar">
	<?php } ?>
  <div class="container">
  	<?php if($hmenu_type =='0') { ?>
		<nav id="horizontal-menu" class="navbar hmenu_type">
	<?php } ?>
		<div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
		  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
		</div>
		<div class="collapse navbar-collapse navbar-ex1-collapse">
		  <ul class="nav navbar-nav">
		  
			<?php foreach ($items as $item) { ?>
				<?php if ($item['children']) { ?>
				<li class="dropdown">
					<a href="<?php echo $item['href']; ?>" <?php if($item['new_blank'] == 1) {echo 'target="_blank" data-target="link"';} else {echo 'class="dropdown-toggle dropdown-img" data-toggle="dropdown"';} ?>>
						<?php if($item['thumb']){?>
							<img alt="<?php echo $item['name'][$lang_id]; ?>" title="<?php echo $item['name'][$lang_id]; ?>" class="nsmenu-thumb" src="<?php echo $item['thumb']?>"/>
						<?php } ?>
							<?php if($item['sticker_parent'] !='0'){?>
								<?php if($item['sticker_parent'] =='new') { ?>
									<span class="cat-label cat-label-label1"><?php echo $item['sticker_parent'];?></span>
								<?php } elseif($item['sticker_parent'] =='sale') { ?>
									<span class="cat-label cat-label-label2"><?php echo $item['sticker_parent'];?></span>
								<?php } else { ?>
									<span class="cat-label cat-label-label3"><?php echo $item['sticker_parent'];?></span>
								<?php } ?>	
							<?php } ?>
						<?php echo $item['name'][$lang_id]; ?>
					</a>
					
					<?php if($item['type']=="category"){ ?>
					<?php if($item['subtype']=="simple"){ ?>
					  <div class="dropdown-menu nsmenu-type-category-simple">
						<div class="dropdown-inner">
						  <?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>  
							<ul class="list-unstyled nsmenu-haschild">
								<?php foreach ($children as $child) { ?>
								<li class="<?php if(count($child['children'])){?> nsmenu-issubchild<?php }?>">
									<a href="<?php echo $child['href']; ?>">
									<?php echo $child['name']; ?>
										<?php if($child['sticker_category'] !='0'){?>
											<?php if($child['sticker_category'] =='new') { ?>
												<span class="cat-label cat-label-label1"><?php echo $child['sticker_category'];?></span>
											<?php } elseif($child['sticker_category'] =='sale') { ?>
												<span class="cat-label cat-label-label2"><?php echo $child['sticker_category'];?></span>
											<?php } else { ?>
												<span class="cat-label cat-label-label3"><?php echo $child['sticker_category'];?></span>
											<?php } ?>	
										<?php } ?>
									</a>
									<?php if(count($child['children'])){?>
									<ul class="list-unstyled nsmenu-ischild nsmenu-ischild-simple">
									 <?php foreach ($child['children'] as $subchild) { ?>
									<li><a href="<?php echo $subchild['href']; ?>">
										<?php echo $subchild['name']; ?>
											<?php if($subchild['sticker_category'] !='0'){?>
												<?php if($subchild['sticker_category'] =='new') { ?>
													<span class="cat-label cat-label-label1"><?php echo $subchild['sticker_category'];?></span>
												<?php } elseif($subchild['sticker_category'] =='sale') { ?>
													<span class="cat-label cat-label-label2"><?php echo $subchild['sticker_category'];?></span>
												<?php } else { ?>
													<span class="cat-label cat-label-label3"><?php echo $subchild['sticker_category'];?></span>
												<?php } ?>	
											<?php } ?>
									</a></li>				
									<?php } ?>
									</ul>
									<?php } ?>				
								</li>
								<?php } ?>
							</ul>
						  <?php } ?>
						</div>
						<a href="<?php echo $item['href']; ?>" class="see-all-horisontal-menu"><?php echo $text_all; ?> <?php echo $item['name'][$lang_id]; ?></a>		
						</div>
						<?php } ?>	
						<?php } ?>
						
						<?php if($item['type']=="category"){?>
						<?php if($item['subtype']=="full"){?>
						  <div class="dropdown-menu nsmenu-type-category-full nsmenu-bigblock">
							<div class="dropdown-inner">
							  <?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>							
								<?php if($item['add_html']){ ?>
								<div style="" class="menu-add-html">									
									<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
								</div>
								<?php } ?>
								<ul class="list-unstyled nsmenu-haschild">
								<?php foreach ($children as $child) { ?>
								<li class="nsmenu-parent-block<?php if(count($child['children'])){?> nsmenu-issubchild<?php }?>">
								<a class="nsmenu-parent-title" href="<?php echo $child['href']; ?>">
									<?php echo $child['name']; ?>
										<?php if($child['sticker_category'] !='0'){?>
											<?php if($child['sticker_category'] =='new') { ?>
												<span class="cat-label cat-label-label1"><?php echo $child['sticker_category'];?></span>
											<?php } elseif($child['sticker_category'] =='sale') { ?>
												<span class="cat-label cat-label-label2"><?php echo $child['sticker_category'];?></span>
											<?php } else { ?>
												<span class="cat-label cat-label-label3"><?php echo $child['sticker_category'];?></span>
											<?php } ?>	
										<?php } ?>
								</a>
									<?php if(count($child['children'])){?>
									<ul class="list-unstyled nsmenu-ischild">
									 <?php foreach ($child['children'] as $subchild) { ?>
									<li><a href="<?php echo $subchild['href']; ?>">
										<?php echo $subchild['name']; ?>
											<?php if($subchild['sticker_category'] !='0'){?>
												<?php if($subchild['sticker_category'] =='new') { ?>
													<span class="cat-label cat-label-label1"><?php echo $subchild['sticker_category'];?></span>
												<?php } elseif($subchild['sticker_category'] =='sale') { ?>
													<span class="cat-label cat-label-label2"><?php echo $subchild['sticker_category'];?></span>
												<?php } else { ?>
													<span class="cat-label cat-label-label3"><?php echo $subchild['sticker_category'];?></span>
												<?php } ?>	
											<?php } ?>
									</a></li>				
									<?php }?>
									</ul>
									<?php }?>				
								</li>
								<?php } ?>
								</ul>
							  <?php } ?>
							</div> 
							<a href="<?php echo $item['href']; ?>" class="see-all-horisontal-menu"><?php echo $text_all; ?> <?php echo $item['name'][$lang_id]; ?></a>		
							</div>
							<?php } ?>	
							<?php } ?>
							<?php if($item['type']=="category"){?>
							<?php if($item['subtype']=="full_image"){?>
							  <div class="dropdown-menu nsmenu-type-category-full-image nsmenu-bigblock">
								<div class="dropdown-inner">
								  <?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>
								
									<?php if($item['add_html']){?>
								  <div style="" class="menu-add-html">
									<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
									</div>
									<?php }?>
								  
									<ul class="list-unstyled nsmenu-haschild">
									<?php foreach ($children as $child) { ?>
									<li class="nsmenu-parent-block <?php if(count($child['children'])){?> nsmenu-issubchild<?php } ?>">
									<a class="nsmenu-parent-img" href="<?php echo $child['href']; ?>"><img src="<?php echo $child['thumb']; ?>" alt="<?php echo $child['name']; ?>" title="<?php echo $child['name']; ?>"/></a>
									<a class="nsmenu-parent-title" href="<?php echo $child['href']; ?>">
									<?php echo $child['name']; ?>
										<?php if($child['sticker_category'] !='0'){?>
											<?php if($child['sticker_category'] =='new') { ?>
												<span class="cat-label cat-label-label1"><?php echo $child['sticker_category'];?></span>
											<?php } elseif($child['sticker_category'] =='sale') { ?>
												<span class="cat-label cat-label-label2"><?php echo $child['sticker_category'];?></span>
											<?php } else { ?>
												<span class="cat-label cat-label-label3"><?php echo $child['sticker_category'];?></span>
											<?php } ?>	
										<?php } ?>
									</a>
									
									<?php if(count($child['children'])){?>
									<ul class="list-unstyled nsmenu-ischild">
									 <?php foreach ($child['children'] as $subchild) { ?>
									<li><a href="<?php echo $subchild['href']; ?>">
										<?php echo $subchild['name']; ?>
											<?php if($subchild['sticker_category'] !='0'){?>
												<?php if($subchild['sticker_category'] =='new') { ?>
													<span class="cat-label cat-label-label1"><?php echo $subchild['sticker_category'];?></span>
												<?php } elseif($subchild['sticker_category'] =='sale') { ?>
													<span class="cat-label cat-label-label2"><?php echo $subchild['sticker_category'];?></span>
												<?php } else { ?>
													<span class="cat-label cat-label-label3"><?php echo $subchild['sticker_category'];?></span>
												<?php } ?>	
											<?php } ?>
									</a></li>				
									<?php } ?>
									</ul>
									<?php } ?>				
									</li>
									<?php } ?>
									</ul>
								  <?php } ?>
								</div> 
								<a href="<?php echo $item['href']; ?>" class="see-all-horisontal-menu"><?php echo $text_all; ?> <?php echo $item['name'][$lang_id]; ?></a>		
								</div>
								<?php }?>	
								<?php }?>
								
								<?php if($item['type']=="html"){?>
								  <div class="dropdown-menu nsmenu-type-html">
									<div class="dropdown-inner">
										<ul class="list-unstyled nsmenu-haschild">										
											<li class="nsmenu-parent-block">
												<div class="nsmenu-html-block">				
													<?php echo html_entity_decode($item['html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
												</div>
											</li>
										</ul>									
									</div>            
								   </div>	
								<?php } ?>
								
								<?php if($item['type']=="manufacturer"){?>
									<div class="dropdown-menu nsmenu-type-manufacturer <?php if($item['add_html']){?>nsmenu-bigblock<?php } ?>">
										<div class="dropdown-inner">
											<?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>
												<?php if($item['add_html']){ ?>
													<div class="menu-add-html">
														<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
													</div>
												<?php } ?>									  
												<ul class="list-unstyled nsmenu-haschild <?php if($item['add_html']){?>nsmenu-blockwithimage<?php } ?>">
												<?php foreach ($children as $child) { ?>
													<li class="nsmenu-parent-block">
														<a class="nsmenu-parent-img" href="<?php echo $child['href']; ?>"><img src="<?php echo $child['thumb']; ?>" alt="<?php echo $child['name']; ?>" title="<?php echo $child['name']; ?>" /></a>
														<a class="nsmenu-parent-title" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
													</li>
												<?php } ?>
												</ul>
											<?php } ?>
										</div>            
									</div>
								<?php } ?>
								
								<?php if($item['type']=="information"){?>	
									<div class="dropdown-menu nsmenu-type-information <?php if($item['add_html']){?>nsmenu-bigblock<?php } ?>">
										<div class="dropdown-inner">
											<?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>
												<?php if($item['add_html']){?>
													<div class="menu-add-html">
														<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
													</div>
												<?php }?>									  
												<ul class="list-unstyled nsmenu-haschild <?php if($item['add_html']){?>nsmenu-blockwithimage<?php } ?>">
													<?php foreach ($children as $child) { ?>
														<li class=""><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
													<?php } ?>
												</ul>
											<?php } ?>
										</div>            
									</div>
								<?php } ?>
								
								<?php if($item['type']=="product"){?>
									<div class="dropdown-menu nsmenu-type-product <?php if($item['add_html']){?>nsmenu-bigblock<?php } ?>">
										<div class="dropdown-inner">
											<?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>
												<?php if($item['add_html']){?>
													<div style="" class="menu-add-html">
													<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
													</div>
												<?php } ?>
												<ul class="list-unstyled nsmenu-haschild <?php if($item['add_html']){?>nsmenu-blockwithimage<?php }?>">
													<?php foreach ($children as $child) { ?>
														<li class="nsmenu-parent-block">
															<a class="nsmenu-parent-img" href="<?php echo $child['href']; ?>"><img src="<?php echo $child['thumb']; ?>" alt="<?php echo $child['name']; ?>" title="<?php echo $child['name']; ?>" /></a>
															<a class="nsmenu-parent-title" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
															<div class="price">
																		<?php if (!$child['special']) { ?>
																			<?php echo $child['price']; ?>
																		<?php } else { ?>
																			<span class="price-old"><?php echo $child['price']; ?></span> 
																			<span class="price-new"><?php echo $child['special']; ?></span>
																		<?php } ?>
																	</div>					
														</li>
													<?php } ?>
												</ul>
											<?php } ?>
										</div>            
									</div>
								<?php } ?>
					</li>
				<?php } else {  ?>
					<li><a <?php if($item['new_blank'] == 1) {echo 'target="_blank" data-target="link"';} else {echo 'class="dropdown-img"';} ?> href="<?php echo $item['href']; ?>"><?php if($item['thumb']){?>
							<img class="nsmenu-thumb" src="<?php echo $item['thumb']?>"/>
						<?php } ?>
						<?php if($item['sticker_parent'] !='0'){?>
								<?php if($item['sticker_parent'] =='new') { ?>
									<span class="cat-label cat-label-label1"><?php echo $item['sticker_parent'];?></span>
								<?php } elseif($item['sticker_parent'] =='sale') { ?>
									<span class="cat-label cat-label-label2"><?php echo $item['sticker_parent'];?></span>
								<?php } else { ?>
									<span class="cat-label cat-label-label3"><?php echo $item['sticker_parent'];?></span>
								<?php } ?>	
							<?php } ?>
						<?php echo $item['name'][$lang_id]; ?></a></li>
				<?php } ?>
			<?php } ?>
		  </ul>
		</div>
		<?php if($hmenu_type =='0') { ?>
			</nav>
		<?php } ?>
	</div>
		<?php if($hmenu_type =='1') { ?>
			</nav>
		<?php } ?>
 </div>
<?php } ?>
<?php } ?>

<?php if($config_main_menu_selection =='1') { ?>
  <div class="container">
    <div class="row">
      <div class="col-sm-12 col-md-3 text-center text-left-md logo-top">
        <div id="logo">
        <?php if ($logo) { ?>
            <?php if ($home == $home_page) { ?>
              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
            <?php } else { ?>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
            <?php } ?>
          <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
	  <?php if($main_phone) { ?>
		 <div class="col-sm-12 col-md-3 text-xs-center text-sm-center text-md-center">
			<div id="phone">
			<div class="contact-header">
					<span data-toggle="dropdown">
						<i class="glyphicon glyphicon-phone-alt telephone-icon"></i>
							<?php if($main_phone) { ?>
								<span><?php echo $main_phone;?></span>
							<?php } else { ?>
								<span><?php echo $telephone;?></span>
							<?php } ?>
							<?php if(!empty($header_phones) || ($email_header_contact) || ($header_social)) { ?>	
							<i class="car-down fa fa-angle-down"></i>	
							<?php } ?>					
					</span>	
					<?php if(!empty($header_phones) || ($email_header_contact) || ($header_social)) { ?>	
					<ul class="dropdown-menu drop-contacts">
						<?php if(!empty($header_phones)) { ?>
									<?php foreach($config_phones_array as $contact_phone_header) { ?>
									<li><a href="tel:<?php echo preg_replace("/[^0-9]/","",$contact_phone_header['phone']);?>"><?php if($contact_phone_header['icon_phone'] !=''){ ?><img src="<?php echo $contact_phone_header['icon_phone'];?>" alt="<?php echo $contact_phone_header['phone'];?>" />&nbsp;&nbsp;<?php } ?><?php echo $contact_phone_header['phone'];?></a></li>
									<?php } ?>
									<li class="line-contact"></li>
						<?php } ?>
						<?php if($email_header_contact) { ?>
							<li><a target="_blank" href="mailto:<?php echo $email_header_contact?>" ><i class="fa fa-envelope-o"></i>&nbsp;&nbsp;<?php echo $email_header_contact?></a></li>
							<?php } ?>
							<?php if($skype_header_contact) { ?>
							<li><a target="_blank" href="skype:<?php echo $skype_header_contact?>" ><i class="fa fa-skype"></i>&nbsp;&nbsp;<?php echo $skype_header_contact?></a></li>
							<?php } ?>
						<?php if(!empty($header_social)) { ?>
								<li class="line-contact"></li>
								<?php foreach($config_social_array as $contact_social_header) { ?>
								<li><a target="_blank" href="http://<?php echo $contact_social_header['social'];?>"><?php if($contact_social_header['icon_phone'] !='') { ?><img src="<?php echo $contact_social_header['icon_phone'];?>" alt="<?php echo $contact_social_header['social'];?>" />&nbsp;&nbsp;<?php } ?><?php echo $contact_social_header['social'];?></a></li>
								<?php } ?>
						<?php } ?>
					</ul>
					<?php } ?>
					<?php if($config_schedule_header[$lang_id]['config_schedule_header']) { ?>
							<br /><span class="info-contact"><?php echo $config_schedule_header[$lang_id]['config_schedule_header']?></span>
					<?php } ?>
				</div>
			</div>
	  </div>
	  <?php } ?>
      <div class="col-sm-12 <?php if($main_phone) { ?>col-md-4<?php } else { ?>col-md-7<?php } ?> search-top"><?php echo $search; ?></div>
      <div class="col-md-2 col-sm-12 col-md-push-0"><?php echo $cart; ?></div>
	</div>  
	<div class="row">   
	   <div class="col-md-9 col-md-push-3 hidden-xs hidden-sm clearfix">	   	
		<?php if($additional) {?>
		<nav id="additional-menu" class="navbar hmenu_type">
			<div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
			  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
			</div>
		<div class="collapse navbar-collapse navbar-ex1-collapse">
		  <ul class="nav navbar-nav">
			<?php foreach ($items as $item) { ?>
				<?php if ($item['children']) { ?>
				<li class="dropdown">
				<?php if($item['additional_menu']=="additional"){ ?>
					<a href="<?php echo $item['href']; ?>" <?php if($item['new_blank'] == 1) {echo 'target="_blank" data-target="link"';} else {echo 'class="dropdown-toggle dropdown-img" data-toggle="dropdown"';} ?>>
						<?php if($item['thumb']){?>
							<img alt="<?php echo $item['name'][$lang_id]; ?>" class="nsmenu-thumb" src="<?php echo$item['thumb']?>"/>
						<?php } ?>
							<?php if($item['sticker_parent'] !='0'){?>
								<?php if($item['sticker_parent'] =='new') { ?>
									<span class="cat-label cat-label-label1"><?php echo $item['sticker_parent'];?></span>
								<?php } elseif($item['sticker_parent'] =='sale') { ?>
									<span class="cat-label cat-label-label2"><?php echo $item['sticker_parent'];?></span>
								<?php } else { ?>
									<span class="cat-label cat-label-label3"><?php echo $item['sticker_parent'];?></span>
								<?php } ?>	
							<?php } ?>
						<?php echo $item['name'][$lang_id]; ?>
					</a>
					<?php } ?>
					<?php if($item['type']=="category"){ ?>
					<?php if($item['subtype']=="simple"){ ?>
					<?php if($item['additional_menu']=="additional"){ ?>
					  <div class="dropdown-menu nsmenu-type-category-simple">
						<div class="dropdown-inner">
						  <?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>  
							<ul class="list-unstyled nsmenu-haschild">
								<?php foreach ($children as $child) { ?>
								<li class="<?php if(count($child['children'])){?> nsmenu-issubchild<?php }?>">
									<a href="<?php echo $child['href']; ?>">
									<?php echo $child['name']; ?>
										<?php if($child['sticker_category'] !='0'){?>
											<?php if($child['sticker_category'] =='new') { ?>
												<span class="cat-label cat-label-label1"><?php echo $child['sticker_category'];?></span>
											<?php } elseif($child['sticker_category'] =='sale') { ?>
												<span class="cat-label cat-label-label2"><?php echo $child['sticker_category'];?></span>
											<?php } else { ?>
												<span class="cat-label cat-label-label3"><?php echo $child['sticker_category'];?></span>
											<?php } ?>	
										<?php } ?>
									</a>
									<?php if(count($child['children'])){?>
									<ul class="list-unstyled nsmenu-ischild nsmenu-ischild-simple">
									 <?php foreach ($child['children'] as $subchild) { ?>
									<li><a href="<?php echo $subchild['href']; ?>">
										<?php echo $subchild['name']; ?>
											<?php if($subchild['sticker_category'] !='0'){?>
												<?php if($subchild['sticker_category'] =='new') { ?>
													<span class="cat-label cat-label-label1"><?php echo $subchild['sticker_category'];?></span>
												<?php } elseif($subchild['sticker_category'] =='sale') { ?>
													<span class="cat-label cat-label-label2"><?php echo $subchild['sticker_category'];?></span>
												<?php } else { ?>
													<span class="cat-label cat-label-label3"><?php echo $subchild['sticker_category'];?></span>
												<?php } ?>	
											<?php } ?>
									</a></li>				
									<?php } ?>
									</ul>
									<?php } ?>				
								</li>
								<?php } ?>
							</ul>
						  <?php } ?>
						</div>            
						</div>
						<?php } ?>	
						<?php } ?>
						<?php } ?>
						<!--END SIMPLE-->
						<?php if($item['type']=="category"){?>
						<?php if($item['subtype']=="full"){?>
						<?php if($item['additional_menu']=="additional"){ ?>
						  <div class="dropdown-menu nsmenu-type-category-full nsmenu-bigblock-additional">
							<div class="dropdown-inner">
							  <?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>							
								<?php if($item['add_html']){ ?>
								<div class="menu-add-html">									
									<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
								</div>
								<?php } ?>
								<ul class="list-unstyled nsmenu-haschild">
								<?php foreach ($children as $child) { ?>
								<li class="nsmenu-parent-block<?php if(count($child['children'])){?> nsmenu-issubchild<?php }?>">
								<a class="nsmenu-parent-title" href="<?php echo $child['href']; ?>">
									<?php echo $child['name']; ?>
										<?php if($child['sticker_category'] !='0'){?>
											<?php if($child['sticker_category'] =='new') { ?>
												<span class="cat-label cat-label-label1"><?php echo $child['sticker_category'];?></span>
											<?php } elseif($child['sticker_category'] =='sale') { ?>
												<span class="cat-label cat-label-label2"><?php echo $child['sticker_category'];?></span>
											<?php } else { ?>
												<span class="cat-label cat-label-label3"><?php echo $child['sticker_category'];?></span>
											<?php } ?>	
										<?php } ?>
								</a>
									<?php if(count($child['children'])){?>
									<ul class="list-unstyled nsmenu-ischild">
									 <?php foreach ($child['children'] as $subchild) { ?>
									<li><a href="<?php echo $subchild['href']; ?>">
										<?php echo $subchild['name']; ?>
											<?php if($subchild['sticker_category'] !='0'){?>
												<?php if($subchild['sticker_category'] =='new') { ?>
													<span class="cat-label cat-label-label1"><?php echo $subchild['sticker_category'];?></span>
												<?php } elseif($subchild['sticker_category'] =='sale') { ?>
													<span class="cat-label cat-label-label2"><?php echo $subchild['sticker_category'];?></span>
												<?php } else { ?>
													<span class="cat-label cat-label-label3"><?php echo $subchild['sticker_category'];?></span>
												<?php } ?>	
											<?php } ?>
									</a></li>				
									<?php }?>
									</ul>
									<?php }?>				
								</li>
								<?php } ?>
								</ul>
							  <?php } ?>
							</div>            
							</div>
							<?php }?>	
							<?php }?>
							<?php }?>
							<!--END FULL-->
							<?php if($item['type']=="category"){?>
							<?php if($item['subtype']=="full_image"){?>
							<?php if($item['additional_menu']=="additional"){ ?>
							  <div class="dropdown-menu nsmenu-type-category-full-image nsmenu-bigblock-additional">
								<div class="dropdown-inner">
								  <?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>
								
									<?php if($item['add_html']){?>
								  <div style="" class="menu-add-html">
									<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
									</div>
									<?php }?>
								  
									<ul class="list-unstyled nsmenu-haschild">
									<?php foreach ($children as $child) { ?>
									<li class="nsmenu-parent-block<?php if(count($child['children'])){?> nsmenu-issubchild<?php }?>">
									<a class="nsmenu-parent-img" href="<?php echo $child['href']; ?>"><img src="<?php echo $child['thumb']; ?>" alt="<?php echo $child['name']; ?>" title="<?php echo $child['name']; ?>"/></a>
									<a class="nsmenu-parent-title" href="<?php echo $child['href']; ?>">
									<?php echo $child['name']; ?>
										<?php if($child['sticker_category'] !='0'){?>
											<?php if($child['sticker_category'] =='new') { ?>
												<span class="cat-label cat-label-label1"><?php echo $child['sticker_category'];?></span>
											<?php } elseif($child['sticker_category'] =='sale') { ?>
												<span class="cat-label cat-label-label2"><?php echo $child['sticker_category'];?></span>
											<?php } else { ?>
												<span class="cat-label cat-label-label3"><?php echo $child['sticker_category'];?></span>
											<?php } ?>	
										<?php } ?>
									</a>
									
									<?php if(count($child['children'])){?>
									<ul class="list-unstyled nsmenu-ischild">
									 <?php foreach ($child['children'] as $subchild) { ?>
									<li><a href="<?php echo $subchild['href']; ?>">
										<?php echo $subchild['name']; ?>
											<?php if($subchild['sticker_category'] !='0'){?>
												<?php if($subchild['sticker_category'] =='new') { ?>
													<span class="cat-label cat-label-label1"><?php echo $subchild['sticker_category'];?></span>
												<?php } elseif($subchild['sticker_category'] =='sale') { ?>
													<span class="cat-label cat-label-label2"><?php echo $subchild['sticker_category'];?></span>
												<?php } else { ?>
													<span class="cat-label cat-label-label3"><?php echo $subchild['sticker_category'];?></span>
												<?php } ?>	
											<?php } ?>
									</a></li>				
									<?php }?>
									</ul>
									<?php }?>				
									</li>
									<?php } ?>
									</ul>
								  <?php } ?>
								</div>            
								</div>
								<?php }?>	
								<?php }?>
								<?php }?>
								<!--END FULL-IMAGE-->
								<?php if($item['type']=="html"){?>
								<?php if($item['additional_menu']=="additional"){ ?>
								  <div class="dropdown-menu nsmenu-type-html">
									<div class="dropdown-inner">
										<ul class="list-unstyled nsmenu-haschild">										
											<li class="nsmenu-parent-block">
												<div class="nsmenu-html-block">				
													<?php echo html_entity_decode($item['html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
												</div>
											</li>
										</ul>									
									</div>            
								   </div>	
								<?php } ?>
								<?php } ?>
								<!--END HTML-->
								<?php if($item['type']=="manufacturer"){?>
								<?php if($item['additional_menu']=="additional"){ ?>
									<div class="dropdown-menu nsmenu-type-manufacturer <?php if($item['add_html']){?>nsmenu-bigblock-additional<?php }?>">
										<div class="dropdown-inner">
											<?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>
												<?php if($item['add_html']){?>
													<div style="" class="menu-add-html">
														<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
													</div>
												<?php }?>									  
												<ul class="list-unstyled nsmenu-haschild <?php if($item['add_html']){?>nsmenu-blockwithimage<?php }?>">
												<?php foreach ($children as $child) { ?>
													<li class="nsmenu-parent-block">
														<a class="nsmenu-parent-img" href="<?php echo $child['href']; ?>"><img src="<?php echo $child['thumb']; ?>" alt="<?php echo $child['name']; ?>" title="<?php echo $child['name']; ?>" /></a>
														<a class="nsmenu-parent-title" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
													</li>
												<?php } ?>
												</ul>
											<?php } ?>
										</div>            
									</div>
								<?php }?>
								<?php }?>
								<!--END MANUFACTURES-->
								<?php if($item['type']=="information"){?>
								<?php if($item['additional_menu']=="additional"){ ?>								
									<div class="dropdown-menu nsmenu-type-information <?php if($item['add_html']){?>nsmenu-bigblock-additional<?php }?>">
										<div class="dropdown-inner">
											<?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>
												<?php if($item['add_html']){?>
													<div style="" class="menu-add-html">
														<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
													</div>
												<?php }?>									  
												<ul class="list-unstyled nsmenu-haschild <?php if($item['add_html']){?>nsmenu-blockwithimage<?php }?>">
													<?php foreach ($children as $child) { ?>
														<li class=""><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
													<?php } ?>
												</ul>
											<?php } ?>
										</div>            
									</div>
								<?php } ?>
								<?php } ?>
								<!--END INFORMATION-->
								<?php if($item['type']=="product"){?>
								<?php if($item['additional_menu']=="additional"){ ?>
									<div class="dropdown-menu nsmenu-type-product <?php if($item['add_html']){?>nsmenu-bigblock-additional<?php }?>">
										<div class="dropdown-inner">
											<?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>
												<?php if($item['add_html']){?>
													<div style="" class="menu-add-html">
													<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
													</div>
												<?php } ?>
												<ul class="list-unstyled nsmenu-haschild <?php if($item['add_html']){?>nsmenu-blockwithimage<?php }?>">
													<?php foreach ($children as $child) { ?>
														<li class="nsmenu-parent-block">
															<a class="nsmenu-parent-img" href="<?php echo $child['href']; ?>"><img src="<?php echo $child['thumb']; ?>" alt="<?php echo $child['name']; ?>" title="<?php echo $child['name']; ?>" /></a>
															<a class="nsmenu-parent-title" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
															<div class="price">
																		<?php if (!$child['special']) { ?>
																			<?php echo $child['price']; ?>
																		<?php } else { ?>
																			<span class="price-old"><?php echo $child['price']; ?></span> 
																			<span class="price-new"><?php echo $child['special']; ?></span>
																		<?php } ?>
																	</div>					
														</li>
													<?php } ?>
												</ul>
											<?php } ?>
										</div>            
									</div>
								<?php }?>
								<?php }?>
					</li>
				<?php } else {  ?>
					<?php if($item['additional_menu']=="additional"){ ?>
						<li><a <?php if($item['new_blank'] == 1) {echo 'target="_blank" data-target="link"';} else {echo 'class="dropdown-toggle dropdown-img" data-toggle="dropdown"';} ?> class="<?php if(!$item['thumb']){?>no-img-parent-link<?php } ?>" href="<?php echo $item['href']; ?>">
						<?php if($item['thumb']){?>
							<img class="nsmenu-thumb" src="<?php echo $item['thumb']?>"/>
						<?php } ?>
						<?php if($item['sticker_parent'] !='0'){?>
								<?php if($item['sticker_parent'] =='new') { ?>
									<span class="cat-label cat-label-label1"><?php echo $item['sticker_parent'];?></span>
								<?php } elseif($item['sticker_parent'] =='sale') { ?>
									<span class="cat-label cat-label-label2"><?php echo $item['sticker_parent'];?></span>
								<?php } else { ?>
									<span class="cat-label cat-label-label3"><?php echo $item['sticker_parent'];?></span>
								<?php } ?>	
							<?php } ?>
						<?php echo $item['name'][$lang_id]; ?></a></li>
					<?php } ?>
				<?php } ?>
			<?php } ?>
		  </ul>
		</div>		
	   </nav>   
<?php } ?>	   
	  </div>
		<div class="col-sm-12 col-md-3 col-md-pull-9">
			<?php if ($items) { ?>
			<nav id="menu" class="btn-group btn-block">
				<button type="button" class="btn btn-menu btn-block dropdown-toggle" data-toggle="dropdown">
					<i class="fa fa-bars"></i>
					<?php echo $text_category; ?>
				</button>
				<ul id="menu-list" class="dropdown-menu">
				<?php $m_item = 0;?>
					<?php foreach ($items as $item) { ?>
						<?php if ($item['children']) { ?>
							<li data-submenu-id="menu-amazon-<?php echo $m_item;?>" class="dropdown <?php if($item['additional_menu']=="additional"){ ?>hidden-md hidden-lg<?php } ?>">
							<span class="toggle-child">
								<i class="fa fa-plus plus"></i>
								<i class="fa fa-minus minus"></i>
							</span>
								<a  href="<?php echo $item['href']; ?>" <?php if($item['new_blank'] == 1) {echo 'target="_blank" data-target="link" class="parent-link"'; } else {echo 'class="parent-link dropdown-img"';} ?>>
									<?php if($item['thumb']){?>
										<img alt="<?php echo $item['name'][$lang_id]; ?>" class="nsmenu-thumb" src="<?php echo$item['thumb']?>"/>
									<?php } ?><i class="fa fa-angle-down arrow"></i>
										<?php if($item['sticker_parent'] !='0'){?>
											<?php if($item['sticker_parent'] =='new') { ?>
												<span class="cat-label cat-label-label1"><?php echo $item['sticker_parent'];?></span>
											<?php } elseif($item['sticker_parent'] =='sale') { ?>
												<span class="cat-label cat-label-label2"><?php echo $item['sticker_parent'];?></span>
											<?php } else { ?>
												<span class="cat-label cat-label-label3"><?php echo $item['sticker_parent'];?></span>
											<?php } ?>	
										<?php } ?>
									<?php echo $item['name'][$lang_id]; ?>
								</a>
							
								<!--SIMPLE CATEGORY-->
								<?php if($item['type']=="category"){ ?>
								<?php if($item['subtype']=="simple"){ ?>
								
								  <div id="menu-amazon-<?php echo $m_item;?>" class="ns-dd dropdown-menu-simple nsmenu-type-category-simple">
									<div class="dropdown-inner">
									  <?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>  
										<ul class="list-unstyled nsmenu-haschild">
											<?php foreach ($children as $child) { ?>
											<li class="<?php if(count($child['children'])){?> nsmenu-issubchild<?php } ?>">
												<a href="<?php echo $child['href']; ?>"><?php if(count($child['children'])){?><i class="fa fa-angle-down arrow"></i><?php }?>
												<?php echo $child['name']; ?>
												<?php if($child['sticker_category'] !='0'){?>
													<?php if($child['sticker_category'] =='new') { ?>
														<span class="cat-label cat-label-label1"><?php echo $child['sticker_category'];?></span>
													<?php } elseif($child['sticker_category'] =='sale') { ?>
														<span class="cat-label cat-label-label2"><?php echo $child['sticker_category'];?></span>
													<?php } else { ?>
														<span class="cat-label cat-label-label3"><?php echo $child['sticker_category'];?></span>
													<?php } ?>	
												<?php } ?>
												</a>
												<?php if(count($child['children'])){?>
												<ul class="list-unstyled nsmenu-ischild nsmenu-ischild-simple">
												 <?php foreach ($child['children'] as $subchild) { ?>
												<li class="<?php if(count($subchild['child_4level_data'])){?> ischild_4level_simple<?php } ?>">
												<a href="<?php echo $subchild['href']; ?>"><?php if(count($subchild['child_4level_data'])){?><i class="fa fa-angle-down arrow"></i><?php }?>
													<?php echo $subchild['name']; ?>
												<?php if($subchild['sticker_category'] !='0'){?>
													<?php if($subchild['sticker_category'] =='new') { ?>
														<span class="cat-label cat-label-label1"><?php echo $subchild['sticker_category'];?></span>
													<?php } elseif($subchild['sticker_category'] =='sale') { ?>
														<span class="cat-label cat-label-label2"><?php echo $subchild['sticker_category'];?></span>
													<?php } else { ?>
														<span class="cat-label cat-label-label3"><?php echo $subchild['sticker_category'];?></span>
													<?php } ?>	
												<?php } ?>
												</a>
												<?php if(count($subchild['child_4level_data'])){ ?>
													<ul class="list-unstyled child_4level_simple">
														<?php foreach ($subchild['child_4level_data'] as $child_4level_data) { ?>
															<li><a href="<?php echo $child_4level_data['href']; ?>"><?php echo $child_4level_data['name']; ?></a></li>
														<?php } ?>
													</ul>
												<?php } ?>
												</li>				
												<?php } ?>
												</ul>
												<?php } ?>				
											</li>
											<?php } ?>
										</ul>
									  <?php } ?>
									</div>            
									</div>
									
									<?php } ?>	
									<?php } ?>
									<!--END SIMPLE CATEGORY-->
									
									<!-- FULL CATEGORY-->
									<?php if($item['type']=="category"){?>
									<?php if($item['subtype']=="full"){?>
									
									  <div id="menu-amazon-<?php echo $m_item;?>" class="ns-dd dropdown-menu-full nsmenu-type-category-full box-col-3">
										<div class="dropdown-inner">
										  <?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>							
											<?php if($item['add_html']){ ?>
											<div style="" class="menu-add-html">									
												<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
											</div>
											<?php } ?>
											<ul class="list-unstyled nsmenu-haschild">
											<?php foreach ($children as $child) { ?>
											<li class="nsmenu-parent-block<?php if(count($child['children'])){?> nsmenu-issubchild<?php }?>">
											<a class="nsmenu-parent-title" href="<?php echo $child['href']; ?>">
											<?php echo $child['name']; ?>
												<?php if($child['sticker_category'] !='0'){?>
													<?php if($child['sticker_category'] =='new') { ?>
														<span class="cat-label cat-label-label1"><?php echo $child['sticker_category'];?></span>
													<?php } elseif($child['sticker_category'] =='sale') { ?>
														<span class="cat-label cat-label-label2"><?php echo $child['sticker_category'];?></span>
													<?php } else { ?>
														<span class="cat-label cat-label-label3"><?php echo $child['sticker_category'];?></span>
													<?php } ?>	
												<?php } ?>
											</a>
												<?php if(count($child['children'])){?>
												<ul class="list-unstyled nsmenu-ischild">
												
												 <?php foreach ($child['children'] as $subchild) { ?>						
												<li><a href="<?php echo $subchild['href']; ?>"><i class="fa fa-level-up fa-rotate-90"></i> 
												<?php echo $subchild['name']; ?>
												<?php if($subchild['sticker_category'] !='0'){?>
													<?php if($subchild['sticker_category'] =='new') { ?>
														<span class="cat-label cat-label-label1"><?php echo $subchild['sticker_category'];?></span>
													<?php } elseif($subchild['sticker_category'] =='sale') { ?>
														<span class="cat-label cat-label-label2"><?php echo $subchild['sticker_category'];?></span>
													<?php } else { ?>
														<span class="cat-label cat-label-label3"><?php echo $subchild['sticker_category'];?></span>
													<?php } ?>	
												<?php } ?>	
												</a></li>				
												<?php }?>
												</ul>
												<?php }?>				
											</li>
											<?php } ?>
											</ul>
										  <?php } ?>
										</div>            
										</div>
										
										<?php }?>
										<?php }?>
										<!-- END FULL CATEGORY -->
										<!-- FULL-IMAGE CATEGORY -->
										<?php if($item['type']=="category"){?>
										<?php if($item['subtype']=="full_image"){?>
										
										  <div id="menu-amazon-<?php echo $m_item;?>" class="ns-dd dropdown-menu-full-image nsmenu-type-category-full-image box-col-3">
											<div class="dropdown-inner">
											  <?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>
											
												<?php if($item['add_html']){?>
											  <div class="menu-add-html">
												<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
												</div>
												<?php }?>
											  
												<ul class="list-unstyled nsmenu-haschild">
												<?php foreach ($children as $child) { ?>
												<li class="nsmenu-parent-block<?php if(count($child['children'])){?> nsmenu-issubchild<?php }?>">
												<a class="nsmenu-parent-img" href="<?php echo $child['href']; ?>"><img src="<?php echo $child['thumb']; ?>" alt="<?php echo $child['name']; ?>" title="<?php echo $child['name']; ?>"/></a>
												<a class="nsmenu-parent-title" href="<?php echo $child['href']; ?>">
												<?php echo $child['name']; ?>
												<?php if($child['sticker_category'] !='0'){?>
													<?php if($child['sticker_category'] =='new') { ?>
														<span class="cat-label cat-label-label1"><?php echo $child['sticker_category'];?></span>
													<?php } elseif($child['sticker_category'] =='sale') { ?>
														<span class="cat-label cat-label-label2"><?php echo $child['sticker_category'];?></span>
													<?php } else { ?>
														<span class="cat-label cat-label-label3"><?php echo $child['sticker_category'];?></span>
													<?php } ?>	
												<?php } ?>
												</a>
												
												<?php if(count($child['children'])){?>
												<ul class="list-unstyled nsmenu-ischild">
												 <?php foreach ($child['children'] as $subchild) { ?>
												<li><a href="<?php echo $subchild['href']; ?>">
												<i class="fa fa-level-up fa-rotate-90"></i> 
												<?php echo $subchild['name']; ?>
												<?php if($subchild['sticker_category'] !='0'){?>
													<?php if($subchild['sticker_category'] =='new') { ?>
														<span class="cat-label cat-label-label1"><?php echo $subchild['sticker_category'];?></span>
													<?php } elseif($subchild['sticker_category'] =='sale') { ?>
														<span class="cat-label cat-label-label2"><?php echo $subchild['sticker_category'];?></span>
													<?php } else { ?>
														<span class="cat-label cat-label-label3"><?php echo $subchild['sticker_category'];?></span>
													<?php } ?>	
												<?php } ?>	
												</a></li>				
												<?php }?>
												</ul>
												<?php }?>				
												</li>
												<?php } ?>
												</ul>
											  <?php } ?>
											</div>            
											</div>
											
											<?php }?>
											<?php }?>
										<!-- END FULL-IMAGE CATEGORY -->
										
										<!-- HTML-BLOCK -->
										<?php if($item['type']=="html"){?>
										
										  <div id="menu-amazon-<?php echo $m_item;?>" class="ns-dd dropdown-menu-html-block nsmenu-type-html box-col-2">
											<div class="dropdown-inner">
												<ul class="list-unstyled nsmenu-haschild">										
													<li class="nsmenu-parent-block">
														<div class="nsmenu-html-block">				
															<?php echo html_entity_decode($item['html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
														</div>
													</li>
												</ul>									
											</div>            
										   </div>	
										
										<?php } ?>
										<!-- END HTML-BLOCK -->
										
										<!-- MANUFACTURER-BLOCK -->
										<?php if($item['type']=="manufacturer"){?>
										
											<div id="menu-amazon-<?php echo $m_item;?>" class="ns-dd dropdown-menu-manufacturer nsmenu-type-manufacturer <?php if($item['add_html']){?>box-col-3<?php } else{ ?> box-col-2 <?php } ?>">
												<div class="dropdown-inner">
													<?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>
														<?php if($item['add_html']){?>
															<div class="menu-add-html">
																<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
															</div>
														<?php }?>									  
														<ul class="list-unstyled nsmenu-haschild <?php if($item['add_html']){?>nsmenu-blockwithimage<?php }?>">
														<?php foreach ($children as $child) { ?>
															<li class="nsmenu-parent-block">
																<a class="nsmenu-parent-img" href="<?php echo $child['href']; ?>"><img src="<?php echo $child['thumb']; ?>" alt="<?php echo $child['name']; ?>" title="<?php echo $child['name']; ?>" /></a>
																<a class="nsmenu-parent-title" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
															</li>
														<?php } ?>
														</ul>
													<?php } ?>
												</div>            
											</div>
									
										<?php }?>
										<!-- END MANUFACTURER-BLOCK -->
										
										<!-- INFORMATION-BLOCK -->
										<?php if($item['type']=="information"){?>
																		
											<div id="menu-amazon-<?php echo $m_item;?>" class="ns-dd dropdown-menu-information nsmenu-type-information <?php if($item['add_html']){?>box-col-3<?php } else{ ?> box-col-2 <?php } ?>">
												<div class="dropdown-inner">
													<?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>
														<?php if($item['add_html']){?>
															<div class="menu-add-html">
																<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
															</div>
														<?php }?>									  
														<ul class="list-unstyled nsmenu-haschild <?php if($item['add_html']){?>nsmenu-blockwithimage<?php }?>">
															<?php foreach ($children as $child) { ?>
																<li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
															<?php } ?>
														</ul>
													<?php } ?>
												</div>            
											</div>
										
										<?php } ?>
										<!-- END INFORMATION-BLOCK -->
										
										<!-- PRODUCT-BLOCK -->
										<?php if($item['type']=="product"){ ?>
										
											<div id="menu-amazon-<?php echo $m_item;?>" class="ns-dd dropdown-menu-product nsmenu-type-product box-col-2">
												<div class="dropdown-inner">
													<?php foreach (array_chunk($item['children'], ceil(count($item['children']) / 1)) as $children) { ?>
														<?php if($item['add_html']){?>
															<div style="" class="menu-add-html">
															<?php echo html_entity_decode($item['add_html'][$lang_id], ENT_QUOTES, 'UTF-8'); ?>
															</div>
														<?php } ?>
														<ul class="list-unstyled nsmenu-haschild <?php if($item['add_html']){?>nsmenu-blockwithimage<?php }?>">
															<?php foreach ($children as $child) { ?>
																<li class="nsmenu-parent-block">
																	<a class="nsmenu-parent-img" href="<?php echo $child['href']; ?>"><img src="<?php echo $child['thumb']; ?>" alt="<?php echo $child['name']; ?>" title="<?php echo $child['name']; ?>" /></a>
																	<a class="nsmenu-parent-title" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
																	<div class="price">
																		<?php if (!$child['special']) { ?>
																			<?php echo $child['price']; ?>
																		<?php } else { ?>
																			<span class="price-old"><?php echo $child['price']; ?></span> 
																			<span class="price-new"><?php echo $child['special']; ?></span>
																		<?php } ?>
																	</div>				
																</li>
															<?php } ?>
														</ul>
													<?php } ?>
												</div>            
											</div>
										
										<?php } ?>
										<!-- END PRODUCT-BLOCK -->
										
							</li>
						<?php } else {  ?>
								<li <?php if($item['additional_menu']=="additional"){ ?>class="hidden-md hidden-lg"<?php } ?>>						
									<a <?php if($item['new_blank'] == 1) {echo 'class="dropdown-toggle" target="_blank" data-target="link"';} else {echo 'class="dropdown-img"';} ?> href="<?php echo $item['href']; ?>">
										<?php if($item['thumb']){?>
											<img class="nsmenu-thumb" src="<?php echo$item['thumb']?>"/>
										<?php } ?>
										<?php if($item['sticker_parent'] !='0'){?>
											<?php if($item['sticker_parent'] =='new') { ?>
												<span class="cat-label cat-label-label1"><?php echo $item['sticker_parent'];?></span>
											<?php } elseif($item['sticker_parent'] =='sale') { ?>
												<span class="cat-label cat-label-label2"><?php echo $item['sticker_parent'];?></span>
											<?php } else { ?>
												<span class="cat-label cat-label-label3"><?php echo $item['sticker_parent'];?></span>
											<?php } ?>	
										<?php } ?>
										<?php echo $item['name'][$lang_id]; ?>
									</a>
								</li>							
						<?php } ?>
					<?php $m_item++;?>
					<?php } ?>
				</ul>
			</nav>
			<div id="maskMenuHC"></div>	
			<?php } ?>
		</div>	
    </div>
  </div>
<?php } ?>
</header>

