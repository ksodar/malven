<div itemtype="http://schema.org/ItemList" itemscope>
<div class="container-module">
<div class="all_tabs text-center">
<ul class="nav nav-tabs-all" id="tabs-<?php echo $module; ?>">
    <?php if($latest_products){ ?>
		<li class="active"><a data-toggle="tab" title="<?php echo $tab_latest; ?>" href="#tab-latest-<?php echo $module; ?>"><?php echo $tab_latest; ?></a></li>
	<?php } ?>
	 <?php if($featured_products){ ?>
		<li><a data-toggle="tab" title="<?php echo $tab_featured; ?>" href="#tab-featured-<?php echo $module; ?>"><?php echo $tab_featured; ?></a></li>
	<?php } ?>
	<?php if($bestseller_products){ ?>
		<li><a data-toggle="tab" title="<?php echo $tab_bestseller; ?>" href="#tab-bestseller-<?php echo $module; ?>"><?php echo $tab_bestseller; ?></a></li>
	<?php } ?>
	<?php if($special_products){ ?>
		<li><a data-toggle="tab" title="<?php echo $tab_special; ?>" href="#tab-special-<?php echo $module; ?>"><?php echo $tab_special; ?></a></li>
	<?php } ?>
    <?php if($popular_products){ ?>
		<li><a data-toggle="tab" title="<?php echo $tab_popular; ?>" href="#tab-popular-<?php echo $module; ?>"><?php echo $tab_popular; ?></a></li>
	<?php } ?>
