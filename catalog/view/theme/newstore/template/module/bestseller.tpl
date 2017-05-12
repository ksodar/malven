<div itemtype="http://schema.org/ItemList" itemscope>
<?php $gen_carousel_bestseller = rand(10000, 50000);?>
<div class="container-module">
<div class="title-module"><span><?php echo $heading_title; ?></span></div>
<div class="product-slider">
<div class="container-modules bestseller carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?> owl-carousel">
  <?php foreach ($products as $product) { ?>
   <div class="item">
    <div itemtype="http://schema.org/Product" itemprop="itemListElement" itemscope class="product-thumb transition">
		<?php if($config_on_off_bestseller_quickview =='1'){?>
			<div class="quickview"><button class="btn btn-quickview" onclick="quickview_open(<?php echo $product['product_id']?>);"><i class="fa fa-external-link fa-fw"></i><?php echo $config_quickview_btn_name[$lang_id]['config_quickview_btn_name']; ?></button></div>
		<?php } ?>
		<div class="image">	
							<div class="stickers-ns">
								<?php if ($product['special']) { ?>
									<div class="sticker-ns procent-skidka"><i class="fa fa-tag"></i> <?php echo round ($product['skidka']);?> %</div>
								<?php } ?>
								<?php if (($on_off_sticker_special == '1') && $product['special']) { ?>
									<div class="sticker-ns special">
										<i class="fa <?php echo $config_change_icon_sticker_special;?> fa-fw"></i>					
										<span><?php echo $text_sticker_special[$lang_id]['config_change_text_sticker_special']; ?></span>	
									</div>
								<?php } ?>
								<?php if(($on_off_sticker_topbestseller == '1') && ($product['top_bestsellers'] >= $config_limit_order_product_topbestseller)) { ?>
									<div class="sticker-ns bestseller">
										<i class="fa <?php echo $config_change_icon_sticker_topbestseller;?> fa-fw"></i>
										<span><?php echo $text_sticker_topbestseller[$lang_id]['config_change_text_sticker_topbestseller']; ?></span>	
									</div>
								<?php } ?>
								<?php if(($on_off_sticker_popular == '1') && ($product['viewed']>=$config_min_quantity_popular)) { ?>
									<div class="sticker-ns popular">
										<i class="fa <?php echo $config_change_icon_sticker_popular;?> fa-fw"></i>
										<span><?php echo $text_sticker_popular[$lang_id]['config_change_text_sticker_popular']; ?></span>								
									</div>
								<?php } ?>
								<?php if(($on_off_sticker_newproduct == '1') && (isset($product['date_available'])&&(round((strtotime(date("Y-m-d"))-strtotime($product['date_available']))/86400))<=$config_limit_day_newproduct)) { ?>
									<div class="sticker-ns newproduct">
										<i class="fa <?php echo $config_change_icon_sticker_newproduct;?>"></i>
										<?php echo $text_sticker_newproduct[$lang_id]['config_change_text_sticker_newproduct']; ?>	
									</div>
								<?php } ?>
									
							</div>	
		<?php if($ns_on_off_bestseller_slider_additional_image =='1') { ?>		
			<div class="image-carousel">			
				<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?>itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>		
			<?php foreach ($product['additional_img'] as $img) { ?>			
				<a class="additional-image hidden" href="<?php echo $product['href']; ?>"><img src="<?php echo $img;?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>			
			<?php } ?>
			</div>
		<?php } elseif($ns_on_off_bestseller_slider_additional_image =='2') { ?>
			<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" <?php if($product['additional_image_hover']) { ?>data-additional-hover="<?php echo $product['additional_image_hover'];?>"<?php } ?> src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>	
		<?php } else { ?>	
			<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
		<?php } ?>
		<?php if($show_special_timer_module =='1' && $product['special']){ ?>
			<div class="action-timer">
				<div id="countdown-bestseller-<?php echo $gen_carousel_bestseller;?>-<?php echo $product['product_id'];?>"></div>		
			</div>
			<script type="text/javascript">
			$(function(){
				var note = $('#note'),
				ts = new Date('<?php echo $product['str_timer_1'];?>', '<?php echo $product['str_timer_2'];?>', '<?php echo $product['str_timer_3']?>'),
				newYear = true;
				if((new Date()) > ts){
					ts = (new Date()).getTime() + 10*24*60*60*1000;
					newYear = false;
				}
				$('#countdown-bestseller-<?php echo $gen_carousel_bestseller;?>-<?php echo $product['product_id'];?>').countdown({
					timestamp	: ts,
				callback	: function(days, hours, minutes, seconds){
								
					var message = "";
							
					message += days;
					message += hours;
					message += minutes;
					message += seconds;
					
					note.html(message);
					}
				});
			});

			</script>
		<?php } ?>
	  </div>
      
	  <div class="caption">
		<div class="actions-quick-order">
		  <div class="quick-order">
		   <?php if($ns_on_off_module_quick_order =='1') { ?>
			<?php if($ns_on_off_bestseller_fastorder !='0') { ?>
			<button class="btn btn-fastorder <?php if (($product['product_quantity'] <= 0) and $disable_fastorder_button){ ?>hidden-quick-order<?php } ?>" type="button" data-toggle="tooltip" onclick="fastorder_open(<?php echo $product['product_id']?>);" title="<?php echo $config_text_open_form_send_order[$lang_id]['config_text_open_form_send_order']; ?>" <?php if (($product['product_quantity'] <= 0) and $disable_fastorder_button){ ?>disabled<?php } ?>>
				<?php if($icon_open_form_send_order !=''){ ?>
					<i style="color:#<?php echo $color_button_open_form_send_order ;?>;" class="<?php echo $icon_open_form_send_order;?> fa-fw"></i>
				<?php } else { ?>
					<i style="color:#<?php echo $color_button_open_form_send_order ;?>;" class="fa fa-shopping-bag fa-fw"></i>
				<?php } ?>
				<?php echo $config_text_open_form_send_order[$lang_id]['config_text_open_form_send_order']; ?>		
			</button>			
			<?php } ?>
			<?php } ?>
		  </div>
	  </div>
        <div itemprop="name" class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
		<?php if($ns_on_off_bestseller_model_product !='0') { ?>
			<div class="product-model"><?php echo $product['model']?></div>
		<?php } ?>
		<?php if($ns_on_off_bestseller_description !='0') { ?>
        <div itemprop="description" class="product-description"><?php echo $product['description']; ?></div>
		<?php } ?>
		<?php if ($show_options) { ?>
			<div id="option_bestseller_<?php echo $product['product_id']; ?>" class="option bestseller-opt">
				<?php foreach ($product['options'] as $key => $option) { ?>
					<?php if ($option['type'] == 'select'){ ?>
						<div class="form-group">
							<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
								<?php if ($option['required']) { ?><i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i><?php } ?>
								<?php echo $option['name']; ?>
							</label>
							<div id="input-option-bestseller<?php echo $option['product_option_id']; ?>">
								<select onchange="recalc_quantity(<?php echo $product['product_id'];?>,<?php echo $product['minimum']; ?>,<?php echo $product['price_no_format'];?>,'<?php echo $product['special_no_format'];?>','.carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>','bestseller');" name="option[<?php echo $option['product_option_id']; ?>]" id="input-value-<?php echo $option['product_option_id']; ?>_bestseller" class="form-control">
									<option value=""><?php echo $text_select; ?></option>
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
									<option data-option-prefix="<?php echo $option_value['price_prefix']; ?>" data-option-price="<?php echo $option_value['price_value']; ?>" value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
									<?php if ($option_value['price']) { ?>
									(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
									<?php } ?>
									</option>
									<?php } ?>
								</select>
						  </div>
						</div>
					<?php } ?>
			<?php if ($option['type'] == 'radio') { ?>
            <div class="form-group">
				<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
					<?php if ($option['required']) { ?><i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i><?php } ?>
					<?php echo $option['name']; ?>
				</label>
              <div id="input-option-bestseller<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio-checbox-options">
					<input data-option-prefix="<?php echo $option_value['price_prefix']; ?>" data-option-price="<?php echo $option_value['price_value']; ?>" onchange="recalc_quantity(<?php echo $product['product_id'];?>,<?php echo $product['minimum']; ?>,<?php echo $product['price_no_format'];?>,'<?php echo $product['special_no_format'];?>','.carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>','bestseller');" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_bestseller" />
					<label for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_bestseller">
						<span class="option-name"><?php echo $option_value['name']; ?></span>
						<?php if ($option_value['price']) { ?>
						<span class="option-price"><?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?></span>
						<?php } ?>
					</label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
			
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
					<?php if ($option['required']) { ?><i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i><?php } ?>
					<?php echo $option['name']; ?>
				</label>
              <div id="input-option-bestseller<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio-checbox-options">
                  <input data-option-prefix="<?php echo $option_value['price_prefix']; ?>" data-option-price="<?php echo $option_value['price_value']; ?>" onchange="recalc_quantity(<?php echo $product['product_id'];?>,<?php echo $product['minimum']; ?>,<?php echo $product['price_no_format'];?>,'<?php echo $product['special_no_format'];?>','.carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>','bestseller');" type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_bestseller" />
					<label for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_bestseller">
                    <span class="option-name"><?php echo $option_value['name']; ?></span>
						<?php if ($option_value['price']) { ?>
						<span class="option-price"><?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?></span>
						<?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
			
            <?php if ($option['type'] == 'image') { ?>
				<?php if ($option['status_color_type'] =='1') { ?>
				<div class="form-group">
				 <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
							<?php if ($option['required']) { ?>
								<i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i>
							<?php } ?>
						<?php echo $option['name']; ?>
					</label>
				  <div id="input-option-bestseller<?php echo $option['product_option_id']; ?>">
					<?php foreach ($option['product_option_value'] as $option_value) { ?>
					<div class="image-radio">
					  <label>
						<input data-option-prefix="<?php echo $option_value['price_prefix']; ?>" data-option-price="<?php echo $option_value['price_value']; ?>" onchange="recalc_quantity(<?php echo $product['product_id'];?>,<?php echo $product['minimum']; ?>,<?php echo $product['price_no_format'];?>,'<?php echo $product['special_no_format'];?>','.carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>','bestseller');" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_bestseller" />
						<span for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_bestseller" class="color-option" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" style="background-color:<?php echo $option_value['color']?>"></span>						
					  </label>
					</div>
					<?php } ?>
				  </div>
				</div>
				<?php } else { ?>
				<div class="form-group">
				 <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
							<?php if ($option['required']) { ?>
								<i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i>
							<?php } ?>
						<?php echo $option['name']; ?>
					</label>
				  <div id="input-option-bestseller<?php echo $option['product_option_id']; ?>">
					<?php foreach ($option['product_option_value'] as $option_value) { ?>
					<div class="image-radio">
					  <label>
						<input data-option-prefix="<?php echo $option_value['price_prefix']; ?>" data-option-price="<?php echo $option_value['price_value']; ?>" onchange="recalc_quantity(<?php echo $product['product_id'];?>,<?php echo $product['minimum']; ?>,<?php echo $product['price_no_format'];?>,'<?php echo $product['special_no_format'];?>','.carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>','bestseller');" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_bestseller" />
						<img for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_bestseller" src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /> 						
					  </label>
					</div>
					<?php } ?>
				  </div>
				</div>
				<?php } ?>
            <?php } ?>
		<?php } ?>
			</div>
		<?php } ?>
		<?php if($ns_on_off_bestseller_rating !='0') { ?>
		<div class="rating">
			<?php if ($product['rating']) { ?>
				<span itemscope itemprop="aggregateRating" itemtype="http://schema.org/AggregateRating">
					<meta itemprop="reviewCount" content="<?php echo preg_replace("/[^0-9]/", "", $product['reviews']); ?>">
					<meta itemprop="ratingValue" content="<?php echo $product['rating']; ?>">
					<meta itemprop="bestRating" content="5"><meta itemprop="worstRating" content="1">
				</span>
			<?php } ?>
			<span class="rating-box">
				<?php for ($i = 1; $i <= 5; $i++) { ?>
					<?php if ($product['rating'] < $i) { ?>
						<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
					<?php } else { ?>
						<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
					<?php } ?>
				<?php } ?>
				<?php if($ns_on_off_bestseller_quantity_reviews !='0') { ?> 
					<span class="quantity-reviews"><a data-placement="right"  data-toggle="tooltip" title="<?php echo $text_reviews_title;?>" href="<?php echo $product['href']; ?>/#tab-review"><?php echo $product['reviews']; ?></a></span>
				<?php } ?>
			</span>
		</div>
		 <?php } ?>
        <?php if ($product['price']) { ?>
        <div class="price" itemscope itemprop="offers" itemtype="http://schema.org/Offer">
		<meta itemprop="price" content="<?php echo rtrim(preg_replace("/[^0-9\.]/", "", ($product['special'] ? $product['special'] : $product['price'])), '.'); ?>">
		<meta itemprop="priceCurrency" content="<?php echo $product['currency'] ?>">
		<link itemprop="availability" href="http://schema.org/<?php echo ($product['availability'] ? "InStock" : "OutOfStock") ?>" />
           <?php if (!$product['special']) { ?>
			  <span class="price_no_format_<?php echo $product['product_id'];?>"><?php echo $product['price']; ?></span>
			  <?php } else { ?>
			  <span class="price-old"><span class="price_no_format_<?php echo $product['product_id'];?>"><?php echo $product['price']; ?></span></span> <span class="price-new"><span class="special_no_format_<?php echo $product['product_id'];?>"><?php echo $product['special']; ?></span></span>
			<?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
		<?php if(isset($config_additional_settings_newstore['quantity_btn_module']) && ($config_additional_settings_newstore['quantity_btn_module'] =='1')){?>
		<div class="quantity_plus_minus">
			<div class="quantity_cont">
				<div class="input-group">
					<span class="input-group-btn">
						<button class="btn btn-quantity-minus" onclick="btnminus_cat_price_bestseller<?php echo $product['product_id'];?>('<?php echo $product['minimum']; ?>');" type="button">-</button>
					</span>
						<input id="input_quantity_mod_bestseller<?php echo $product['product_id'];?>" class="form-control input-number-quantity<?php echo $product['product_id'];?>" name="quantity" onkeyup="validate_quantity(this,'<?php echo $product['minimum']; ?>')" oninput="recalc_quantity(<?php echo $product['product_id'];?>,<?php echo $product['minimum']; ?>, <?php echo $product['price_no_format'];?>,'<?php echo $product['special_no_format'];?>','.carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>','bestseller');" size="2" value="<?php echo $product['minimum']; ?>">
					<span class="input-group-btn">
						<button class="btn btn-quantity-plus" onclick="btnplus_cat_price_bestseller<?php echo $product['product_id'];?>();" type="button" >+</button>
					</span>
				</div>	
			</div>
		</div>
		<script type="text/javascript">
				function btnminus_cat_price_bestseller<?php echo $product['product_id'];?>(a){
					document.getElementById("input_quantity_mod_bestseller<?php echo $product['product_id'];?>").value>a?document.getElementById("input_quantity_mod_bestseller<?php echo $product['product_id'];?>").value--:document.getElementById("input_quantity_mod_bestseller<?php echo $product['product_id'];?>").value=a;										
					recalc_quantity(<?php echo $product['product_id'];?>,<?php echo $product['minimum']; ?>,<?php echo $product['price_no_format'];?>,'<?php echo $product['special_no_format'];?>','.carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>','bestseller');						
				}
				function btnplus_cat_price_bestseller<?php echo $product['product_id'];?>(){
					document.getElementById("input_quantity_mod_bestseller<?php echo $product['product_id'];?>").value++;
					recalc_quantity(<?php echo $product['product_id'];?>,<?php echo $product['minimum']; ?>,<?php echo $product['price_no_format'];?>,'<?php echo $product['special_no_format'];?>','.carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>','bestseller');					
				};																				
		</script>
		<?php } ?>
		<div class="actions">
			<?php if($ns_on_off_bestseller_wishlist !='0') { ?>
				<div class="wishlist"><button class="btn btn-wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button></div>
			<?php } ?>
			<?php if (($product['product_quantity'] <= 0) and $disable_cart_button){ ?>
				<div class="cart"><button class="btn btn-general" type="button" disabled><?php if($change_text_cart_button_out_of_stock ==1) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
			<?php } else { ?>
				<div class="cart"><button class="btn btn-general" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>','bestseller', get_cart_quantity('<?php echo $product['product_id']; ?>','.carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>'));"><?php if($change_text_cart_button_out_of_stock ==1 && $product['product_quantity'] <= 0) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
			<?php } ?>		
			<?php if($ns_on_off_bestseller_compare !='0') { ?>
				<div class="compare"><button class="btn btn-compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button></div>
			<?php } ?>
		</div>
      </div>
      
      
    </div>
  </div>
  <?php } ?>
  </div>
  </div>
<script type="text/javascript">
$('.carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>').each(function() {
if ($(".carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>").parents("#column-left, #column-right, .position-no-owl").length) {
     var items = $(this).children('div.item');
	for (var i = 0; i < items.length; i+=3) {
      items.slice(i, i+3).wrapAll('<div class="row_items"></div>');
    }
}	
});
$('.carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>').owlCarousel({
	responsiveBaseWidth: ".carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>",
	itemsCustom: [[0, 1], [500, 2], [750, 3], [1000,4]],
	slideSpeed: 200,
	paginationSpeed: 300,
	navigation: true,
	stopOnHover: true,		
	mouseDrag: false,
	pagination: false,
	autoPlay: false,
	navigationText: ['<div class="btn btn-carousel-module next-prod"><i class="fa fa-angle-left arrow"></i></div>', '<div class="btn btn-carousel-module prev-prod"><i class="fa fa-angle-right arrow"></i></div>'],
});	
if (!$(".carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?>").parents("#column-left, #column-right, .position-no-owl").length) {
<?php if($ns_on_off_bestseller_slider_additional_image =='1') { ?>	
$(window).load(function() {
$(".carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?> .additional-image").removeClass('hidden');	
	$(".carousel_numb_bestseller<?php echo $gen_carousel_bestseller;?> .image-carousel").owlCarousel({
				navigation : true, 
				slideSpeed : 300,
				pagination:false,
				navigationText: ['<div class="btn btn-carousel-image-additional next-prod"><i class="fa fa-angle-left arrow"></i></div>', '<div class="btn btn-carousel-image-additional prev-prod"><i class="fa fa-angle-right arrow"></i></div>'],		
				paginationSpeed : 400,
				singleItem:true,
				transitionStyle: '<?php echo $ns_select_bestseller_additional_animate_method;?>'
	});
});
<?php } ?>
}

</script>
</div>
</div>