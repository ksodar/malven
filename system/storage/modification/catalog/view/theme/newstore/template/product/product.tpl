<?php echo $header; ?>
<div itemscope itemtype="http://schema.org/Product" class="container">
	<ul class="breadcrumb" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
		<?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
			<?php if($i+1<count($breadcrumbs)){ ?>
				<li><a itemprop="url" href="<?php echo $breadcrumb['href']; ?>"><span itemprop="title"><?php echo $breadcrumb['text']; ?></span></a></li>
			<?php } else { ?>
				<li><?php echo $breadcrumb['text']; ?></li>
			<?php } ?>
		<?php } ?>
	</ul>
	<h1 itemprop="name"><?php echo $heading_title; ?></h1>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-4 col-md-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-8 col-md-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div  id="content" class="<?php echo $class; ?>">
   <?php echo $content_top; ?>

			<?php if($user_logged) { ?>
<div class="edit-product-button">
<?php if($link_module_edit_admin == 'Y') { ?>
	<a target="_blank" href="admin/index.php?route=module/editproduct&token=<?php echo $token; ?>" class="btn-editprod"  data-toggle="tooltip" title="<?php echo $pge_text_admin_setting; ?>"><i class="fa fa-cog" aria-hidden="true"></i></a>
<?php } ?>
<?php if($link_product_admin == 'Y') { ?>
<a data-toggle="tooltip" target="_blank" href="<?php echo HTTP_SERVER;?>admin/index.php?route=catalog/product/edit&token=<?php echo $token; ?>&product_id=<?php echo $product_id;?>"class="btn-editprod" title="<?php echo $pge_text_catalog_prod_edit; ?>"><i class="fa fa-cogs" aria-hidden="true"></i></a>
<?php } ?>
<?php if($view_open_description_edit == 'Y') { ?>
	<a data-toggle="tooltip" onclick="show_editor('index.php?route=module/editproduct/editdescription&product_id=<?php echo $product_id;?>')" href="javascript:void(0);" class="btn-editprod" title="<?php echo $pge_text_description; ?>"><i class="fa fa-newspaper-o" aria-hidden="true"></i></a>
<?php } ?>
 <?php if($view_open_code_edit == 'Y') { ?>
		<a data-toggle="tooltip" onclick="show_editor('index.php?route=module/editproduct/editcode&product_id=<?php echo $product_id;?>')" href="javascript:void(0);" class="btn-editprod" title="<?php echo $pge_text_code; ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
<?php } ?>
<?php if($view_open_category_edit == 'Y') { ?>
	<a data-toggle="tooltip" onclick="show_editor('index.php?route=module/editproduct/editcategory&product_category&product_id=<?php echo $product_id;?>')" href="javascript:void(0);" class="btn-editprod " title="<?php echo $pge_text_categories; ?>"><i class="fa fa-sitemap" aria-hidden="true"></i></a>
<?php } ?>
<?php if($view_open_image_edit == 'Y') { ?>
	<a data-toggle="tooltip" onclick="show_editor('index.php?route=module/editproduct/editimage&product_id=<?php echo $product_id;?>')" href="javascript:void(0);" class="btn-editprod " title="<?php echo $pge_text_images_product; ?>"><i class="fa fa-picture-o" aria-hidden="true"></i></a>
<?php } ?>
<?php if($view_open_image_edit == 'Y') { ?>
	<a data-toggle="tooltip" onclick="show_editor('index.php?route=module/editproduct/editimageurl&product_id=<?php echo $product_id;?>')" href="javascript:void(0);" class="btn-editprod" title="<?php echo $pge_text_images_product_url; ?>"><i class="fa fa-link" aria-hidden="true"></i></a>
<?php } ?>
<?php if($view_open_image_google_edit == 'Y') { ?>
	<a data-toggle="tooltip" onclick="show_editor('index.php?route=module/editproduct/editimagegoogle&product_id=<?php echo $product_id;?>')" href="javascript:void(0);"  class="btn-editprod " title="<?php echo $pge_text_images_product_google; ?>"><i class="fa fa-google" aria-hidden="true"></i></a>
<?php } ?>
<?php if($view_open_price_edit == 'Y') { ?>
	<a data-toggle="tooltip" onclick="show_editor('index.php?route=module/editproduct/editprice&product_id=<?php echo $product_id;?>')" href="javascript:void(0);" class="btn-editprod" title="<?php echo $pge_text_price; ?>"><i class="fa fa-money" aria-hidden="true"></i></a>
 <?php } ?>
 <?php if($view_open_special_edit == 'Y') { ?>	 
	<a data-toggle="tooltip" onclick="show_editor('index.php?route=module/editproduct/editspecial&special_price&product_id=<?php echo $product_id;?>')" href="javascript:void(0);" class="btn-editprod" title="<?php echo $pge_text_special; ?>"><i class="fa fa-tag" aria-hidden="true"></i></a>
<?php } ?>	
<?php if($view_open_option_edit == 'Y') { ?>
	<a data-toggle="tooltip" onclick="show_editor('index.php?route=module/editproduct/editdiscount&product_id=<?php echo $product_id;?>')" href="javascript:void(0);" class="btn-editprod" title="<?php echo $pge_text_discount_title; ?>"><i class="fa fa-legal fa-fw" aria-hidden="true"></i></a>
<?php } ?>
 <?php if($view_open_related_edit == 'Y') { ?>
	<a data-toggle="tooltip" onclick="show_editor('index.php?route=module/editproduct/editrelated&product_id=<?php echo $product_id;?>')" href="javascript:void(0);" class="btn-editprod" title="<?php echo $pge_text_related; ?>"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>	
<?php } ?>	
<?php if($view_open_attribute_edit == 'Y') { ?>	
	<a data-toggle="tooltip" onclick="show_editor('index.php?route=module/editproduct/editattribute&product_id=<?php echo $product_id;?>')" href="javascript:void(0);" class="btn-editprod" title="<?php echo $pge_text_attribute; ?>"><i class="fa fa-buysellads" aria-hidden="true"></i></a>
<?php } ?>	
<?php if($view_open_option_edit == 'Y') { ?>	
	<a data-toggle="tooltip" onclick="show_editor('index.php?route=module/editproduct/editoption&product_id=<?php echo $product_id;?>')" href="javascript:void(0);" class="btn-editprod" title="<?php echo $pge_text_option; ?>"><i class="fa fa-cubes" aria-hidden="true"></i></a>
<?php } ?>
</div>
<?php } ?>	
			
      <div class="row">
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-12 col-md-12'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-12 col-md-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12 col-md-6'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
		<div class="panel panel-default panel-body">
			<?php if ($manufacturer) { ?>
            <div class="info-inline"><i class="fa fa-check fa-fw"></i><b><?php echo $text_manufacturer; ?></b> <a href="<?php echo $manufacturers; ?>"><span itemprop="brand"><?php echo $manufacturer; ?></span></a></div>
            <?php } ?>
			<div class="info-inline"><i class="fa fa-check fa-fw"></i><b><?php echo $text_model; ?></b> <span itemprop="model"><?php echo $model; ?></span></div>
				<?php if ($review_status) { ?>
					<div class="rating info-inline">
						<?php if ($rating) { ?>
							<span itemscope itemprop="aggregateRating" itemtype="http://schema.org/AggregateRating">
								<meta itemprop="reviewCount" content="<?php echo $reviewCount; ?>">
								<meta itemprop="ratingValue" content="<?php echo $ratingValue; ?>">
								<meta itemprop="bestRating" content="5"><meta itemprop="worstRating" content="1">
							</span>
						<?php } ?>
					
					<?php for ($i = 1; $i <= 5; $i++) { ?>
						<?php if ($rating < $i) { ?>
							<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
						<?php } else { ?>
							<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
						<?php } ?>
					<?php } ?>
						<a href="" onclick="$('a[href=\'#tab-review\']').trigger('click');$('html, body').animate({ scrollTop: $('a[href=\'#tab-review\']').offset().top - 5}, 250); return false;"><?php echo $reviews; ?></a>
					</div>
				<?php } ?>
			</div>
          <?php if ($thumb || $images) { ?>
				<div class="thumbnails">
					<?php if ($thumb) { ?>
						<div class="general-image">
							<div class="stickers-ns">
								<?php if ($special) { ?>
									<div class="sticker-ns procent-skidka"><i class="fa fa-tag"></i> <?php echo round ($skidka);?> %</div>
								<?php } ?>
								<?php if (($on_off_sticker_special == '1') && $special) { ?>
									<div class="sticker-ns special">
										<i class="fa <?php echo $config_change_icon_sticker_special;?> fa-fw"></i>					
										<span><?php echo $text_sticker_special[$lang_id]['config_change_text_sticker_special']; ?></span>	
									</div>
								<?php } ?>
								<?php if(($on_off_sticker_topbestseller == '1') && ($top_bestsellers >= $config_limit_order_product_topbestseller)) { ?>
									<div class="sticker-ns bestseller">
										<i class="fa <?php echo $config_change_icon_sticker_topbestseller;?> fa-fw"></i>
										<span><?php echo $text_sticker_topbestseller[$lang_id]['config_change_text_sticker_topbestseller']; ?></span>	
									</div>
								<?php } ?>
								<?php if(($on_off_sticker_popular == '1') && ($viewed>=$config_min_quantity_popular)) { ?>
									<div class="sticker-ns popular">
										<i class="fa <?php echo $config_change_icon_sticker_popular;?> fa-fw"></i>
										<span><?php echo $text_sticker_popular[$lang_id]['config_change_text_sticker_popular']; ?></span>								
									</div>
								<?php } ?>
								<?php if(($on_off_sticker_newproduct == '1') && (isset($date_available)&&(round((strtotime(date("Y-m-d"))-strtotime($date_available))/86400))<=$config_limit_day_newproduct)) { ?>
									<div class="sticker-ns newproduct">
										<i class="fa <?php echo $config_change_icon_sticker_newproduct;?>"></i>
										<?php echo $text_sticker_newproduct[$lang_id]['config_change_text_sticker_newproduct']; ?>	
									</div>
								<?php } ?>
							</div>	
							<a class="main-image thumbnail zoom-magnify" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
								<img class="img" data-magnify-src="<?php echo $popup; ?>" src="<?php echo $thumb; ?>" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
						</div>
					<?php } ?>
					<?php if ($images) { ?>
						<div class="image-additional owl-carousel">
							<div class="item">
								<a class="thumbnail" data-magnify-src="<?php echo $popup; ?>" rel="<?php echo $thumb; ?>" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
									<img src="<?php echo $thumb_min; ?>"  title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
								</a>
							</div>
							<?php foreach ($images as $image) { ?>
							<div class="item">
								<a class="thumbnail" data-magnify-src="<?php echo $image['popup']; ?>" rel="<?php echo $image['thumb_hover'];?>" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
								<img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
							</div>
							<?php } ?>
						</div>
					<?php } ?>
				</div>
          <?php } ?>
        </div>
        <?php if ($column_left && $column_right) { ?>
			<?php if($config_status_delivery_options !='0') { ?>
				<?php $class = 'col-sm-12 col-md-6'; ?>
				<?php $class_status_delivery = 'col-sm-12 col-md-6'; ?>
				<?php $class_countdown = 'col-sm-12 col-md-12'; ?>
			<?php } else { ?>
				<?php $class = 'col-sm-12 col-md-12'; ?>
				<?php $class_countdown = 'col-sm-12 col-md-12'; ?>
			<?php } ?>
        <?php } elseif ($column_left || $column_right) { ?>
			<?php if($config_status_delivery_options !='0') { ?>
				<?php $class = 'col-sm-12 col-md-6'; ?>
				<?php $class_status_delivery = 'col-sm-12 col-md-12'; ?>
				<?php $class_countdown = 'col-sm-12 col-md-6'; ?>
			<?php } else { ?>
				<?php $class = 'col-sm-12 col-md-6'; ?>
				<?php $class_countdown = 'col-sm-12 col-md-6'; ?>
			<?php } ?>
        <?php } else { ?>
			<?php if($config_status_delivery_options !='0') { ?>
				<?php $class = 'col-sm-6 col-md-3'; ?>
				<?php $class_status_delivery = 'col-sm-6 col-md-3'; ?>
				<?php $class_countdown = 'col-sm-12 col-md-6'; ?>
			<?php } else { ?>
				<?php $class = 'col-sm-12 col-md-6'; ?>
				<?php $class_countdown = 'col-sm-12 col-md-6'; ?>
			<?php } ?>
        <?php } ?>
		<?php if($ns_on_off_countdown_product !='0') { ?>
			
				  <?php if($special) { ?>
				<div class="<?php echo $class_countdown;?>">  
					<div class="special-countdown">
						<div class="panel panel-special">
							<div class="panel-heading">
								<h3 class="panel-title"><?php echo $special_countdown_final;?></h3>
							</div>
							<div class="panel-body">				
									<?php if ($date_end !="") { ?>
										<div id="countdown-product-<?php echo $product_id;?>"></div>
									<?php } ?>
							</div>
							<?php if($stock_quantity != 'not_display') { ?>
							<div class="panel-footer">					
								<div class="quantity-count-sale"><?php echo $text_special_hurry_quantity;?> <?php echo $stock_quantity; ?> <?php echo $special_countdown_pcs;?></div>					
							</div>
							<?php } ?>
						</div>
					</div>
				</div>
<script type="text/javascript">
	$(function(){
	var note = $('#note'),
	ts = new Date('<?php echo $str_timer_1;?>', '<?php echo $str_timer_2;?>', '<?php echo $str_timer_3?>'),
	newYear = true;
	if((new Date()) > ts){
		ts = (new Date()).getTime() + 10*24*60*60*1000;
		newYear = false;
	}
	$('#countdown-product-<?php echo $product_id;?>').countdown({
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
		<?php } ?>
        <div class="<?php echo $class; ?>">
		<div id="product">
			<div class="panel panel-default panel-body">	
				<?php if (isset($fcpdata['status']) && $fcpdata['status']) { ?>
	            	<a class="btn-cheaper" href="javascript: void(0);" onclick="open_popup_fcp(<?php echo $product_id; ?>); return false"><i class="<?php echo $fcpdata['found_cheaper_botton_icon'];?>"></i> <?php echo isset($fcpdata['found_cheaper_botton_text'][$lang_id]) ? $fcpdata['found_cheaper_botton_text'][$lang_id]['text'] : ''; ?>   </a>
	            <?php } ?> 			
			<?php if ($price) { ?>
					<span itemscope itemprop="offers" itemtype="http://schema.org/Offer">
						<meta itemprop="price" content="<?php echo rtrim(preg_replace("/[^0-9\.]/", "", ($special ? $special : $price)), '.'); ?>">
						<meta itemprop="priceCurrency" content="<?php echo $currency_microdata; ?>">
						<link itemprop="availability" href="http://schema.org/<?php echo (($availability) ? 'InStock' : 'OutOfStock') ?>" />
					</span>
				<div class="price">
					<?php if (!$special) { ?>
						<?php echo $price; ?>
					<?php } else { ?>
						<span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
					<?php } ?>
					<?php if ($tax) { ?>
						<span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span>
					<?php } ?>
					
				</div>
				
			<?php } ?>
			<?php if ($points) { ?>
				<div class="points"><?php echo $text_points; ?> <?php echo $points; ?></div>
            <?php } ?>
		   <hr>
          <ul class="list-unstyled availability">                      
            <?php if ($reward) { ?>
            <li><i class="fa fa-check fa-fw"></i><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>  
			<li><i class="fa fa-check fa-fw"></i><span class="text-stock"><?php echo $text_stock; ?></span> 
			<?php if($stock_quantity_count > 0) { ?>
			<span class="stock_status_success"><?php echo $stock_status;?></span> 
			<?php if($stock_quantity != 'not_display') { ?><span class="stock-quantity_success"><?php echo $stock_quantity; ?></span><?php } ?>
			<?php } else { ?>
			<span class="qty-not-in-stock"><?php echo $stock_status;?></span> 
			<?php if($stock_quantity != 'not_display') { ?><span class="qty-not-in-stock-count"><?php echo $stock_quantity; ?></span><?php } ?>
			<?php } ?>
			</li>
          </ul>	
		  <ul class="list-unstyled">
            <?php if ($discounts) { ?>
			<hr>
				<?php foreach ($discounts as $discount) { ?>
					<li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
				<?php } ?>
            <?php } ?>
          </ul>
            <?php if ($options) { ?>
            <hr>
			<div class="options">
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
						<?php if ($option['required']) { ?>
							<i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i>
						<?php } ?>
					<?php echo $option['name']; ?>
				</label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>" data-points="<?php echo (isset($option_value['points_value']) ? $option_value['points_value'] : 0); ?>" data-prefix="<?php echo $option_value['price_prefix']; ?>" data-price="<?php echo $option_value['price_value']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                
          <?php
          if ($option_value['price_prefix'] == '*') {
            if ($option_value['price_value'] != 1.0)
              printf("(%+d%%)", round(($option_value['price_value'] * 100) - 100) );
          } else {
            echo "(".$option_value['price_prefix'].$option_value['price'].")"; 
          }
          ?>
      
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group">
				<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
						<?php if ($option['required']) { ?>
							<i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i>
						<?php } ?>
					<?php echo $option['name']; ?>
				</label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio-checbox-options">
                  <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" data-points="<?php echo (isset($option_value['points_value']) ? $option_value['points_value'] : 0); ?>" data-prefix="<?php echo $option_value['price_prefix']; ?>" data-price="<?php echo $option_value['price_value']; ?>" id="<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>" />
									<label for="<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>">
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
						<?php if ($option['required']) { ?>
							<i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i>
						<?php } ?>
					<?php echo $option['name']; ?>
				</label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio-checbox-options">
                  <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" data-points="<?php echo (isset($option_value['points_value']) ? $option_value['points_value'] : 0); ?>" data-prefix="<?php echo $option_value['price_prefix']; ?>" data-price="<?php echo $option_value['price_value']; ?>" id="<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>" />
									<label for="<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>">
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
				  <div id="input-option<?php echo $option['product_option_id']; ?>">
					<?php foreach ($option['product_option_value'] as $option_value) { ?>
					<div class="image-radio">
					  <label>
						<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" data-points="<?php echo (isset($option_value['points_value']) ? $option_value['points_value'] : 0); ?>" data-prefix="<?php echo $option_value['price_prefix']; ?>" data-price="<?php echo $option_value['price_value']; ?>" />
						<span class="color-option" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" style="background-color:<?php echo $option_value['color']?>"></span> 
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
				  <div id="input-option<?php echo $option['product_option_id']; ?>">
					<?php foreach ($option['product_option_value'] as $option_value) { ?>
					<div class="image-radio">
					  <label>
						<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" data-points="<?php echo (isset($option_value['points_value']) ? $option_value['points_value'] : 0); ?>" data-prefix="<?php echo $option_value['price_prefix']; ?>" data-price="<?php echo $option_value['price_value']; ?>" />
						<img onclick="optionimage('<?php echo $option_value['image_click']; ?>','<?php echo $option_value['image_zoom']; ?>','<?php echo $option_value['image_thumb']; ?>')" src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" data-toggle="tooltip" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /> 
					  </label>
					</div>
					<?php } ?>
				  </div>
				</div>
				<?php } ?>
            
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
						<?php if ($option['required']) { ?>
							<i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i>
						<?php } ?>
					<?php echo $option['name']; ?>
				</label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
						<?php if ($option['required']) { ?>
							<i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i>
						<?php } ?>
					<?php echo $option['name']; ?>
				</label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
						<?php if ($option['required']) { ?>
							<i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i>
						<?php } ?>
					<?php echo $option['name']; ?>
				</label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
						<?php if ($option['required']) { ?>
							<i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i>
						<?php } ?>
					<?php echo $option['name']; ?>
				</label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group">
				<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
						<?php if ($option['required']) { ?>
							<i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i>
						<?php } ?>
					<?php echo $option['name']; ?>
				</label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>">
						<?php if ($option['required']) { ?>
							<i class="fa fa-exclamation-triangle required" data-toggle="tooltip" data-placement="left" title="<?php echo $required_text_option; ?>"></i>
						<?php } ?>
					<?php echo $option['name']; ?>
				</label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
			
            <?php } ?>
			</div>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
			
            <?php if ($minimum > 1) { ?>
				<div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
			<?php } ?> 
			<hr>						         
			<div class="actions-additional">
				<div class="qty space-padding-r5 pull-left">
					<div class="quantity-adder clearfix">
						<div>
							<div class="quantity-number pull-left">
								<input class="quantity-product" type="text" name="quantity" size="5" value="<?php echo $minimum; ?>" id="input-quantity" />
							</div>
							<div class="quantity-wrapper pull-left">
							<span onclick="btnplus_card_prod();" class="add-up add-action fa fa-plus"></span>
							<span onclick="btnminus_card_prod(<?php echo $minimum; ?>);" class="add-down add-action fa fa-minus"></span>
							</div>
						</div>
						<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
					</div>
				</div>
				<script type="text/javascript">
				function btnminus_card_prod(a){
					document.getElementById("input-quantity").value>a?document.getElementById("input-quantity").value--:document.getElementById("input-quantity").value=a
				}
				function btnplus_card_prod(){
					document.getElementById("input-quantity").value++
				};
				</script>						
				<div class="btn-group">
				<?php if($show_nsproduct_btn_wishlist =='1') { ?>
					<button type="button" data-toggle="tooltip" class="btn btn-wishlist" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart fa-fw"></i></button>
				<?php } ?>
				<?php if($show_nsproduct_btn_compare =='1') { ?>
					<button type="button" data-toggle="tooltip" class="btn btn-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange fa-fw"></i></button>				
				<?php } ?>
				</div>
			</div>
			<div class="actions text-center">
			<?php if($config_status_delivery_options !='0') { ?>
				<?php $class_btn = 'w100'; ?>
			<?php } else { ?>
				<?php $class_btn = 'w48'; ?>
			<?php } ?>
				<div class="cart pull-left <?php echo $class_btn;?>">
					<?php if (($product_quantity <= 0) and $disable_cart_button){ ?>
						<button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-general" disabled><?php if($change_text_cart_button_out_of_stock ==1 && $product_quantity <= 0) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button>					
					<?php } else { ?>
						<button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-general"><?php if($change_text_cart_button_out_of_stock ==1 && $product_quantity <= 0) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button>					
					<?php } ?>	
				</div>
				<?php if($ns_on_off_module_quick_order =='1') { ?>
				<?php if($show_nsproduct_btn_fastorder =='1') { ?>
					<button class="<?php echo $class_btn;?> btn btn-fastorder <?php if (($product_quantity <= 0) and $disable_fastorder_button){ ?>hidden-quick-order<?php } ?>" type="button" onclick="fastorder_open(<?php echo $product_id?>);" data-toggle="tooltip" title="<?php echo $config_text_open_form_send_order[$lang_id]['config_text_open_form_send_order']; ?>" <?php if (($product_quantity <= 0) and $disable_fastorder_button){ ?>disabled<?php } ?>>
									<?php if($icon_open_form_send_order !=''){ ?>
									<i style="color:#<?php echo $color_button_open_form_send_order ;?>;" class="<?php echo $icon_open_form_send_order;?> fa-fw"></i>
									<?php } else { ?>
									<i style="color:#<?php echo $color_button_open_form_send_order ;?>;" class="fa fa-shopping-bag fa-fw"></i>
									<?php } ?>		
					<span><?php echo $config_text_open_form_send_order[$lang_id]['config_text_open_form_send_order']; ?></span>							
					</button>
				<?php } ?>
				<?php } ?>
			</div>		
			<?php if(($ns_on_off_product_sharing_facebock == '1') || ($ns_on_off_product_sharing_twitter =='1') || ($ns_on_off_product_sharing_googleplus =='1') || ($ns_on_off_product_sharing_mailru =='1') || ($ns_on_off_product_sharing_vk =='1') || ($ns_on_off_product_sharing_ok =='1') ) { ?>
			<script src="catalog/view/theme/newstore/js/social-likes/social-likes.min.js" type="text/javascript"></script>
			<link href="catalog/view/theme/newstore/js/social-likes/social-likes_birman.css" rel="stylesheet" media="screen" />
			<hr>
			<div class="social-likes">
				<?php if($ns_on_off_product_sharing_facebock !='0'){?><div class="facebook" title="Share link on Facebook"><?php echo $text_facebook;?></div><?php } ?>
				<?php if($ns_on_off_product_sharing_twitter !='0'){?><div class="twitter" title="Share link on Twitter"><?php echo $text_twitter;?></div><?php } ?>
				<?php if($ns_on_off_product_sharing_googleplus !='0'){?><div class="plusone" title="Share link on Google+"><?php echo $text_googleplus;?></div><?php } ?>
				<?php if($ns_on_off_product_sharing_mailru !='0'){?><div class="mailru" title="Поделиться ссылкой в Моём мире"><?php echo $text_mailru;?></div><?php } ?>
				<?php if($ns_on_off_product_sharing_vk !='0'){?><div class="vkontakte" title="Поделиться ссылкой во Вконтакте"><?php echo $text_vk;?></div><?php } ?>
				<?php if($ns_on_off_product_sharing_ok !='0'){?><div class="odnoklassniki" title="Поделиться ссылкой в Одноклассниках"><?php echo $text_ok;?></div><?php } ?>
			</div>
			<?php } ?>
		</div>
    </div>
	</div>
	<?php if($config_status_delivery_options !='0') { ?>
	<div class="<?php echo $class_status_delivery;?>">
		<div class="panel panel-default panel-body">
		<div class="custom-block-products">
			<div class="title-custom-block-product"><?php echo $config_delivery_options_title[$lang_id]['config_delivery_options_title'];?></div>
			<?php foreach ($banner_delivery_block as $delivery_block) { ?>
					<div class="custom-block-product" <?php if(($delivery_block['popup']=='1') && ($delivery_block['link'][$lang_id] !='')){ ?> onclick="banner_link_open('<?php echo $delivery_block['link'][$lang_id]; ?>')" <?php } elseif(($delivery_block['popup']=='0') && ($delivery_block['link'][$lang_id] !='')) { ?>onclick="location='<?php echo $delivery_block['link'][$lang_id]; ?>'" <?php } ?>>
							<div class="image">
								<img src="<?php echo $delivery_block['image']; ?>" alt="<?php echo $delivery_block['title'][$lang_id]; ?>"/>
							</div>
							<div class="text">
								<h4><?php echo $delivery_block['title'][$lang_id]; ?></h4>
								<p><?php echo $delivery_block['description'][$lang_id]; ?></p>
							</div>
					</div>	
			<?php } ?>
		</div>
		</div>
	</div>
	<?php } ?>
	<div class="tabs-product col-sm-12">
 <ul class="nav nav-tabs my-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><i class="fa fa-file-text-o fa-fw"></i><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><i class="fa fa-list-alt fa-fw"></i><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><i class="fa fa-comments-o fa-fw"></i><?php echo $tab_review; ?></a></li>
            <?php } ?>
			<?php if ($product_additional_tabs) { ?>
              <?php $additional_tab_i=0; foreach ($product_additional_tabs as $product_additional_tab) { ?>
                <li><a href="#product_additional_tabs<?php echo $additional_tab_i; ?>" data-toggle="tab"><i class="<?php echo $product_additional_tab['icon_tabs'];?>"></i> <?php echo $product_additional_tab['title']; ?></a></li>
              <?php $additional_tab_i++; } ?>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description" itemprop="description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered" itemprop="propertiesList" itemscope itemtype="http://schema.org/ItemList">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr itemprop="itemListElement" itemscope itemtype="http://schema.org/NameValueStructure">
                    <td itemprop="name"><?php echo $attribute['name']; ?></td>
                    <td itemprop="value"><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
			<?php if ($product_additional_tabs) { ?>
				<?php $additional_tab_i=0; foreach ($product_additional_tabs as $product_additional_tab) { ?>
				  <div class="tab-pane" id="product_additional_tabs<?php echo $additional_tab_i; ?>"><?php echo $product_additional_tab['text']; ?></div>
				<?php $additional_tab_i++; } ?>
			  <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
				<div <?php if($show_review_plus =='0') { ?>style="display:none;"<?php } ?>class="form-group <?php if($show_review_plus_requared) { ?>required<?php } ?>">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review-plus"><?php echo $entry_plus; ?></label>
                    <textarea name="plus" rows="5" id="input-review-plus" class="form-control"></textarea>
                  </div>
                </div>				
				<div <?php if($show_review_minus =='0') { ?>style="display:none;"<?php } ?>class="form-group <?php if($show_review_minus_requared) { ?>required<?php } ?>">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review-minus"><?php echo $entry_minus; ?></label>
                    <textarea name="minus" rows="5" id="input-review-minus" class="form-control"></textarea>
                  </div>
                </div>
				
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                 <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $btn_add_new_review; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
          </div>
		</div>	
 </div>
<?php $gen_carousel_featured = rand(10000, 50000);?> 
	<?php if ($products) { ?> 
		<div class="row">
		<div class="col-sm-12">
		<div class="container-module" style="margin-top:15px;">
			<div class="title-module"><span><?php echo $text_related; ?></span></div>
			<div class="product-slider">
			<div style="display: block; opacity: 1;" class="container-modules featured carousel_numb_featured<?php echo $gen_carousel_featured;?> owl-carousel">
			<?php foreach ($products as $product) { ?>
				<div class="item">
					<div itemprop="isRelatedTo" itemscope itemtype="http://schema.org/Product"  class="product-thumb transition">
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
												
							<a itemprop="url" href="<?php echo $product['href']; ?>"><img <?php if ($product['product_quantity'] <= 0 && $show_stock_status) { ?>data-status="<?php echo $product['stock_status']; ?>"<?php } ?> itemprop="image" <?php if($product['additional_image_hover']) { ?>data-additional-hover="<?php echo $product['additional_image_hover'];?>"<?php } ?> src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
						<?php if($show_special_timer_module =='1' && $product['special']){ ?>
								<div class="action-timer">
									<div id="countdown-featured-product-<?php echo $product['product_id'];?>"></div>		
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
									$('#countdown-featured-product-<?php echo $product['product_id'];?>').countdown({
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
						 <?php if($ns_on_off_module_quick_order =='1') { ?>
						<div class="actions-quick-order">
								<div class="quick-order">
								<button class="btn btn-fastorder <?php if (($product['product_quantity'] <= 0) and $disable_fastorder_button){ ?>hidden-quick-order<?php } ?>" type="button" data-toggle="tooltip" onclick="fastorder_open(<?php echo $product['product_id']?>);" title="<?php echo $config_text_open_form_send_order[$lang_id]['config_text_open_form_send_order']; ?>" <?php if (($product['product_quantity'] <= 0) and $disable_fastorder_button){ ?>disabled<?php } ?>>
									<?php if($icon_open_form_send_order !=''){ ?>
										<i style="color:#<?php echo $color_button_open_form_send_order ;?>;" class="<?php echo $icon_open_form_send_order;?> fa-fw"></i>
									<?php } else { ?>
										<i style="color:#<?php echo $color_button_open_form_send_order ;?>;" class="fa fa-shopping-bag fa-fw"></i>
									<?php } ?>
								<?php echo $config_text_open_form_send_order[$lang_id]['config_text_open_form_send_order']; ?>
								</button>	
							</div>
						</div>
						<?php } ?>
							<div class="product-name"><a href="<?php echo $product['href']; ?>"><span itemprop="name"><?php echo $product['name']; ?></span></a></div>
							<div itemprop="description" class="product-description"><?php echo $product['description']; ?></div>
							<div class="rating">
							<?php if ($product['rating']) { ?>
								<span itemscope itemprop="aggregateRating" itemtype="http://schema.org/AggregateRating">
									<meta itemprop="reviewCount" content="<?php echo preg_replace("/[^0-9]/", "", $product['reviews']); ?>">
									<meta itemprop="ratingValue" content="<?php echo $product['rating'] ?>">
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
							  </span>
							</div>
							<?php if ($product['price']) { ?>
							<div class="price" itemscope itemprop="offers" itemtype="http://schema.org/Offer">
							<meta itemprop="price" content="<?php echo rtrim(preg_replace("/[^0-9\.]/", "", ($product['special'] ? $product['special'] : $product['price'])), '.'); ?>">
							<meta itemprop="priceCurrency" content="<?php echo $product['currency']; ?>">
							<link itemprop="availability" href="http://schema.org/<?php echo ($product['availability'] ? 'InStock' : 'OutOfStock') ?>" />
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
								<div class="wishlist"><button class="btn btn-wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button></div>									
								<?php if (($product['product_quantity'] <= 0) and $disable_cart_button){ ?>
									<div class="cart"><button class="btn btn-general" type="button" disabled><?php if($change_text_cart_button_out_of_stock ==1) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
								<?php } else { ?>
									<div class="cart"><button class="btn btn-general" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php if($change_text_cart_button_out_of_stock ==1 && $product['product_quantity'] <= 0) { ?><span><?php echo $disable_cart_button_text; ?></span><?php } else { ?><i class="fa fa-shopping-basket"></i> <span><?php echo $button_cart; ?></span><?php } ?></button></div>
								<?php } ?>				
								<div class="compare"><button class="btn btn-compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button></div>								
							</div>
						</div>
					</div>
				</div>
			<?php } ?>
			</div>
			</div>
		</div>
		</div>
		</div>
	<?php } ?>	
<script type="text/javascript">
if (!$(".carousel_numb_featured<?php echo $gen_carousel_featured;?>").parents("#column-left, #column-right").length) {
	$('.carousel_numb_featured<?php echo $gen_carousel_featured;?>').owlCarousel({
		responsiveBaseWidth: ".featured.carousel_numb_featured<?php echo $gen_carousel_featured;?>",
		itemsCustom: [[120, 1], [190, 1],[250, 1],[400, 1], [500, 2], [630, 2], [750, 3], [900, 4], [1000, 4]],
		navigation: true,
		navigationText: ['<div class="btn btn-carousel-module next-prod"><i class="fa fa-angle-left arrow"></i></div>', '<div class="btn btn-carousel-module prev-prod"><i class="fa fa-angle-right arrow"></i></div>'],
		pagination: false
	}); 
}
</script>      
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
		<?php if($qucikviewmodule) { ?>
			<div id="quickview-my"><?php echo $qucikviewmodule;?></div>
		<?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php if($config_status_zoom_image !='0') { ?>							
<script src="catalog/view/theme/newstore/js/jquery.magnify.js" type="text/javascript"></script>
<link media="screen" href="catalog/view/theme/newstore/stylesheet/magnify.css" type="text/css" rel="stylesheet">
<script type="text/javascript">
$('.thumbnails a.zoom-magnify img').magnify({
	speed: 200,
	src: $('.thumbnails a.zoom-magnify').attr('href')
});		
$('.image-additional .item img').hover(function(){	
	$('.main-image img').attr('src', $(this).parent().attr('rel'));
	$('.main-image').attr('href', $(this).parent().attr('href'));
	$('.main-image img').attr('data-magnify-src',$(this).parent().attr('data-magnify-src'));
	$('.thumbnails a.zoom-magnify img').magnify({
		speed: 200,
		src: $(this).parent().attr('data-magnify-src')
	});	
	return false;
 });	
 var owladd = $('.thumbnails .image-additional');
function optionimage(image, image_zoom,image_thumb) {
	if($('.option-image-new').length > 0) {
		owladd.data('owlCarousel').removeItem(0);
	}
	$('.main-image img').attr('src',image);
	$('.main-image img').attr('data-magnify-src',image_zoom);
	$('.main-image').attr('href',image_zoom);
	$('.thumbnails a.zoom-magnify img').magnify({
		speed: 200,
		src: image_zoom
	});	
	var content = '<div class="item"><a class="option-image-new thumbnail" data-magnify-src="'+ image_zoom +'" rel="'+ image +'" href="'+ image_zoom +'" title=""><img src="'+ image_thumb +'" title="" alt="" /></a></div>';
    owladd.data('owlCarousel').addItem(content,0);
	$('.image-additional .item img').hover(function(){	
		$('.main-image img').attr('src', $(this).parent().attr('rel'));
		$('.main-image').attr('href', $(this).parent().attr('href'));
		$('.main-image img').attr('data-magnify-src',$(this).parent().attr('data-magnify-src'));
		$('.thumbnails a.zoom-magnify img').magnify({
			speed: 200,
			src: $(this).parent().attr('data-magnify-src')
		});	
		return false;
	});	
		
} 
</script>
<?php } else { ?>
<script type="text/javascript">
var owladd = $('.thumbnails .image-additional');
function optionimage(image, image_zoom,image_thumb) {
	if($('.option-image-new').length > 0) {
		owladd.data('owlCarousel').removeItem(0);
	}
	$('.main-image img').attr('src',image);
	$('.main-image img').attr('data-magnify-src',image_zoom);
	$('.main-image').attr('href',image_zoom);
	var content = '<div class="item"><a class="option-image-new thumbnail" data-magnify-src="'+ image_zoom +'" rel="'+ image +'" href="'+ image_zoom +'" title=""><img src="'+ image_thumb +'" title="" alt="" /></a></div>';
    owladd.data('owlCarousel').addItem(content,0);
	
	$('.image-additional .item img').hover(function(){	
		$('.main-image img').attr('src', $(this).parent().attr('rel'));
		$('.main-image').attr('href', $(this).parent().attr('href'));
		$('.main-image img').attr('data-magnify-src',$(this).parent().attr('data-magnify-src'));
		return false;
	});								
}
$('.image-additional .item img').hover(function(){	
	$('.main-image img').attr('src', $(this).parent().attr('rel'));
	$('.main-image').attr('href', $(this).parent().attr('href'));
	$('.main-image img').attr('data-magnify-src',$(this).parent().attr('data-magnify-src'));
	return false;
 });
 </script>
<?php } ?>
<script type="text/javascript">
$('.thumbnails .image-additional').owlCarousel({		
	responsiveBaseWidth: ".image-additional",
	itemsCustom: [[0, 1], [100, 2], [250, 3], [500, 4], [750, 5], [1000,6]],
	navigation: true,
	pagination:false,
	navigationText: ['<div class="btn btn-carousel-thumbnail next-prod"><i class="fa fa-angle-left arrow"></i></div>', '<div class="btn btn-carousel-thumbnail prev-prod"><i class="fa fa-angle-right arrow"></i></div>'],		
});
</script>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
				$('.options').removeClass('hidden-options');
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

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

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
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
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails .image-additional').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
<?php if (!$images) { ?>
$(document).ready(function() {	
	$('.thumbnails .main-image').magnificPopup({
		type:'image'
	});
});
<?php } ?>
$('.thumbnails .main-image').click(function(){
	if ($('.thumbnails .image-additional .item').length > 0) {
		$('.thumbnails .image-additional').magnificPopup('open', 0);
		return false
	} else {
		$(this).magnificPopup('open');
		return false
	}
});
//--></script>
 <script type="text/javascript">
			var url = document.location.toString();
			if (url.match('#tab-review')) {
			$('a[href=\'#tab-review\']').trigger('click');
			}
</script>

				<?php if($user_logged) { ?>		
				<script type="text/javascript">
				var loading_masked_img = '<img src="catalog/view/theme/newstore/image/ring-alt-1.svg" />';
				function loading_img_svg(action) {
					if (action) {
						$('#loading_img_svg').html(loading_masked_img);
						$('#loading_img_svg').show();
					} else {
						$('#loading_img_svg').html('');
						$('#loading_img_svg').hide();
					}
				}
				function show_editor(link) {
					$('body').prepend('<div id="loading_img_svg"></div>');
					loading_img_svg(true); 
					$('body').append('<div class="popup_banner"></div>');
					$('.popup_banner').popup({
						transition: 'all 0.3s',
						closetransitionend: function () {$(this).remove();}
					});
					$('.popup_banner').load(link, function() {
						$('.popup_banner').append('<i class="fa fa-times closepopup" onclick="$(\'.popup_banner\').popup(\'hide\');"></i>');
						loading_img_svg(false); 
						$('.popup_banner').popup('show');
					});
				}
				</script>
				<?php } ?>
			

<script type="text/javascript"><!--
function price_format_autocalc(n)
{ 
    c = <?php echo (empty($currency_autocalc['decimals']) ? "0" : $currency_autocalc['decimals'] ); ?>;
    d = '<?php echo $currency_autocalc['decimal_point']; ?>'; 
    t = '<?php echo $currency_autocalc['thousand_point']; ?>'; 
    s_left = '<?php echo $currency_autocalc['symbol_left']; ?>';
    s_right = '<?php echo $currency_autocalc['symbol_right']; ?>';
     
    n = n * <?php echo $currency_autocalc['value']; ?>;
    i = parseInt(n = Math.abs(n).toFixed(c)) + ''; 

    j = ((j = i.length) > 3) ? j % 3 : 0; 
    return s_left + (j ? i.substr(0, j) + t : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : '') + s_right; 
}

function calculate_tax_autocalc(price)
{
    <?php // Process Tax Rates
      if (isset($tax_rates) && $tax) {
         foreach ($tax_rates as $tax_rate) {
           if ($tax_rate['type'] == 'F') {
             echo 'price += '.$tax_rate['rate'].';';
           } elseif ($tax_rate['type'] == 'P') {
             echo 'price += (price * '.$tax_rate['rate'].') / 100.0;';
           }
         }
      }
    ?>
    return price;
}

function process_discounts_autocalc(price, quantity)
{
    <?php
      foreach ($dicounts_unf_autocalc as $discount) {
        echo 'if ((quantity >= '.$discount['quantity'].') && ('.$discount['price'].' < price)) price = '.$discount['price'].';'."\n";
      }
    ?>
    return price;
}


animate_delay = 10;

main_price_autocalc_final = calculate_tax_autocalc(<?php echo $price_value; ?>);
main_price_autocalc_start = calculate_tax_autocalc(<?php echo $price_value; ?>);
main_step = 0;
main_timeout_id = 0;

function animateMainPrice_callback() {
    main_price_autocalc_start += main_step;
    
    if ((main_step > 0) && (main_price_autocalc_start > main_price_autocalc_final)){
        main_price_autocalc_start = main_price_autocalc_final;
    } else if ((main_step < 0) && (main_price_autocalc_start < main_price_autocalc_final)) {
        main_price_autocalc_start = main_price_autocalc_final;
    } else if (main_step == 0) {
        main_price_autocalc_start = main_price_autocalc_final;
    }
    
    $('.autocalc-product-price').html( price_format_autocalc(main_price_autocalc_start) );
    
    if (main_price_autocalc_start != main_price_autocalc_final) {
        main_timeout_id = setTimeout(animateMainPrice_callback, animate_delay);
    }
}

function animateMainPriceAutocalc(price) {
    main_price_autocalc_start = main_price_autocalc_final;
    main_price_autocalc_final = price;
    main_step = (main_price_autocalc_final - main_price_autocalc_start) / 10;
    
    clearTimeout(main_timeout_id);
    main_timeout_id = setTimeout(animateMainPrice_callback, animate_delay);
}


<?php if ($special) { ?>
special_autocalc_price_final = calculate_tax_autocalc(<?php echo $special_value; ?>);
special_autocalc_price_start = calculate_tax_autocalc(<?php echo $special_value; ?>);
special_autocalc_step = 0;
special_autocalc_timeout_id = 0;

function animateSpecialPrice_autocalc_callback_autocalc() {
    special_autocalc_price_start += special_autocalc_step;
    
    if ((special_autocalc_step > 0) && (special_autocalc_price_start > special_autocalc_price_final)){
        special_autocalc_price_start = special_autocalc_price_final;
    } else if ((special_autocalc_step < 0) && (special_autocalc_price_start < special_autocalc_price_final)) {
        special_autocalc_price_start = special_autocalc_price_final;
    } else if (special_autocalc_step == 0) {
        special_autocalc_price_start = special_autocalc_price_final;
    }
    
    $('.autocalc-product-special').html( price_format_autocalc(special_autocalc_price_start) );
    
    if (special_autocalc_price_start != special_autocalc_price_final) {
        special_autocalc_timeout_id = setTimeout(animateSpecialPrice_autocalc_callback_autocalc, animate_delay);
    }
}

function animateSpecialPrice_autocalc(price) {
    special_autocalc_price_start = special_autocalc_price_final;
    special_autocalc_price_final = price;
    special_autocalc_step = (special_autocalc_price_final - special_autocalc_price_start) / 10;
    
    clearTimeout(special_autocalc_timeout_id);
    special_autocalc_timeout_id = setTimeout(animateSpecialPrice_autocalc_callback_autocalc, animate_delay);
}
<?php } ?>


function recalculateprice_autocalc()
{
    var main_price_autocalc = <?php echo (float)$price_value; ?>;
    var input_quantity = Number($('input[name="quantity"]').val());
    var special_autocalc = <?php echo (float)$special_value; ?>;
    var tax = 0;
    
    if (isNaN(input_quantity)) input_quantity = 0;
    
    <?php if ($special) { ?>
        special_coefficient = <?php echo ((float)$price_value/(float)$special_value); ?>;
    <?php } ?>
    main_price_autocalc = process_discounts_autocalc(main_price_autocalc, input_quantity);
    tax = process_discounts_autocalc(tax, input_quantity);
    
    
    var option_price = 0;
    
    <?php if ($points) { ?>
      var points = <?php echo (float)$points_value; ?>;
      $('input:checked,option:selected').each(function() {
          if ($(this).data('points')) points += Number($(this).data('points'));
      });
      $('.autocalc-product-points').html(points);
    <?php } ?>
    
    $('input:checked,option:selected').each(function() {
      if ($(this).data('prefix') == '=') {
        option_price += Number($(this).data('price'));
        main_price_autocalc = 0;
        special_autocalc = 0;
      }
    });
    
    $('input:checked,option:selected').each(function() {
      if ($(this).data('prefix') == '+') {
        option_price += Number($(this).data('price'));
      }
      if ($(this).data('prefix') == '-') {
        option_price -= Number($(this).data('price'));
      }
      if ($(this).data('prefix') == 'u') {
        pcnt = 1.0 + (Number($(this).data('price')) / 100.0);
        option_price *= pcnt;
        main_price_autocalc *= pcnt;
        special_autocalc *= pcnt;
      }
      if ($(this).data('prefix') == 'd') {
        pcnt = 1.0 - (Number($(this).data('price')) / 100.0);
        option_price *= pcnt;
        main_price_autocalc *= pcnt;
        special_autocalc *= pcnt;
      }
      if ($(this).data('prefix') == '*') {
        option_price *= Number($(this).data('price'));
        main_price_autocalc *= Number($(this).data('price'));
        special_autocalc *= Number($(this).data('price'));
      }
    });
    
    special_autocalc += option_price;
    main_price_autocalc += option_price;

    <?php if ($special) { ?>
      main_price_autocalc = special_autocalc * special_coefficient;
      tax = special_autocalc;
    <?php } else { ?>
      tax = main_price_autocalc;
    <?php } ?>
    
    // Process TAX.
    main_price_autocalc = calculate_tax_autocalc(main_price_autocalc);
    special_autocalc = calculate_tax_autocalc(special_autocalc);
    
    // Раскомментировать, если нужен вывод цены с умножением на количество
    main_price_autocalc *= input_quantity;
    special_autocalc *= input_quantity;
    tax *= input_quantity;

    // Display Main Price
    animateMainPriceAutocalc(main_price_autocalc);
      
    <?php if ($special) { ?>
      animateSpecialPrice_autocalc(special_autocalc);
    <?php } ?>
}

$(document).ready(function() {
    $('#product input[type="checkbox"]').bind('change', function() { recalculateprice_autocalc(); });
    $('#product input[type="radio"]').bind('change', function() { recalculateprice_autocalc(); });
    $('#product select').bind('change', function() { recalculateprice_autocalc(); });
    
    $quantity_autocalc = $('#product input[name="quantity"]');
    $quantity_autocalc.data('val', $quantity_autocalc.val());
    (function() {
        if ($quantity_autocalc.val() != $quantity_autocalc.data('val')){
            $quantity_autocalc.data('val',$quantity_autocalc.val());
            recalculateprice_autocalc();
        }
        setTimeout(arguments.callee, 250);
    })();    
    
    recalculateprice_autocalc();
});

//--></script>
      
<?php echo $footer; ?>