</ul>
</div>
<div class="tab-content">
	<?php if($latest_products){ ?>
		<div id="tab-latest-<?php echo $module; ?>" class="tab-pane fade in active">
			<div class="product-slider">
				<div class="container-modules tab-latest-<?php echo $module; ?> owl-carousel">
					<?php foreach ($latest_products as $product) { ?>
						<div class="item">
							<div itemtype="http://schema.org/Product" itemprop="itemListElement" itemscope class="product-thumb transition">
							<?php if($config_on_off_latest_quickview =='1'){?>
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
							<?php if($ns_on_off_tab_latest_slider_additional_image =='1') { ?>		
							<div class="image-carousel">			
									<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>		
								<?php foreach ($product['additional_img'] as $img) { ?>			
									<a  class="additional-image" href="<?php echo $product['href']; ?>"><img  src="<?php echo $img;?>" alt="" title="" class="img-responsive" /></a>			
								<?php } ?>
							</div>
							<?php } elseif($ns_on_off_tab_latest_slider_additional_image =='2') { ?>
								<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" <?php if($product['additional_image_hover']) { ?>data-additional-hover="<?php echo $product['additional_image_hover'];?>"<?php } ?> src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>		
							<?php } else { ?>	
								<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>	
							<?php } ?>	
							<?php if($show_special_timer_module =='1' && $product['special']){ ?>
								<div class="action-timer">
									<div id="countdown-tab-latest-<?php echo $module; ?>-<?php echo $product['product_id'];?>"></div>		
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
									$('#countdown-tab-latest-<?php echo $module; ?>-<?php echo $product['product_id'];?>').countdown({
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
							 
						<div class="caption-tabs">
							<div class="actions-quick-order">
								<div class="quick-order">
								<?php if($ns_on_off_module_quick_order =='1') { ?>
								<?php if($ns_on_off_tab_latest_fastorder !='0') { ?>
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
							<?php if($ns_on_off_tab_latest_model_product !='0') { ?>
							<div class="product-model"><?php echo $product['model']?></div>
							<?php } ?>
							<?php if($ns_on_off_tab_latest_description !='0') { ?>
							<div itemprop="description" class="product-description"><?php echo $product['description']; ?></div>
							<?php } ?>
							<?php if ($show_options) { ?>
								<div id="option_tablatest_<?php echo $product['product_id']; ?>" class="option tablatest-opt">
									<?php foreach ($product['options'] as $key => $option) { ?>
									
								<?php if ($option['type'] == 'select' || $option['type'] == 'radio') { ?>
								<div class="form-group">
									<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
										<?php if ($option['required']) { ?><i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i><?php } ?>
										<?php echo $option['name']; ?>
									</label>
								  <div id="input-option-tablatest<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
									<div class="radio-checbox-options">
										<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tablatest" />
										<label for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tablatest">
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
								  <div id="input-option-tablatest<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
									<div class="radio-checbox-options">
									  <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tablatest" />
										<label for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tablatest">
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
											<div id="input-option-tablatest<?php echo $option['product_option_id']; ?>">
												<?php foreach ($option['product_option_value'] as $option_value) { ?>
												<div class="image-radio">
												  <label>
													<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tablatest" />
													<?php if($option_value['color'] !='') { ?>
														<span for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tablatest" class="color-option" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" style="background-color:<?php echo $option_value['color']?>"></span>
													<?php } ?>
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
											<div id="input-option-tablatest<?php echo $option['product_option_id']; ?>">
												<?php foreach ($option['product_option_value'] as $option_value) { ?>
												<div class="image-radio">
												  <label>
													<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tablatest" />
														<img for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tablatest" src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /> 
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
								<?php if($ns_on_off_tab_latest_rating !='0') { ?>
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
											<?php if($ns_on_off_tab_latest_quantity_reviews !='0') { ?> 
												<span class="quantity-reviews"><a data-placement="right"  data-toggle="tooltip" title="<?php echo $text_reviews_title;?>" href="<?php echo $product['href']; ?>/#tab-review"><?php echo $product['reviews']; ?></a></span>
											<?php } ?>
										</span>
									</div>
								<?php } ?>
								<?php if ($product['price']) { ?>
								<div itemscope itemprop="offers" itemtype="http://schema.org/Offer" class="price">
									<meta itemprop="price" content="<?php echo rtrim(preg_replace("/[^0-9\.]/", "", ($product['special'] ? $product['special'] : $product['price'])), '.'); ?>">
									<meta itemprop="priceCurrency" content="<?php echo $product['currency'] ?>">
									<link itemprop="availability" href="http://schema.org/<?php echo ($product['availability'] ? "InStock" : "OutOfStock") ?>" />									 
								  <?php if (!$product['special']) { ?>
								  <?php echo $product['price']; ?>
								  <?php } else { ?>
								  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
								  <?php } ?>
								  <?php if ($product['tax']) { ?>
								  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
								  <?php } ?>
								</div>
								<?php } ?>
								<div class="actions">
									<?php if($ns_on_off_tab_latest_wishlist !='0') { ?>
										<div class="wishlist"><button class="btn btn-wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button></div>
									<?php } ?>
									<?php if (($product['product_quantity'] <= 0) and $disable_cart_button){ ?>
										<div class="cart"><button class="btn btn-general" type="button" disabled><?php if($change_text_cart_button_out_of_stock ==1) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
									<?php } else { ?>
										<div class="cart"><button class="btn btn-general" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>','tablatest');"><?php if($change_text_cart_button_out_of_stock ==1 && $product['product_quantity'] <= 0) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
									<?php } ?>			
									<?php if($ns_on_off_tab_latest_compare !='0') { ?>
										<div class="compare"><button class="btn btn-compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button></div>
									<?php } ?>
								</div>
							</div>
							</div>
						</div>
					<?php } ?>
				</div>
			</div>
		</div>
	<?php } ?>
	
	
<?php if($featured_products){ ?>
		<div id="tab-featured-<?php echo $module; ?>" class="tab-pane fade">
			<div class="product-slider">
				<div class="container-modules tab-featured-<?php echo $module; ?> owl-carousel">
					<?php foreach ($featured_products as $product) { ?>
						<div class="item">
							<div itemtype="http://schema.org/Product" itemprop="itemListElement" itemscope class="product-thumb transition">
								<?php if($config_on_off_featured_quickview =='1'){?>
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
							<?php if($ns_on_off_tab_featured_slider_additional_image =='1') { ?>		
								<div class="image-carousel">			
									<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>		
								<?php foreach ($product['additional_img'] as $img) { ?>			
									<a  class="additional-image" href="<?php echo $product['href']; ?>"><img  src="<?php echo $img;?>" alt="" title="" class="img-responsive" /></a>			
								<?php } ?>
								</div>
							<?php } elseif($ns_on_off_tab_featured_slider_additional_image =='2') { ?>
								<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" <?php if($product['additional_image_hover']) { ?>data-additional-hover="<?php echo $product['additional_image_hover'];?>"<?php } ?> src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>		
							<?php } else { ?>	
								<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>	
							<?php } ?>
							<?php if($show_special_timer_module =='1' && $product['special']){ ?>
								<div class="action-timer">
									<div id="countdown-tab-featured-<?php echo $module; ?>-<?php echo $product['product_id'];?>"></div>		
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
									$('#countdown-tab-featured-<?php echo $module; ?>-<?php echo $product['product_id'];?>').countdown({
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
							<div class="caption-tabs">
							<div class="actions-quick-order">
								<div class="quick-order">
									<?php if($ns_on_off_module_quick_order =='1') { ?>
									<?php if($ns_on_off_tab_featured_fastorder !='0') { ?>
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
							<?php if($ns_on_off_tab_featured_model_product !='0') { ?>
								<div class="product-model"><?php echo $product['model']?></div>
							<?php } ?>
							<?php if($ns_on_off_tab_featured_description !='0') { ?>
								<div itemprop="description" class="product-description"><?php echo $product['description']; ?></div>
							<?php } ?>
							<?php if ($show_options) { ?>
								<div id="option_tabfeatured_<?php echo $product['product_id']; ?>" class="option tabfeatured-opt">
									<?php foreach ($product['options'] as $key => $option) { ?>
									
								<?php if ($option['type'] == 'select' || $option['type'] == 'radio') { ?>
								<div class="form-group">
									<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
										<?php if ($option['required']) { ?><i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i><?php } ?>
										<?php echo $option['name']; ?>
									</label>
								  <div id="input-option-tabfeatured<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
									<div class="radio-checbox-options">
										<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabfeatured" />
										<label for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabfeatured">
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
								  <div id="input-option-tabfeatured<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
									<div class="radio-checbox-options">
									  <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabfeatured" />
										<label for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabfeatured">
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
										  <div id="input-option-tabfeatured<?php echo $option['product_option_id']; ?>">
											<?php foreach ($option['product_option_value'] as $option_value) { ?>
											<div class="image-radio">
											  <label>
												<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabfeatured" />
													<span for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabfeatured" class="color-option" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" style="background-color:<?php echo $option_value['color']?>"></span>												
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
										  <div id="input-option-tabfeatured<?php echo $option['product_option_id']; ?>">
											<?php foreach ($option['product_option_value'] as $option_value) { ?>
											<div class="image-radio">
											  <label>
												<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabfeatured" />												
												<img for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabfeatured" src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /> 
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
							<?php if($ns_on_off_tab_featured_rating !='0') { ?>
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
								 <?php if($ns_on_off_tab_featured_quantity_reviews !='0') { ?> 
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
								  <?php echo $product['price']; ?>
								  <?php } else { ?>
								  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
								  <?php } ?>
								  <?php if ($product['tax']) { ?>
								  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
								  <?php } ?>
								</div>
								<?php } ?>
								
								<div class="actions">
									<?php if($ns_on_off_tab_featured_wishlist !='0') { ?>
										<div class="wishlist"><button class="btn btn-wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button></div>
									<?php } ?>
										<?php if (($product['product_quantity'] <= 0) and $disable_cart_button){ ?>
										<div class="cart"><button class="btn btn-general" type="button" disabled><?php if($change_text_cart_button_out_of_stock ==1) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
									<?php } else { ?>
										<div class="cart"><button class="btn btn-general" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>','tabfeatured');"><?php if($change_text_cart_button_out_of_stock ==1  && $product['product_quantity'] <= 0) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
									<?php } ?>	
									<?php if($ns_on_off_tab_featured_compare !='0') { ?>
										<div class="compare"><button class="btn btn-compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button></div>
									<?php } ?>
								</div>
							</div>
							</div>
						</div>
					<?php } ?>
				</div>
			</div>
		</div>
	<?php } ?>
	
	
<?php if($bestseller_products){ ?>
		<div id="tab-bestseller-<?php echo $module; ?>" class="tab-pane fade">
			<div class="product-slider">
				<div class="container-modules tab-bestseller-<?php echo $module; ?> owl-carousel">
					<?php foreach ($bestseller_products as $product) { ?>
						<div class="item">
							<div itemtype="http://schema.org/Product" itemprop="itemListElement" itemscope  class="product-thumb transition">
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
							<?php if($ns_on_off_tab_bestseller_slider_additional_image =='1') { ?>		
							<div class="image-carousel">			
								<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>		
							<?php foreach ($product['additional_img'] as $img) { ?>			
								<a  class="additional-image" href="<?php echo $product['href']; ?>"><img  src="<?php echo $img;?>" alt="" title="" class="img-responsive" /></a>			
							<?php } ?>
							</div>
						<?php } elseif($ns_on_off_tab_bestseller_slider_additional_image =='2') { ?>
							<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" <?php if($product['additional_image_hover']) { ?>data-additional-hover="<?php echo $product['additional_image_hover'];?>"<?php } ?> src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>	
						<?php } else { ?>	
							<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>	
						<?php } ?>	
						<?php if($show_special_timer_module =='1' && $product['special']){ ?>
								<div class="action-timer">
									<div id="countdown-tab-bestseller-<?php echo $module; ?>-<?php echo $product['product_id'];?>"></div>		
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
									$('#countdown-tab-bestseller-<?php echo $module; ?>-<?php echo $product['product_id'];?>').countdown({
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
							<div class="caption-tabs">
							<div class="actions-quick-order">
								<div class="quick-order">
								<?php if($ns_on_off_module_quick_order =='1') { ?>
								<?php if($ns_on_off_tab_bestseller_fastorder !='0') { ?>
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
							<?php if($ns_on_off_tab_bestseller_model_product !='0') { ?>
							<div class="product-model"><?php echo $product['model']?></div>
							<?php } ?>
							<?php if($ns_on_off_tab_bestseller_description !='0') { ?>
							<div itemprop="description" class="product-description"><?php echo $product['description']; ?></div>
							<?php } ?>
							<?php if ($show_options) { ?>
								<div id="option_tabbestseller_<?php echo $product['product_id']; ?>" class="option tabbestseller-opt">
								<?php foreach ($product['options'] as $key => $option) { ?>
								<?php if ($option['type'] == 'select' || $option['type'] == 'radio') { ?>
								<div class="form-group">
									<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
										<?php if ($option['required']) { ?><i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i><?php } ?>
										<?php echo $option['name']; ?>
									</label>
								  <div id="input-option-tabbestseller<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
									<div class="radio-checbox-options">
										<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabbestseller" />
										<label for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabbestseller">
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
								  <div id="input-option-tabbestseller<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
									<div class="radio-checbox-options">
									  <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabbestseller" />
										<label for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabbestseller">
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
										  <div id="input-option-tabbestseller<?php echo $option['product_option_id']; ?>">
											<?php foreach ($option['product_option_value'] as $option_value) { ?>
											<div class="image-radio">
											  <label>
												<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabbestseller" />
												<span for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabbestseller" class="color-option" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" style="background-color:<?php echo $option_value['color']?>"></span>												
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
										  <div id="input-option-tabbestseller<?php echo $option['product_option_id']; ?>">
											<?php foreach ($option['product_option_value'] as $option_value) { ?>
											<div class="image-radio">
											  <label>
												<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabbestseller" />												
												<img for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabbestseller" src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /> 
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
								<?php if($ns_on_off_tab_bestseller_rating !='0') { ?>
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
											 <?php if($ns_on_off_tab_bestseller_quantity_reviews !='0') { ?> 
												<span class="quantity-reviews"><a data-placement="right"  data-toggle="tooltip" title="<?php echo $text_reviews_title;?>" href="<?php echo $product['href']; ?>/#tab-review"><?php echo $product['reviews']; ?></a></span>
											 <?php } ?>
										 </span>
									</div>
									 <?php } ?>
								<?php if ($product['price']) { ?>
								<div itemscope itemprop="offers" itemtype="http://schema.org/Offer" class="price">
									<meta itemprop="price" content="<?php echo rtrim(preg_replace("/[^0-9\.]/", "", ($product['special'] ? $product['special'] : $product['price'])), '.'); ?>">
									<meta itemprop="priceCurrency" content="<?php echo $product['currency'] ?>">
									<link itemprop="availability" href="http://schema.org/<?php echo ($product['availability'] ? "InStock" : "OutOfStock") ?>" />
								  <?php if (!$product['special']) { ?>
								  <?php echo $product['price']; ?>
								  <?php } else { ?>
								  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
								  <?php } ?>
								  <?php if ($product['tax']) { ?>
								  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
								  <?php } ?>
								</div>
								<?php } ?>								
								<div class="actions">	
								<?php if($ns_on_off_tab_bestseller_wishlist !='0') { ?>
									<div class="wishlist"><button class="btn btn-wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button></div>
								<?php } ?>
									<?php if (($product['product_quantity'] <= 0) and $disable_cart_button){ ?>
										<div class="cart"><button class="btn btn-general" type="button" disabled><?php if($change_text_cart_button_out_of_stock ==1) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
									<?php } else { ?>
										<div class="cart"><button class="btn btn-general" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>','tabbestseller');"><?php if($change_text_cart_button_out_of_stock ==1 && $product['product_quantity'] <= 0) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
									<?php } ?>	
								<?php if($ns_on_off_tab_bestseller_compare !='0') { ?>
									<div class="compare"><button class="btn btn-compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button></div>
								<?php } ?>
								</div>
							</div>
							</div>
						</div>
					<?php } ?>
				</div>
			</div>
		</div>
	<?php } ?>
	
<?php if($special_products){ ?>
		<div id="tab-special-<?php echo $module; ?>" class="tab-pane fade">
			<div class="product-slider">
				<div class="container-modules tab-special-<?php echo $module; ?> owl-carousel">
					<?php foreach ($special_products as $product) { ?>
						<div class="item">
							<div itemtype="http://schema.org/Product" itemprop="itemListElement" itemscope class="product-thumb transition">
							<?php if($config_on_off_special_quickview =='1'){?>
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
							<?php if($ns_on_off_tab_special_slider_additional_image =='1') { ?>		
							<div class="image-carousel">			
								<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>		
							<?php foreach ($product['additional_img'] as $img) { ?>			
								<a  class="additional-image" href="<?php echo $product['href']; ?>"><img  src="<?php echo $img;?>" alt="" title="" class="img-responsive" /></a>			
							<?php } ?>
							</div>
							<?php } elseif($ns_on_off_tab_special_slider_additional_image =='2') { ?>
								<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" <?php if($product['additional_image_hover']) { ?>data-additional-hover="<?php echo $product['additional_image_hover'];?>"<?php } ?> src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>		
							<?php } else { ?>	
								<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>	
							<?php } ?>	
							<?php if($show_special_timer_module =='1' && $product['special']){ ?>
								<div class="action-timer">
									<div id="countdown-tab-special-<?php echo $module; ?>-<?php echo $product['product_id'];?>"></div>		
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
									$('#countdown-tab-special-<?php echo $module; ?>-<?php echo $product['product_id'];?>').countdown({
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
							<div class="caption-tabs">
							 <div class="actions-quick-order">
								<div class="quick-order">
								<?php if($ns_on_off_module_quick_order =='1') { ?>
									<?php if($ns_on_off_tab_special_fastorder !='0') { ?>
									<button class="btn btn-fastorder <?php if (($product['product_quantity'] <= 0) and $disable_fastorder_button){ ?>hidden-quick-order<?php } ?>" type="button" data-toggle="tooltip" onclick="fastorder_open(<?php echo $product['product_id']?>);" title="<?php echo $config_text_open_form_send_order[$lang_id]['config_text_open_form_send_order']; ?>" <?php if (($product['product_quantity'] <= 0) and $disable_fastorder_button){ ?>disabled<?php } ?>>
										<?php if($icon_open_form_send_order !=''){ ?>
											<i style="color:#<?php echo $color_button_open_form_send_order ;?>;" class="<?php echo $icon_open_form_send_order;?> fa-fw"></i>
										<?php } else { ?>
											<i style="color:#<?php echo $color_button_open_form_send_order ;?>;" class="fa fa-shopping-bag  fa-fw"></i>
										<?php } ?>
										<?php echo $config_text_open_form_send_order[$lang_id]['config_text_open_form_send_order']; ?>			
									</button>									
									<?php } ?>
									<?php } ?>
								  </div>
							</div>
							<div itemprop="name" class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
							<?php if($ns_on_off_tab_special_model_product !='0') { ?>
							<div class="product-model"><?php echo $product['model']?></div>
							<?php } ?>
							<?php if($ns_on_off_tab_special_description !='0') { ?>
							<div itemprop="description" class="product-description"><?php echo $product['description']; ?></div>
							<?php } ?>
							<?php if ($show_options) { ?>
								<div id="option_tabspecial_<?php echo $product['product_id']; ?>" class="option tabspecial-opt">
									<?php foreach ($product['options'] as $key => $option) { ?>
									
								<?php if ($option['type'] == 'select' || $option['type'] == 'radio') { ?>
								<div class="form-group">
									<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
										<?php if ($option['required']) { ?><i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i><?php } ?>
										<?php echo $option['name']; ?>
									</label>
								  <div id="input-option-tabspecial<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
									<div class="radio-checbox-options">
										<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabspecial" />
										<label for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabspecial">
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
								  <div id="input-option-tabspecial<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
									<div class="radio-checbox-options">
									  <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabspecial" />
										<label for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabspecial">
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
										  <div id="input-option-tabspecial<?php echo $option['product_option_id']; ?>">
											<?php foreach ($option['product_option_value'] as $option_value) { ?>
											<div class="image-radio">
											  <label>
												<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabspecial" />
												<span for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabspecial" class="color-option" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" style="background-color:<?php echo $option_value['color']?>"></span>												
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
										  <div id="input-option-tabspecial<?php echo $option['product_option_id']; ?>">
											<?php foreach ($option['product_option_value'] as $option_value) { ?>
											<div class="image-radio">
											  <label>
												<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabspecial" />												
												<img for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabspecial" src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /> 												
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
							<?php if($ns_on_off_tab_special_rating !='0') { ?>
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
										<?php if($ns_on_off_tab_special_quantity_reviews !='0') { ?> 
											<span class="quantity-reviews"><a data-placement="right"  data-toggle="tooltip" title="<?php echo $text_reviews_title;?>" href="<?php echo $product['href']; ?>/#tab-review"><?php echo $product['reviews']; ?></a></span>
										<?php } ?>
									</span>	
								</div>
							<?php } ?>
								<?php if ($product['price']) { ?>
								<div itemscope itemprop="offers" itemtype="http://schema.org/Offer" class="price">
									<meta itemprop="price" content="<?php echo rtrim(preg_replace("/[^0-9\.]/", "", ($product['special'] ? $product['special'] : $product['price'])), '.'); ?>">
									<meta itemprop="priceCurrency" content="<?php echo $product['currency'] ?>">
									<link itemprop="availability" href="http://schema.org/<?php echo ($product['availability'] ? "InStock" : "OutOfStock") ?>" />
								  <?php if (!$product['special']) { ?>
								  <?php echo $product['price']; ?>
								  <?php } else { ?>
								  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
								  <?php } ?>
								  <?php if ($product['tax']) { ?>
								  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
								  <?php } ?>
								</div>
								<?php } ?>
								<div class="actions">	
								<?php if($ns_on_off_tab_special_wishlist !='0') { ?>
									<div class="wishlist"><button class="btn btn-wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button></div>
								<?php } ?>
									<?php if (($product['product_quantity'] <= 0) and $disable_cart_button){ ?>
										<div class="cart"><button class="btn btn-general" type="button" disabled><?php if($change_text_cart_button_out_of_stock ==1) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
									<?php } else { ?>
										<div class="cart"><button class="btn btn-general" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>','tabspecial');"><?php if($change_text_cart_button_out_of_stock ==1 && $product['product_quantity'] <= 0) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
									<?php } ?>	
								<?php if($ns_on_off_tab_special_compare !='0') { ?>
									<div class="compare"><button class="btn btn-compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button></div>
								<?php } ?>
								</div>
							</div>
							</div>
						</div>
					<?php } ?>
				</div>
			</div>
		</div>
	<?php } ?>
	
	<?php if($popular_products){ ?>
		<div id="tab-popular-<?php echo $module; ?>" class="tab-pane fade">
			<div class="product-slider">
				<div class="container-modules tab-popular-<?php echo $module; ?> owl-carousel">
					<?php foreach ($popular_products as $product) { ?>
						<div class="item">
							<div itemtype="http://schema.org/Product" itemprop="itemListElement" itemscope class="product-thumb transition">
							<?php if($config_on_off_special_quickview =='1'){?>
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
							<?php if($ns_on_off_tab_popular_slider_additional_image =='1') { ?>		
							<div class="image-carousel">			
								<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>		
							<?php foreach ($product['additional_img'] as $img) { ?>			
								<a  class="additional-image" href="<?php echo $product['href']; ?>"><img  src="<?php echo $img;?>" alt="" title="" class="img-responsive" /></a>			
							<?php } ?>
							</div>
							<?php } elseif($ns_on_off_tab_popular_slider_additional_image =='2') { ?>
								<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" <?php if($product['additional_image_hover']) { ?>data-additional-hover="<?php echo $product['additional_image_hover'];?>"<?php } ?> src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>	
							<?php } else { ?>
								<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>	
							<?php } ?>
							<?php if($show_special_timer_module =='1' && $product['special']){ ?>
								<div class="action-timer">
									<div id="countdown-tab-popular-<?php echo $module; ?>-<?php echo $product['product_id'];?>"></div>		
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
									$('#countdown-tab-popular-<?php echo $module; ?>-<?php echo $product['product_id'];?>').countdown({
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
							<div class="caption-tabs">
							<div class="actions-quick-order">
								<div class="quick-order">
								<?php if($ns_on_off_module_quick_order =='1') { ?>
								<?php if($ns_on_off_tab_popular_fastorder !='0') { ?>
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
							<?php if($ns_on_off_tab_popular_model_product !='0') { ?>
							<div class="product-model"><?php echo $product['model']?></div>
							<?php } ?>
							<?php if($ns_on_off_tab_popular_description !='0') { ?>
							<div itemprop="description" class="product-description"><?php echo $product['description']; ?></div>
							<?php } ?>
							<?php if ($show_options) { ?>
								<div id="option_tabpopular_<?php echo $product['product_id']; ?>" class="option tabpopular-opt">
									<?php foreach ($product['options'] as $key => $option) { ?>
									
								<?php if ($option['type'] == 'select' || $option['type'] == 'radio') { ?>
								<div class="form-group">
									<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
										<?php if ($option['required']) { ?><i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i><?php } ?>
										<?php echo $option['name']; ?>
									</label>
								  <div id="input-option-tabpopular<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
									<div class="radio-checbox-options">
										<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabpopular" />
										<label for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabpopular">
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
								  <div id="input-option-tabpopular<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
									<div class="radio-checbox-options">
									  <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabpopular" />
										<label for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabpopular">
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
										  <div id="input-option-tabpopular<?php echo $option['product_option_id']; ?>">
											<?php foreach ($option['product_option_value'] as $option_value) { ?>
											<div class="image-radio">
											  <label>
												<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabpopular" />												
												<span for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabpopular" class="color-option" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" style="background-color:<?php echo $option_value['color']?>"></span>												
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
										  <div id="input-option-tabpopular<?php echo $option['product_option_id']; ?>">
											<?php foreach ($option['product_option_value'] as $option_value) { ?>
											<div class="image-radio">
											  <label>
												<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabpopular" />												
												<img for="input-value-<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>_tabpopular" src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /> 												
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
							<?php if($ns_on_off_tab_popular_rating !='0') { ?>
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
									<?php if($ns_on_off_tab_popular_quantity_reviews !='0') { ?> 
										<span class="quantity-reviews"><a data-placement="right"  data-toggle="tooltip" title="<?php echo $text_reviews_title;?>" href="<?php echo $product['href']; ?>/#tab-review"><?php echo $product['reviews']; ?></a></span>
									<?php } ?>
								</span>	
								</div>
							<?php } ?>
								<?php if ($product['price']) { ?>
								<div itemscope itemprop="offers" itemtype="http://schema.org/Offer" class="price">
									<meta itemprop="price" content="<?php echo rtrim(preg_replace("/[^0-9\.]/", "", ($product['special'] ? $product['special'] : $product['price'])), '.'); ?>">
									<meta itemprop="priceCurrency" content="<?php echo $product['currency'] ?>">
									<link itemprop="availability" href="http://schema.org/<?php echo ($product['availability'] ? "InStock" : "OutOfStock") ?>" />
								  <?php if (!$product['special']) { ?>
								  <?php echo $product['price']; ?>
								  <?php } else { ?>
								  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
								  <?php } ?>
								  <?php if ($product['tax']) { ?>
								  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
								  <?php } ?>
								</div>
								<?php } ?>								
								<div class="actions">
									<?php if($ns_on_off_tab_popular_wishlist !='0') { ?>
										<div class="wishlist"><button class="btn btn-wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button></div>
									<?php } ?>
										<?php if (($product['product_quantity'] <= 0) and $disable_cart_button){ ?>
										<div class="cart"><button class="btn btn-general" type="button" disabled><?php if($change_text_cart_button_out_of_stock ==1) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
									<?php } else { ?>
										<div class="cart"><button class="btn btn-general" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>','tabpopular');"><?php if($change_text_cart_button_out_of_stock ==1 && $product['product_quantity'] <= 0) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
									<?php } ?>				
									<?php if($ns_on_off_tab_popular_compare !='0') { ?>
										<div class="compare"><button class="btn btn-compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button></div>
									<?php } ?>
								</div>
							</div>
							</div>
						</div>
					<?php } ?>
				</div>
			</div>
		</div>
	<?php } ?>
</div>
<script type="text/javascript">

$('.tab-latest-<?php echo $module;?>').owlCarousel({
	responsiveBaseWidth: ".tab-latest-<?php echo $module;?>",
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
<?php if($ns_on_off_tab_latest_slider_additional_image =='1') { ?>
$(".tab-latest-<?php echo $module; ?> .image-carousel").owlCarousel({
	navigation : true, 
	slideSpeed : 300,
	pagination:false,
	navigationText: ['<div class="btn btn-carousel-image-additional next-prod"><i class="fa fa-angle-left arrow"></i></div>', '<div class="btn btn-carousel-image-additional prev-prod"><i class="fa fa-angle-right arrow"></i></div>'],		
	paginationSpeed : 400,
	singleItem:true,
	transitionStyle: '<?php echo $ns_select_tab_latest_additional_animate_method;?>'
	});
<?php } ?>
$('.tab-featured-<?php echo $module;?>').owlCarousel({
	responsiveBaseWidth: ".tab-featured-<?php echo $module;?>",
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
<?php if($ns_on_off_tab_featured_slider_additional_image =='1') { ?>	
$(".tab-featured-<?php echo $module; ?> .image-carousel").owlCarousel({
	navigation : true, 
	slideSpeed : 300,
	pagination:false,
	navigationText: ['<div class="btn btn-carousel-image-additional next-prod"><i class="fa fa-angle-left arrow"></i></div>', '<div class="btn btn-carousel-image-additional prev-prod"><i class="fa fa-angle-right arrow"></i></div>'],		
	paginationSpeed : 400,
	singleItem:true,
	transitionStyle: '<?php echo $ns_select_tab_featured_additional_animate_method;?>'
	});
<?php } ?>
$('.tab-bestseller-<?php echo $module;?>').owlCarousel({
	responsiveBaseWidth: ".tab-bestseller-<?php echo $module;?>",
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
<?php if($ns_on_off_tab_bestseller_slider_additional_image =='1') { ?>	
$(".tab-bestseller-<?php echo $module; ?> .image-carousel").owlCarousel({
	navigation : true, 
	slideSpeed : 300,
	pagination:false,
	navigationText: ['<div class="btn btn-carousel-image-additional next-prod"><i class="fa fa-angle-left arrow"></i></div>', '<div class="btn btn-carousel-image-additional prev-prod"><i class="fa fa-angle-right arrow"></i></div>'],		
	paginationSpeed : 400,
	singleItem:true,
	transitionStyle: '<?php echo $ns_select_tab_bestseller_additional_animate_method;?>'
	});
<?php } ?>
$('.tab-special-<?php echo $module;?>').owlCarousel({
	responsiveBaseWidth: ".tab-special-<?php echo $module;?>",
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
<?php if($ns_on_off_tab_special_slider_additional_image =='1') { ?>	
$(".tab-special-<?php echo $module; ?> .image-carousel").owlCarousel({
	navigation : true, 
	slideSpeed : 300,
	pagination:false,
	navigationText: ['<div class="btn btn-carousel-image-additional next-prod"><i class="fa fa-angle-left arrow"></i></div>', '<div class="btn btn-carousel-image-additional prev-prod"><i class="fa fa-angle-right arrow"></i></div>'],		
	paginationSpeed : 400,
	singleItem:true,
	transitionStyle: '<?php echo $ns_select_tab_special_additional_animate_method;?>'
	});
<?php } ?>
$('.tab-popular-<?php echo $module;?>').owlCarousel({
	responsiveBaseWidth: ".tab-popular-<?php echo $module;?>",
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
<?php if($ns_on_off_tab_popular_slider_additional_image =='1') { ?>	
$(".tab-popular-<?php echo $module; ?> .image-carousel").owlCarousel({
	navigation : true, 
	slideSpeed : 300,
	pagination:false,
	navigationText: ['<div class="btn btn-carousel-image-additional next-prod"><i class="fa fa-angle-left arrow"></i></div>', '<div class="btn btn-carousel-image-additional prev-prod"><i class="fa fa-angle-right arrow"></i></div>'],		
	paginationSpeed : 400,
	singleItem:true,
	transitionStyle: '<?php echo $ns_select_tab_popular_additional_animate_method;?>'
	});
<?php } ?>


$('.all_tabs a').on('click', function() {	
$('.product-thumb .option').removeAttr('style');
setTimeout(function () {	
	max_height_div('.product-thumb .option.tablatest-opt');		
	max_height_div('.product-thumb .option.tabspecial-opt');		
	max_height_div('.product-thumb .option.tabfeatured-opt');		
	max_height_div('.product-thumb .option.tabbestseller-opt');		
	max_height_div('.product-thumb .option.tabpopular-opt');			
}, 450);
});
</script>
</div>
</div>