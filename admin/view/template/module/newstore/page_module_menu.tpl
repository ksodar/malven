		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#tab-featured-mod"><?php echo $tab_featured_mod;?></a></li>
			<li><a data-toggle="tab" href="#tab-special-mod"><?php echo $tab_special_mod;?></a></li>
			<li><a data-toggle="tab" href="#tab-bestseller-mod"><?php echo $tab_bestseller_mod;?></a></li>
			<li><a data-toggle="tab" href="#tab-latest-mod"><?php echo $tab_latest_mod;?></a></li>
			<li><a data-toggle="tab" href="#tab-alltabs-mod"><?php echo $tab_alltabs_mod;?></a></li>
			<li><a data-toggle="tab" href="#tab-productany-mod"><?php echo $tab_productany_mod;?></a></li>
		</ul>
		<div class="tab-pane active" id="tab-featured-mod">
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_setting_mod_featured;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_featured_model_product;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_featured_model_product) { ?>
							<input id="config_on_off_featured_model_product_yes" class="hide-radio" type="radio" name="config_on_off_featured_model_product" value="1" checked="checked" />
							<label for="config_on_off_featured_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_model_product_yes" class="hide-radio" type="radio" name="config_on_off_featured_model_product" value="1" />
							<label for="config_on_off_featured_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_featured_model_product) { ?>
							<input id="config_on_off_featured_model_product_no" class="hide-radio" type="radio" name="config_on_off_featured_model_product" value="0" checked="checked" />							
							<label for="config_on_off_featured_model_product_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_model_product_no" class="hide-radio" type="radio" name="config_on_off_featured_model_product" value="0" />							
							<label for="config_on_off_featured_model_product_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						 
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_featured_description;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_featured_description) { ?>
							<input id="config_on_off_featured_description_yes" class="hide-radio" type="radio" name="config_on_off_featured_description" value="1" checked="checked" />
							<label for="config_on_off_featured_description_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_description_yes" class="hide-radio" type="radio" name="config_on_off_featured_description" value="1" />
							<label for="config_on_off_featured_description_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_featured_description) { ?>
							<input id="config_on_off_featured_description_no" class="hide-radio" type="radio" name="config_on_off_featured_description" value="0" checked="checked" />							
							<label for="config_on_off_featured_description_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_description_no" class="hide-radio" type="radio" name="config_on_off_featured_description" value="0" />							
							<label for="config_on_off_featured_description_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
                  <label for="input-config_on_off_featured_slider_additional_image" class="col-sm-3 control-label"><?php echo $text_additional_image;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_on_off_featured_slider_additional_image" name="config_on_off_featured_slider_additional_image">
						<?php if($config_on_off_featured_slider_additional_image =='1') { ?>
						<option selected="selected" value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } ?>
						<?php if($config_on_off_featured_slider_additional_image =='2') { ?>
						<option selected="selected" value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } else { ?>
						<option value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } ?>
                        <?php if($config_on_off_featured_slider_additional_image =='0') { ?>
						 <option selected="selected" value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						 <option value="0"><?php echo $text_no; ?></option>
						<?php } ?>          
                    </select>
                  </div>
                </div>
				
				
				<div class="form-group">
                  <label for="input-featured_additional_animate" class="col-sm-3 control-label"><?php echo $text_select_featured_additional_animate_method;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-special_additional_animate" name="config_select_featured_additional_animate_method">
                        <?php echo $config_select_featured_additional_animate_method;?>
						<?php if($config_select_featured_additional_animate_method =='fade') { ?>
						<option selected="selected" value="fade">fade</option>
						<?php } else { ?>
						<option value="fade">fade</option>
						<?php } ?>
						<?php if($config_select_featured_additional_animate_method =='backSlide') { ?>
						<option selected="selected" value="backSlide">backSlide</option>
						<?php } else { ?>
						<option value="backSlide">backSlide</option>
						<?php } ?>
                        <?php if($config_select_featured_additional_animate_method =='goDown') { ?>
						 <option selected="selected" value="goDown">goDown</option>
						<?php } else { ?>
						 <option value="goDown">goDown</option>
						<?php } ?>
                        <?php if($config_select_featured_additional_animate_method =='fadeUp') { ?>
						 <option selected="selected" value="fadeUp">fadeUp</option>
						<?php } else { ?>
						 <option value="fadeUp">fadeUp</option>
						<?php } ?>
                       
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_featured_rating;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_featured_rating) { ?>
							<input id="config_on_off_featured_rating_yes" class="hide-radio" type="radio" name="config_on_off_featured_rating" value="1" checked="checked" />
							<label for="config_on_off_featured_rating_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_rating_yes" class="hide-radio" type="radio" name="config_on_off_featured_rating" value="1" />
							<label for="config_on_off_featured_rating_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_featured_rating) { ?>
							<input id="config_on_off_featured_rating_no" class="hide-radio" type="radio" name="config_on_off_featured_rating" value="0" checked="checked" />							
							<label for="config_on_off_featured_rating_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_rating_no" class="hide-radio" type="radio" name="config_on_off_featured_rating" value="0" />							
							<label for="config_on_off_featured_rating_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_featured_quantity_reviews;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_featured_quantity_reviews) { ?>
							<input id="config_on_off_featured_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_featured_quantity_reviews" value="1" checked="checked" />
							<label for="config_on_off_featured_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_featured_quantity_reviews" value="1" />
							<label for="config_on_off_featured_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_featured_quantity_reviews) { ?>
							<input id="config_on_off_featured_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_featured_quantity_reviews" value="0" checked="checked" />							
							<label for="config_on_off_featured_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_featured_quantity_reviews" value="0" />							
							<label for="config_on_off_featured_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						  
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_featured_fastorder;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_featured_fastorder) { ?>
							<input id="config_on_off_featured_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_featured_fastorder" value="1" checked="checked" />
							<label for="config_on_off_featured_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_featured_fastorder" value="1" />
							<label for="config_on_off_featured_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_featured_fastorder) { ?>
							<input id="config_on_off_featured_fastorder_no" class="hide-radio" type="radio" name="config_on_off_featured_fastorder" value="0" checked="checked" />							
							<label for="config_on_off_featured_fastorder_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_fastorder_no" class="hide-radio" type="radio" name="config_on_off_featured_fastorder" value="0" />							
							<label for="config_on_off_featured_fastorder_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_featured_wishlist;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_featured_wishlist) { ?>
							<input id="config_on_off_featured_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_featured_wishlist" value="1" checked="checked" />
							<label for="config_on_off_featured_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_featured_wishlist" value="1" />
							<label for="config_on_off_featured_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_featured_wishlist) { ?>
							<input id="config_on_off_featured_wishlist_no" class="hide-radio" type="radio" name="config_on_off_featured_wishlist" value="0" checked="checked" />							
							<label for="config_on_off_featured_wishlist_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_wishlist_no" class="hide-radio" type="radio" name="config_on_off_featured_wishlist" value="0" />							
							<label for="config_on_off_featured_wishlist_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_featured_compare;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_featured_compare) { ?>
							<input id="config_on_off_featured_compare_yes" class="hide-radio" type="radio" name="config_on_off_featured_compare" value="1" checked="checked" />
							<label for="config_on_off_featured_compare_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_compare_yes" class="hide-radio" type="radio" name="config_on_off_featured_compare" value="1" />
							<label for="config_on_off_featured_compare_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_featured_compare) { ?>
							<input id="config_on_off_featured_compare_no" class="hide-radio" type="radio" name="config_on_off_featured_compare" value="0" checked="checked" />							
							<label for="config_on_off_featured_compare_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_featured_compare_no" class="hide-radio" type="radio" name="config_on_off_featured_compare" value="0" />							
							<label for="config_on_off_featured_compare_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						 
					</div>
				</div>
			</div>
			<div class="tab-pane" id="tab-special-mod">
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_setting_mod_special;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_special_model_product;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_special_model_product) { ?>
							<input id="config_on_off_special_model_product_yes" class="hide-radio" type="radio" name="config_on_off_special_model_product" value="1" checked="checked" />
							<label for="config_on_off_special_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_model_product_yes" class="hide-radio" type="radio" name="config_on_off_special_model_product" value="1" />
							<label for="config_on_off_special_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_special_model_product) { ?>
							<input id="config_on_off_special_model_product_no" class="hide-radio" type="radio" name="config_on_off_special_model_product" value="0" checked="checked" />							
							<label for="config_on_off_special_model_product_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_model_product_no" class="hide-radio" type="radio" name="config_on_off_special_model_product" value="0" />							
							<label for="config_on_off_special_model_product_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_special_description;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_special_description) { ?>
							<input id="config_on_off_special_description_yes" class="hide-radio" type="radio" name="config_on_off_special_description" value="1" checked="checked" />
							<label for="config_on_off_special_description_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_description_yes" class="hide-radio" type="radio" name="config_on_off_special_description" value="1" />
							<label for="config_on_off_special_description_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_special_description) { ?>
							<input id="config_on_off_special_description_no" class="hide-radio" type="radio" name="config_on_off_special_description" value="0" checked="checked" />							
							<label for="config_on_off_special_description_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_description_no" class="hide-radio" type="radio" name="config_on_off_special_description" value="0" />							
							<label for="config_on_off_special_description_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				
				<div class="form-group">
                  <label for="input-config_on_off_special_slider_additional_image" class="col-sm-3 control-label"><?php echo $text_additional_image;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_on_off_special_slider_additional_image" name="config_on_off_special_slider_additional_image">
						<?php if($config_on_off_special_slider_additional_image =='1') { ?>
						<option selected="selected" value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } ?>
						<?php if($config_on_off_special_slider_additional_image =='2') { ?>
						<option selected="selected" value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } else { ?>
						<option value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } ?>
                        <?php if($config_on_off_special_slider_additional_image =='0') { ?>
						 <option selected="selected" value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						 <option value="0"><?php echo $text_no; ?></option>
						<?php } ?>          
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
                  <label for="input-special_additional_animate" class="col-sm-3 control-label"><?php echo $text_select_special_additional_animate_method;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-special_additional_animate" name="config_select_special_additional_animate_method">
                        <?php if($config_select_special_additional_animate_method =='fade') { ?>
						<option selected="selected" value="fade">fade</option>
						<?php } else { ?>
						<option value="fade">fade</option>
						<?php } ?>
						<?php if($config_select_special_additional_animate_method =='backSlide') { ?>
						<option selected="selected" value="backSlide">backSlide</option>
						<?php } else { ?>
						<option value="backSlide">backSlide</option>
						<?php } ?>
                        <?php if($config_select_special_additional_animate_method =='goDown') { ?>
						 <option selected="selected" value="goDown">goDown</option>
						<?php } else { ?>
						 <option value="goDown">goDown</option>
						<?php } ?>
                        <?php if($config_select_special_additional_animate_method =='fadeUp') { ?>
						 <option selected="selected" value="fadeUp">fadeUp</option>
						<?php } else { ?>
						 <option value="fadeUp">fadeUp</option>
						<?php } ?>
                       
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_special_rating;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_special_rating) { ?>
							<input id="config_on_off_special_rating_yes" class="hide-radio" type="radio" name="config_on_off_special_rating" value="1" checked="checked" />
							<label for="config_on_off_special_rating_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_rating_yes" class="hide-radio" type="radio" name="config_on_off_special_rating" value="1" />
							<label for="config_on_off_special_rating_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_special_rating) { ?>
							<input id="config_on_off_special_rating_no" class="hide-radio" type="radio" name="config_on_off_special_rating" value="0" checked="checked" />							
							<label for="config_on_off_special_rating_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_rating_no" class="hide-radio" type="radio" name="config_on_off_special_rating" value="0" />							
							<label for="config_on_off_special_rating_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_special_quantity_reviews;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_special_quantity_reviews) { ?>
							<input id="config_on_off_special_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_special_quantity_reviews" value="1" checked="checked" />
							<label for="config_on_off_special_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_special_quantity_reviews" value="1" />
							<label for="config_on_off_special_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_special_quantity_reviews) { ?>
							<input id="config_on_off_special_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_special_quantity_reviews" value="0" checked="checked" />							
							<label for="config_on_off_special_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_special_quantity_reviews" value="0" />							
							<label for="config_on_off_special_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>	
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_special_fastorder;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_special_fastorder) { ?>
							<input id="config_on_off_special_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_special_fastorder" value="1" checked="checked" />
							<label for="config_on_off_special_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_special_fastorder" value="1" />
							<label for="config_on_off_special_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_special_fastorder) { ?>
							<input id="config_on_off_special_fastorder_no" class="hide-radio" type="radio" name="config_on_off_special_fastorder" value="0" checked="checked" />							
							<label for="config_on_off_special_fastorder_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_fastorder_no" class="hide-radio" type="radio" name="config_on_off_special_fastorder" value="0" />							
							<label for="config_on_off_special_fastorder_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_special_wishlist;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_special_wishlist) { ?>
							<input id="config_on_off_special_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_special_wishlist" value="1" checked="checked" />
							<label for="config_on_off_special_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_special_wishlist" value="1" />
							<label for="config_on_off_special_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_special_wishlist) { ?>
							<input id="config_on_off_special_wishlist_no" class="hide-radio" type="radio" name="config_on_off_special_wishlist" value="0" checked="checked" />							
							<label for="config_on_off_special_wishlist_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_wishlist_no" class="hide-radio" type="radio" name="config_on_off_special_wishlist" value="0" />							
							<label for="config_on_off_special_wishlist_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_special_compare;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_special_compare) { ?>
							<input id="config_on_off_special_compare_yes" class="hide-radio" type="radio" name="config_on_off_special_compare" value="1" checked="checked" />
							<label for="config_on_off_special_compare_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_compare_yes" class="hide-radio" type="radio" name="config_on_off_special_compare" value="1" />
							<label for="config_on_off_special_compare_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_special_compare) { ?>
							<input id="config_on_off_special_compare_no" class="hide-radio" type="radio" name="config_on_off_special_compare" value="0" checked="checked" />							
							<label for="config_on_off_special_compare_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_special_compare_no" class="hide-radio" type="radio" name="config_on_off_special_compare" value="0" />							
							<label for="config_on_off_special_compare_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="tab-bestseller-mod">
			<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_setting_mod_bestseller;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_bestseller_model_product;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_bestseller_model_product) { ?>
							<input id="config_on_off_bestseller_model_product_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_model_product" value="1" checked="checked" />
							<label for="config_on_off_bestseller_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_model_product_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_model_product" value="1" />
							<label for="config_on_off_bestseller_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_bestseller_model_product) { ?>
							<input id="config_on_off_bestseller_model_product_no" class="hide-radio" type="radio" name="config_on_off_bestseller_model_product" value="0" checked="checked" />							
							<label for="config_on_off_bestseller_model_product_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_model_product_no" class="hide-radio" type="radio" name="config_on_off_bestseller_model_product" value="0" />							
							<label for="config_on_off_bestseller_model_product_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_bestseller_description;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_bestseller_description) { ?>
							<input id="config_on_off_bestseller_description_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_description" value="1" checked="checked" />
							<label for="config_on_off_bestseller_description_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_description_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_description" value="1" />
							<label for="config_on_off_bestseller_description_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_bestseller_description) { ?>
							<input id="config_on_off_bestseller_description_no" class="hide-radio" type="radio" name="config_on_off_bestseller_description" value="0" checked="checked" />							
							<label for="config_on_off_bestseller_description_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_description_no" class="hide-radio" type="radio" name="config_on_off_bestseller_description" value="0" />							
							<label for="config_on_off_bestseller_description_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				
				<div class="form-group">
                  <label for="input-config_on_off_bestseller_slider_additional_image" class="col-sm-3 control-label"><?php echo $text_additional_image;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_on_off_bestseller_slider_additional_image" name="config_on_off_bestseller_slider_additional_image">
						<?php if($config_on_off_bestseller_slider_additional_image =='1') { ?>
						<option selected="selected" value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } ?>
						<?php if($config_on_off_bestseller_slider_additional_image =='2') { ?>
						<option selected="selected" value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } else { ?>
						<option value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } ?>
                        <?php if($config_on_off_bestseller_slider_additional_image =='0') { ?>
						 <option selected="selected" value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						 <option value="0"><?php echo $text_no; ?></option>
						<?php } ?>          
                    </select>
                  </div>
                </div>
				<div class="form-group">
                  <label for="input-bestseller_additional_animate" class="col-sm-3 control-label"><?php echo $text_select_bestseller_additional_animate_method;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-special_additional_animate" name="config_select_bestseller_additional_animate_method">
                        <?php echo $config_select_bestseller_additional_animate_method;?>
						<?php if($config_select_bestseller_additional_animate_method =='fade') { ?>
						<option selected="selected" value="fade">fade</option>
						<?php } else { ?>
						<option value="fade">fade</option>
						<?php } ?>
						<?php if($config_select_bestseller_additional_animate_method =='backSlide') { ?>
						<option selected="selected" value="backSlide">backSlide</option>
						<?php } else { ?>
						<option value="backSlide">backSlide</option>
						<?php } ?>
                        <?php if($config_select_bestseller_additional_animate_method =='goDown') { ?>
						 <option selected="selected" value="goDown">goDown</option>
						<?php } else { ?>
						 <option value="goDown">goDown</option>
						<?php } ?>
                        <?php if($config_select_bestseller_additional_animate_method =='fadeUp') { ?>
						 <option selected="selected" value="fadeUp">fadeUp</option>
						<?php } else { ?>
						 <option value="fadeUp">fadeUp</option>
						<?php } ?>
                       
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_bestseller_rating;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_bestseller_rating) { ?>
							<input id="config_on_off_bestseller_rating_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_rating" value="1" checked="checked" />
							<label for="config_on_off_bestseller_rating_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_rating_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_rating" value="1" />
							<label for="config_on_off_bestseller_rating_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_bestseller_rating) { ?>
							<input id="config_on_off_bestseller_rating_no" class="hide-radio" type="radio" name="config_on_off_bestseller_rating" value="0" checked="checked" />							
							<label for="config_on_off_bestseller_rating_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_rating_no" class="hide-radio" type="radio" name="config_on_off_bestseller_rating" value="0" />							
							<label for="config_on_off_bestseller_rating_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_bestseller_quantity_reviews;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_bestseller_quantity_reviews) { ?>
							<input id="config_on_off_bestseller_quantity_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_quantity_reviews" value="1" checked="checked" />
							<label for="config_on_off_bestseller_quantity_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_quantity_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_quantity_reviews" value="1" />
							<label for="config_on_off_bestseller_quantity_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_bestseller_quantity_reviews) { ?>
							<input id="config_on_off_bestseller_quantity_no" class="hide-radio" type="radio" name="config_on_off_bestseller_quantity_reviews" value="0" checked="checked" />							
							<label for="config_on_off_bestseller_quantity_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_quantity_no" class="hide-radio" type="radio" name="config_on_off_bestseller_quantity_reviews" value="0" />							
							<label for="config_on_off_bestseller_quantity_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_bestseller_fastorder;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_bestseller_fastorder) { ?>
							<input id="config_on_off_bestseller_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_fastorder" value="1" checked="checked" />
							<label for="config_on_off_bestseller_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_fastorder" value="1" />
							<label for="config_on_off_bestseller_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_bestseller_fastorder) { ?>
							<input id="config_on_off_bestseller_fastorder_no" class="hide-radio" type="radio" name="config_on_off_bestseller_fastorder" value="0" checked="checked" />							
							<label for="config_on_off_bestseller_fastorder_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_fastorder_no" class="hide-radio" type="radio" name="config_on_off_bestseller_fastorder" value="0" />							
							<label for="config_on_off_bestseller_fastorder_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_bestseller_wishlist;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_bestseller_wishlist) { ?>
							<input id="config_on_off_bestseller_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_wishlist" value="1" checked="checked" />
							<label for="config_on_off_bestseller_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_wishlist" value="1" />
							<label for="config_on_off_bestseller_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_bestseller_wishlist) { ?>
							<input id="config_on_off_bestseller_wishlist_no" class="hide-radio" type="radio" name="config_on_off_bestseller_wishlist" value="0" checked="checked" />							
							<label for="config_on_off_bestseller_wishlist_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_wishlist_no" class="hide-radio" type="radio" name="config_on_off_bestseller_wishlist" value="0" />							
							<label for="config_on_off_bestseller_wishlist_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_bestseller_compare;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_bestseller_compare) { ?>
							<input id="config_on_off_bestseller_compare_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_compare" value="1" checked="checked" />
							<label for="config_on_off_bestseller_compare_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_compare_yes" class="hide-radio" type="radio" name="config_on_off_bestseller_compare" value="1" />
							<label for="config_on_off_bestseller_compare_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_bestseller_compare) { ?>
							<input id="config_on_off_bestseller_compare_no" class="hide-radio" type="radio" name="config_on_off_bestseller_compare" value="0" checked="checked" />							
							<label for="config_on_off_bestseller_compare_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_bestseller_compare_no" class="hide-radio" type="radio" name="config_on_off_bestseller_compare" value="0" />							
							<label for="config_on_off_bestseller_compare_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="tab-latest-mod">
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_setting_mod_latest;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_latest_model_product;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_latest_model_product) { ?>
							<input id="config_on_off_latest_model_product_yes" class="hide-radio" type="radio" name="config_on_off_latest_model_product" value="1" checked="checked" />
							<label for="config_on_off_latest_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_model_product_yes" class="hide-radio" type="radio" name="config_on_off_latest_model_product" value="1" />
							<label for="config_on_off_latest_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_latest_model_product) { ?>
							<input id="config_on_off_latest_model_product_no" class="hide-radio" type="radio" name="config_on_off_latest_model_product" value="0" checked="checked" />							
							<label for="config_on_off_latest_model_product_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_model_product_no" class="hide-radio" type="radio" name="config_on_off_latest_model_product" value="0" />							
							<label for="config_on_off_latest_model_product_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_latest_description;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_latest_description) { ?>
							<input id="config_on_off_latest_description_yes" class="hide-radio" type="radio" name="config_on_off_latest_description" value="1" checked="checked" />
							<label for="config_on_off_latest_description_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_description_yes" class="hide-radio" type="radio" name="config_on_off_latest_description" value="1" />
							<label for="config_on_off_latest_description_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_latest_description) { ?>
							<input id="config_on_off_latest_description_no" class="hide-radio" type="radio" name="config_on_off_latest_description" value="0" checked="checked" />							
							<label for="config_on_off_latest_description_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_description_no" class="hide-radio" type="radio" name="config_on_off_latest_description" value="0" />							
							<label for="config_on_off_latest_description_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
                  <label for="input-config_on_off_latest_slider_additional_image" class="col-sm-3 control-label"><?php echo $text_additional_image;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_on_off_latest_slider_additional_image" name="config_on_off_latest_slider_additional_image">
						<?php if($config_on_off_latest_slider_additional_image =='1') { ?>
						<option selected="selected" value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } ?>
						<?php if($config_on_off_latest_slider_additional_image =='2') { ?>
						<option selected="selected" value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } else { ?>
						<option value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } ?>
                        <?php if($config_on_off_latest_slider_additional_image =='0') { ?>
						 <option selected="selected" value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						 <option value="0"><?php echo $text_no; ?></option>
						<?php } ?>          
                    </select>
                  </div>
                </div>
				<div class="form-group">
                  <label for="input-latest_additional_animate" class="col-sm-3 control-label"><?php echo $text_select_latest_additional_animate_method;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-special_additional_animate" name="config_select_latest_additional_animate_method">
                        <?php echo $config_select_latest_additional_animate_method;?>
						<?php if($config_select_latest_additional_animate_method =='fade') { ?>
						<option selected="selected" value="fade">fade</option>
						<?php } else { ?>
						<option value="fade">fade</option>
						<?php } ?>
						<?php if($config_select_latest_additional_animate_method =='backSlide') { ?>
						<option selected="selected" value="backSlide">backSlide</option>
						<?php } else { ?>
						<option value="backSlide">backSlide</option>
						<?php } ?>
                        <?php if($config_select_latest_additional_animate_method =='goDown') { ?>
						 <option selected="selected" value="goDown">goDown</option>
						<?php } else { ?>
						 <option value="goDown">goDown</option>
						<?php } ?>
                        <?php if($config_select_latest_additional_animate_method =='fadeUp') { ?>
						 <option selected="selected" value="fadeUp">fadeUp</option>
						<?php } else { ?>
						 <option value="fadeUp">fadeUp</option>
						<?php } ?>
                       
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_latest_rating;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_latest_rating) { ?>
							<input id="config_on_off_latest_rating_yes" class="hide-radio" type="radio" name="config_on_off_latest_rating" value="1" checked="checked" />
							<label for="config_on_off_latest_rating_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_rating_yes" class="hide-radio" type="radio" name="config_on_off_latest_rating" value="1" />
							<label for="config_on_off_latest_rating_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_latest_rating) { ?>
							<input id="config_on_off_latest_rating_no" class="hide-radio" type="radio" name="config_on_off_latest_rating" value="0" checked="checked" />							
							<label for="config_on_off_latest_rating_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_rating_no" class="hide-radio" type="radio" name="config_on_off_latest_rating" value="0" />							
							<label for="config_on_off_latest_rating_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_latest_quantity_reviews;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_latest_quantity_reviews) { ?>
							<input id="config_on_off_latest_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_latest_quantity_reviews" value="1" checked="checked" />
							<label for="config_on_off_latest_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_latest_quantity_reviews" value="1" />
							<label for="config_on_off_latest_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_latest_quantity_reviews) { ?>
							<input id="config_on_off_latest_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_latest_quantity_reviews" value="0" checked="checked" />							
							<label for="config_on_off_latest_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_latest_quantity_reviews" value="0" />							
							<label for="config_on_off_latest_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_latest_fastorder;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_latest_fastorder) { ?>
							<input id="config_on_off_latest_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_latest_fastorder" value="1" checked="checked" />
							<label for="config_on_off_latest_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_latest_fastorder" value="1" />
							<label for="config_on_off_latest_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_latest_fastorder) { ?>
							<input id="config_on_off_latest_fastorder_no" class="hide-radio" type="radio" name="config_on_off_latest_fastorder" value="0" checked="checked" />							
							<label for="config_on_off_latest_fastorder_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_fastorder_no" class="hide-radio" type="radio" name="config_on_off_latest_fastorder" value="0" />							
							<label for="config_on_off_latest_fastorder_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_latest_wishlist;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_latest_wishlist) { ?>
							<input id="config_on_off_latest_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_latest_wishlist" value="1" checked="checked" />
							<label for="config_on_off_latest_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_latest_wishlist" value="1" />
							<label for="config_on_off_latest_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_latest_wishlist) { ?>
							<input id="config_on_off_latest_wishlist_no" class="hide-radio" type="radio" name="config_on_off_latest_wishlist" value="0" checked="checked" />							
							<label for="config_on_off_latest_wishlist_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_wishlist_no" class="hide-radio" type="radio" name="config_on_off_latest_wishlist" value="0" />							
							<label for="config_on_off_latest_wishlist_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_latest_compare;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_latest_compare) { ?>
							<input id="config_on_off_latest_compare_yes" class="hide-radio" type="radio" name="config_on_off_latest_compare" value="1" checked="checked" />
							<label for="config_on_off_latest_compare_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_compare_yes" class="hide-radio" type="radio" name="config_on_off_latest_compare" value="1" />
							<label for="config_on_off_latest_compare_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_latest_compare) { ?>
							<input id="config_on_off_latest_compare_no" class="hide-radio" type="radio" name="config_on_off_latest_compare" value="0" checked="checked" />							
							<label for="config_on_off_latest_compare_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_latest_compare_no" class="hide-radio" type="radio" name="config_on_off_latest_compare" value="0" />							
							<label for="config_on_off_latest_compare_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="tab-alltabs-mod">
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_setting_mod_tab_featured;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_featured_model_product;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_featured_model_product) { ?>
							<input id="config_on_off_tab_featured_model_product_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_model_product" value="1" checked="checked" />
							<label for="config_on_off_tab_featured_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_model_product_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_model_product" value="1" />
							<label for="config_on_off_tab_featured_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_featured_model_product) { ?>
							<input id="config_on_off_tab_featured_model_product_yes_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_model_product" value="0" checked="checked" />							
							<label for="config_on_off_tab_featured_model_product_yes_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_model_product_yes_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_model_product" value="0" />							
							<label for="config_on_off_tab_featured_model_product_yes_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_featured_description;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_featured_description) { ?>
							<input id="config_on_off_tab_featured_description_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_description" value="1" checked="checked" />
							<label for="config_on_off_tab_featured_description_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_description_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_description" value="1" />
							<label for="config_on_off_tab_featured_description_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_featured_description) { ?>
							<input id="config_on_off_tab_featured_description_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_description" value="0" checked="checked" />							
							<label for="config_on_off_tab_featured_description_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_description_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_description" value="0" />							
							<label for="config_on_off_tab_featured_description_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				
				<div class="form-group">
                  <label for="input-config_on_off_tab_featured_slider_additional_image" class="col-sm-3 control-label"><?php echo $text_additional_image;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_on_off_tab_featured_slider_additional_image" name="config_on_off_tab_featured_slider_additional_image">
						<?php if($config_on_off_tab_featured_slider_additional_image =='1') { ?>
						<option selected="selected" value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } ?>
						<?php if($config_on_off_tab_featured_slider_additional_image =='2') { ?>
						<option selected="selected" value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } else { ?>
						<option value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } ?>
                        <?php if($config_on_off_tab_featured_slider_additional_image =='0') { ?>
						 <option selected="selected" value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						 <option value="0"><?php echo $text_no; ?></option>
						<?php } ?>          
                    </select>
                  </div>
                </div>
				<div class="form-group">
                  <label for="input-tab_featured_additional_animate" class="col-sm-3 control-label"><?php echo $text_select_tab_featured_additional_animate_method;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-special_additional_animate" name="config_select_tab_featured_additional_animate_method">
                        <?php echo $config_select_tab_featured_additional_animate_method;?>
						<?php if($config_select_tab_featured_additional_animate_method =='fade') { ?>
						<option selected="selected" value="fade">fade</option>
						<?php } else { ?>
						<option value="fade">fade</option>
						<?php } ?>
						<?php if($config_select_tab_featured_additional_animate_method =='backSlide') { ?>
						<option selected="selected" value="backSlide">backSlide</option>
						<?php } else { ?>
						<option value="backSlide">backSlide</option>
						<?php } ?>
                        <?php if($config_select_tab_featured_additional_animate_method =='goDown') { ?>
						 <option selected="selected" value="goDown">goDown</option>
						<?php } else { ?>
						 <option value="goDown">goDown</option>
						<?php } ?>
                        <?php if($config_select_tab_featured_additional_animate_method =='fadeUp') { ?>
						 <option selected="selected" value="fadeUp">fadeUp</option>
						<?php } else { ?>
						 <option value="fadeUp">fadeUp</option>
						<?php } ?>
                       
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_featured_rating;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_featured_rating) { ?>
							<input id="config_on_off_tab_featured_rating_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_rating" value="1" checked="checked" />
							<label for="config_on_off_tab_featured_rating_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_rating_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_rating" value="1" />
							<label for="config_on_off_tab_featured_rating_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_featured_rating) { ?>
							<input id="config_on_off_tab_featured_rating_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_rating" value="0" checked="checked" />							
							<label for="config_on_off_tab_featured_rating_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_rating_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_rating" value="0" />							
							<label for="config_on_off_tab_featured_rating_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_featured_quantity_reviews;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_featured_quantity_reviews) { ?>
							<input id="config_on_off_tab_featured_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_quantity_reviews" value="1" checked="checked" />
							<label for="config_on_off_tab_featured_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_quantity_reviews" value="1" />
							<label for="config_on_off_tab_featured_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_featured_quantity_reviews) { ?>
							<input id="config_on_off_tab_featured_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_quantity_reviews" value="0" checked="checked" />							
							<label for="config_on_off_tab_featured_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_quantity_reviews" value="0" />							
							<label for="config_on_off_tab_featured_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_featured_fastorder;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_featured_fastorder) { ?>
							<input id="config_on_off_tab_featured_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_fastorder" value="1" checked="checked" />
							<label for="config_on_off_tab_featured_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_fastorder" value="1" />
							<label for="config_on_off_tab_featured_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_featured_fastorder) { ?>
							<input id="config_on_off_tab_featured_fastorder_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_fastorder" value="0" checked="checked" />							
							<label for="config_on_off_tab_featured_fastorder_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_fastorder_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_fastorder" value="0" />							
							<label for="config_on_off_tab_featured_fastorder_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_featured_wishlist;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_featured_wishlist) { ?>
							<input id="config_on_off_tab_featured_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_wishlist" value="1" checked="checked" />
							<label for="config_on_off_tab_featured_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_wishlist" value="1" />
							<label for="config_on_off_tab_featured_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_featured_wishlist) { ?>
							<input id="config_on_off_tab_featured_wishlist_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_wishlist" value="0" checked="checked" />							
							<label for="config_on_off_tab_featured_wishlist_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_wishlist_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_wishlist" value="0" />							
							<label for="config_on_off_tab_featured_wishlist_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_featured_compare;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_featured_compare) { ?>
							<input id="config_on_off_tab_featured_compare_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_compare" value="1" checked="checked" />
							<label for="config_on_off_tab_featured_compare_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_compare_yes" class="hide-radio" type="radio" name="config_on_off_tab_featured_compare" value="1" />
							<label for="config_on_off_tab_featured_compare_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_featured_compare) { ?>
							<input id="config_on_off_tab_featured_compare_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_compare" value="0" checked="checked" />							
							<label for="config_on_off_tab_featured_compare_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_featured_compare_no" class="hide-radio" type="radio" name="config_on_off_tab_featured_compare" value="0" />							
							<label for="config_on_off_tab_featured_compare_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_setting_mod_tab_latest;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_latest_model_product;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_latest_model_product) { ?>
							<input id="config_on_off_tab_latest_model_product_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_model_product" value="1" checked="checked" />
							<label for="config_on_off_tab_latest_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_model_product_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_model_product" value="1" />
							<label for="config_on_off_tab_latest_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_latest_model_product) { ?>
							<input id="config_on_off_tab_latest_model_product_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_model_product" value="0" checked="checked" />							
							<label for="config_on_off_tab_latest_model_product_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_model_product_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_model_product" value="0" />							
							<label for="config_on_off_tab_latest_model_product_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_latest_description;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_latest_description) { ?>
							<input id="config_on_off_tab_latest_description_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_description" value="1" checked="checked" />
							<label for="config_on_off_tab_latest_description_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_description_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_description" value="1" />
							<label for="config_on_off_tab_latest_description_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_latest_description) { ?>
							<input id="config_on_off_tab_latest_description_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_description" value="0" checked="checked" />							
							<label for="config_on_off_tab_latest_description_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_description_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_description" value="0" />							
							<label for="config_on_off_tab_latest_description_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				
				<div class="form-group">
                  <label for="input-config_on_off_tab_latest_slider_additional_image" class="col-sm-3 control-label"><?php echo $text_additional_image;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_on_off_tab_latest_slider_additional_image" name="config_on_off_tab_latest_slider_additional_image">
						<?php if($config_on_off_tab_latest_slider_additional_image =='1') { ?>
						<option selected="selected" value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } ?>
						<?php if($config_on_off_tab_latest_slider_additional_image =='2') { ?>
						<option selected="selected" value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } else { ?>
						<option value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } ?>
                        <?php if($config_on_off_tab_latest_slider_additional_image =='0') { ?>
						 <option selected="selected" value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						 <option value="0"><?php echo $text_no; ?></option>
						<?php } ?>          
                    </select>
                  </div>
                </div>
				<div class="form-group">
                  <label for="input-tab_latest_additional_animate" class="col-sm-3 control-label"><?php echo $text_select_tab_latest_additional_animate_method;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-special_additional_animate" name="config_select_tab_latest_additional_animate_method">
                        <?php echo $config_select_tab_latest_additional_animate_method;?>
						<?php if($config_select_tab_latest_additional_animate_method =='fade') { ?>
						<option selected="selected" value="fade">fade</option>
						<?php } else { ?>
						<option value="fade">fade</option>
						<?php } ?>
						<?php if($config_select_tab_latest_additional_animate_method =='backSlide') { ?>
						<option selected="selected" value="backSlide">backSlide</option>
						<?php } else { ?>
						<option value="backSlide">backSlide</option>
						<?php } ?>
                        <?php if($config_select_tab_latest_additional_animate_method =='goDown') { ?>
						 <option selected="selected" value="goDown">goDown</option>
						<?php } else { ?>
						 <option value="goDown">goDown</option>
						<?php } ?>
                        <?php if($config_select_tab_latest_additional_animate_method =='fadeUp') { ?>
						 <option selected="selected" value="fadeUp">fadeUp</option>
						<?php } else { ?>
						 <option value="fadeUp">fadeUp</option>
						<?php } ?>
                       
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_latest_rating;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_latest_rating) { ?>
							<input id="config_on_off_tab_latest_rating_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_rating" value="1" checked="checked" />
							<label for="config_on_off_tab_latest_rating_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_rating_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_rating" value="1" />
							<label for="config_on_off_tab_latest_rating_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_latest_rating) { ?>
							<input id="config_on_off_tab_latest_rating_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_rating" value="0" checked="checked" />							
							<label for="config_on_off_tab_latest_rating_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_rating_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_rating" value="0" />							
							<label for="config_on_off_tab_latest_rating_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_latest_quantity_reviews;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_latest_quantity_reviews) { ?>
							<input id="config_on_off_tab_latest_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_quantity_reviews" value="1" checked="checked" />
							<label for="config_on_off_tab_latest_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_quantity_reviews" value="1" />
							<label for="config_on_off_tab_latest_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_latest_quantity_reviews) { ?>
							<input id="config_on_off_tab_latest_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_quantity_reviews" value="0" checked="checked" />							
							<label for="config_on_off_tab_latest_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_quantity_reviews" value="0" />							
							<label for="config_on_off_tab_latest_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_latest_fastorder;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_latest_fastorder) { ?>
							<input id="config_on_off_tab_latest_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_fastorder" value="1" checked="checked" />
							<label for="config_on_off_tab_latest_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_fastorder" value="1" />
							<label for="config_on_off_tab_latest_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_latest_fastorder) { ?>
							<input id="config_on_off_tab_latest_fastorder_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_fastorder" value="0" checked="checked" />							
							<label for="config_on_off_tab_latest_fastorder_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_fastorder_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_fastorder" value="0" />							
							<label for="config_on_off_tab_latest_fastorder_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_latest_wishlist;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_latest_wishlist) { ?>
							<input id="config_on_off_tab_latest_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_wishlist" value="1" checked="checked" />
							<label for="config_on_off_tab_latest_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_wishlist" value="1" />
							<label for="config_on_off_tab_latest_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_latest_wishlist) { ?>
							<input id="config_on_off_tab_latest_wishlist_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_wishlist" value="0" checked="checked" />							
							<label for="config_on_off_tab_latest_wishlist_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_wishlist_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_wishlist" value="0" />							
							<label for="config_on_off_tab_latest_wishlist_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_latest_compare;?></label>
					<div class="col-sm-9">	
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_latest_compare) { ?>
							<input id="config_on_off_tab_latest_compare_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_compare" value="1" checked="checked" />
							<label for="config_on_off_tab_latest_compare_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_compare_yes" class="hide-radio" type="radio" name="config_on_off_tab_latest_compare" value="1" />
							<label for="config_on_off_tab_latest_compare_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_latest_compare) { ?>
							<input id="config_on_off_tab_latest_compare_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_compare" value="0" checked="checked" />							
							<label for="config_on_off_tab_latest_compare_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_latest_compare_no" class="hide-radio" type="radio" name="config_on_off_tab_latest_compare" value="0" />							
							<label for="config_on_off_tab_latest_compare_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_setting_mod_tab_bestseller;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_bestseller_model_product;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_bestseller_model_product) { ?>
							<input id="config_on_off_tab_bestseller_model_product_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_model_product" value="1" checked="checked" />
							<label for="config_on_off_tab_bestseller_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_model_product_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_model_product" value="1" />
							<label for="config_on_off_tab_bestseller_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_bestseller_model_product) { ?>
							<input id="config_on_off_tab_bestseller_model_product_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_model_product" value="0" checked="checked" />							
							<label for="config_on_off_tab_bestseller_model_product_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_model_product_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_model_product" value="0" />							
							<label for="config_on_off_tab_bestseller_model_product_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_bestseller_description;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_bestseller_description) { ?>
							<input id="config_on_off_tab_bestseller_description_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_description" value="1" checked="checked" />
							<label for="config_on_off_tab_bestseller_description_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_description_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_description" value="1" />
							<label for="config_on_off_tab_bestseller_description_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_bestseller_description) { ?>
							<input id="config_on_off_tab_bestseller_description_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_description" value="0" checked="checked" />							
							<label for="config_on_off_tab_bestseller_description_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_description_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_description" value="0" />							
							<label for="config_on_off_tab_bestseller_description_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
                  <label for="input-config_on_off_tab_bestseller_slider_additional_image" class="col-sm-3 control-label"><?php echo $text_additional_image;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_on_off_tab_bestseller_slider_additional_image" name="config_on_off_tab_bestseller_slider_additional_image">
						<?php if($config_on_off_tab_bestseller_slider_additional_image =='1') { ?>
						<option selected="selected" value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } ?>
						<?php if($config_on_off_tab_bestseller_slider_additional_image =='2') { ?>
						<option selected="selected" value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } else { ?>
						<option value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } ?>
                        <?php if($config_on_off_tab_bestseller_slider_additional_image =='0') { ?>
						 <option selected="selected" value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						 <option value="0"><?php echo $text_no; ?></option>
						<?php } ?>          
                    </select>
                  </div>
                </div>
				<div class="form-group">
                  <label for="input-tab_bestseller_additional_animate" class="col-sm-3 control-label"><?php echo $text_select_tab_bestseller_additional_animate_method;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-special_additional_animate" name="config_select_tab_bestseller_additional_animate_method">
                        <?php echo $config_select_tab_bestseller_additional_animate_method;?>
						<?php if($config_select_tab_bestseller_additional_animate_method =='fade') { ?>
						<option selected="selected" value="fade">fade</option>
						<?php } else { ?>
						<option value="fade">fade</option>
						<?php } ?>
						<?php if($config_select_tab_bestseller_additional_animate_method =='backSlide') { ?>
						<option selected="selected" value="backSlide">backSlide</option>
						<?php } else { ?>
						<option value="backSlide">backSlide</option>
						<?php } ?>
                        <?php if($config_select_tab_bestseller_additional_animate_method =='goDown') { ?>
						 <option selected="selected" value="goDown">goDown</option>
						<?php } else { ?>
						 <option value="goDown">goDown</option>
						<?php } ?>
                        <?php if($config_select_tab_bestseller_additional_animate_method =='fadeUp') { ?>
						 <option selected="selected" value="fadeUp">fadeUp</option>
						<?php } else { ?>
						 <option value="fadeUp">fadeUp</option>
						<?php } ?>
                       
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_bestseller_rating;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_bestseller_rating) { ?>
							<input id="config_on_off_tab_bestseller_rating_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_rating" value="1" checked="checked" />
							<label for="config_on_off_tab_bestseller_rating_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_rating_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_rating" value="1" />
							<label for="config_on_off_tab_bestseller_rating_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_bestseller_rating) { ?>
							<input id="config_on_off_tab_bestseller_rating_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_rating" value="0" checked="checked" />							
							<label for="config_on_off_tab_bestseller_rating_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_rating_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_rating" value="0" />							
							<label for="config_on_off_tab_bestseller_rating_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_bestseller_quantity_reviews;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_bestseller_quantity_reviews) { ?>
							<input id="config_on_off_tab_bestseller_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_quantity_reviews" value="1" checked="checked" />
							<label for="config_on_off_tab_bestseller_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_quantity_reviews" value="1" />
							<label for="config_on_off_tab_bestseller_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_bestseller_quantity_reviews) { ?>
							<input id="config_on_off_tab_bestseller_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_quantity_reviews" value="0" checked="checked" />							
							<label for="config_on_off_tab_bestseller_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_quantity_reviews" value="0" />							
							<label for="config_on_off_tab_bestseller_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_bestseller_fastorder;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_bestseller_fastorder) { ?>
							<input id="config_on_off_tab_bestseller_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_fastorder" value="1" checked="checked" />
							<label for="config_on_off_tab_bestseller_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_fastorder" value="1" />
							<label for="config_on_off_tab_bestseller_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_bestseller_fastorder) { ?>
							<input id="config_on_off_tab_bestseller_fastorder_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_fastorder" value="0" checked="checked" />							
							<label for="config_on_off_tab_bestseller_fastorder_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_fastorder_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_fastorder" value="0" />							
							<label for="config_on_off_tab_bestseller_fastorder_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_bestseller_wishlist;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_bestseller_wishlist) { ?>
							<input id="config_on_off_tab_bestseller_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_wishlist" value="1" checked="checked" />
							<label for="config_on_off_tab_bestseller_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_wishlist" value="1" />
							<label for="config_on_off_tab_bestseller_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_bestseller_wishlist) { ?>
							<input id="config_on_off_tab_bestseller_wishlist_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_wishlist" value="0" checked="checked" />							
							<label for="config_on_off_tab_bestseller_wishlist_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_wishlist_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_wishlist" value="0" />							
							<label for="config_on_off_tab_bestseller_wishlist_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_bestseller_compare;?></label>
					<div class="col-sm-9">	
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_bestseller_compare) { ?>
							<input id="config_on_off_tab_bestseller_compare_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_compare" value="1" checked="checked" />
							<label for="config_on_off_tab_bestseller_compare_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_compare_yes" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_compare" value="1" />
							<label for="config_on_off_tab_bestseller_compare_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_bestseller_compare) { ?>
							<input id="config_on_off_tab_bestseller_compare_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_compare" value="0" checked="checked" />							
							<label for="config_on_off_tab_bestseller_compare_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_bestseller_compare_no" class="hide-radio" type="radio" name="config_on_off_tab_bestseller_compare" value="0" />							
							<label for="config_on_off_tab_bestseller_compare_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_setting_mod_tab_special;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_special_model_product;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_special_model_product) { ?>
							<input id="config_on_off_tab_special_model_product_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_model_product" value="1" checked="checked" />
							<label for="config_on_off_tab_special_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_model_product_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_model_product" value="1" />
							<label for="config_on_off_tab_special_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_special_model_product) { ?>
							<input id="config_on_off_tab_special_model_product_no" class="hide-radio" type="radio" name="config_on_off_tab_special_model_product" value="0" checked="checked" />							
							<label for="config_on_off_tab_special_model_product_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_model_product_no" class="hide-radio" type="radio" name="config_on_off_tab_special_model_product" value="0" />							
							<label for="config_on_off_tab_special_model_product_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_special_description;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_special_description) { ?>
							<input id="config_on_off_tab_special_description_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_description" value="1" checked="checked" />
							<label for="config_on_off_tab_special_description_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_description_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_description" value="1" />
							<label for="config_on_off_tab_special_description_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_special_description) { ?>
							<input id="config_on_off_tab_special_description_no" class="hide-radio" type="radio" name="config_on_off_tab_special_description" value="0" checked="checked" />							
							<label for="config_on_off_tab_special_description_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_description_no" class="hide-radio" type="radio" name="config_on_off_tab_special_description" value="0" />							
							<label for="config_on_off_tab_special_description_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				
				<div class="form-group">
                  <label for="input-config_on_off_tab_special_slider_additional_image" class="col-sm-3 control-label"><?php echo $text_additional_image;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_on_off_tab_special_slider_additional_image" name="config_on_off_tab_special_slider_additional_image">
						<?php if($config_on_off_tab_special_slider_additional_image =='1') { ?>
						<option selected="selected" value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } ?>
						<?php if($config_on_off_tab_special_slider_additional_image =='2') { ?>
						<option selected="selected" value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } else { ?>
						<option value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } ?>
                        <?php if($config_on_off_tab_special_slider_additional_image =='0') { ?>
						 <option selected="selected" value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						 <option value="0"><?php echo $text_no; ?></option>
						<?php } ?>          
                    </select>
                  </div>
                </div>
				<div class="form-group">
                  <label for="input-tab_special_additional_animate" class="col-sm-3 control-label"><?php echo $text_select_tab_special_additional_animate_method;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-special_additional_animate" name="config_select_tab_special_additional_animate_method">
                        <?php echo $config_select_tab_special_additional_animate_method;?>
						<?php if($config_select_tab_special_additional_animate_method =='fade') { ?>
						<option selected="selected" value="fade">fade</option>
						<?php } else { ?>
						<option value="fade">fade</option>
						<?php } ?>
						<?php if($config_select_tab_special_additional_animate_method =='backSlide') { ?>
						<option selected="selected" value="backSlide">backSlide</option>
						<?php } else { ?>
						<option value="backSlide">backSlide</option>
						<?php } ?>
                        <?php if($config_select_tab_special_additional_animate_method =='goDown') { ?>
						 <option selected="selected" value="goDown">goDown</option>
						<?php } else { ?>
						 <option value="goDown">goDown</option>
						<?php } ?>
                        <?php if($config_select_tab_special_additional_animate_method =='fadeUp') { ?>
						 <option selected="selected" value="fadeUp">fadeUp</option>
						<?php } else { ?>
						 <option value="fadeUp">fadeUp</option>
						<?php } ?>
                       
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_special_rating;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_special_rating) { ?>
							<input id="config_on_off_tab_special_rating_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_rating" value="1" checked="checked" />
							<label for="config_on_off_tab_special_rating_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_rating_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_rating" value="1" />
							<label for="config_on_off_tab_special_rating_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_special_rating) { ?>
							<input id="config_on_off_tab_special_rating_no" class="hide-radio" type="radio" name="config_on_off_tab_special_rating" value="0" checked="checked" />							
							<label for="config_on_off_tab_special_rating_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_rating_no" class="hide-radio" type="radio" name="config_on_off_tab_special_rating" value="0" />							
							<label for="config_on_off_tab_special_rating_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_special_quantity_reviews;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_special_quantity_reviews) { ?>
							<input id="config_on_off_tab_special_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_quantity_reviews" value="1" checked="checked" />
							<label for="config_on_off_tab_special_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_quantity_reviews" value="1" />
							<label for="config_on_off_tab_special_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_special_quantity_reviews) { ?>
							<input id="config_on_off_tab_special_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_tab_special_quantity_reviews" value="0" checked="checked" />							
							<label for="config_on_off_tab_special_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_tab_special_quantity_reviews" value="0" />							
							<label for="config_on_off_tab_special_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_special_fastorder;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_special_fastorder) { ?>
							<input id="config_on_off_tab_special_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_fastorder" value="1" checked="checked" />
							<label for="config_on_off_tab_special_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_fastorder" value="1" />
							<label for="config_on_off_tab_special_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_special_fastorder) { ?>
							<input id="config_on_off_tab_special_fastorder_no" class="hide-radio" type="radio" name="config_on_off_tab_special_fastorder" value="0" checked="checked" />							
							<label for="config_on_off_tab_special_fastorder_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_fastorder_no" class="hide-radio" type="radio" name="config_on_off_tab_special_fastorder" value="0" />							
							<label for="config_on_off_tab_special_fastorder_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_special_wishlist;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_special_wishlist) { ?>
							<input id="config_on_off_tab_special_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_wishlist" value="1" checked="checked" />
							<label for="config_on_off_tab_special_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_wishlist" value="1" />
							<label for="config_on_off_tab_special_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_special_wishlist) { ?>
							<input id="config_on_off_tab_special_wishlist_no" class="hide-radio" type="radio" name="config_on_off_tab_special_wishlist" value="0" checked="checked" />							
							<label for="config_on_off_tab_special_wishlist_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_wishlist_no" class="hide-radio" type="radio" name="config_on_off_tab_special_wishlist" value="0" />							
							<label for="config_on_off_tab_special_wishlist_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_special_compare;?></label>
					<div class="col-sm-9">	
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_special_compare) { ?>
							<input id="config_on_off_tab_special_compare_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_compare" value="1" checked="checked" />
							<label for="config_on_off_tab_special_compare_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_compare_yes" class="hide-radio" type="radio" name="config_on_off_tab_special_compare" value="1" />
							<label for="config_on_off_tab_special_compare_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_special_compare) { ?>
							<input id="config_on_off_tab_special_compare_no" class="hide-radio" type="radio" name="config_on_off_tab_special_compare" value="0" checked="checked" />							
							<label for="config_on_off_tab_special_compare_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_special_compare_no" class="hide-radio" type="radio" name="config_on_off_tab_special_compare" value="0" />							
							<label for="config_on_off_tab_special_compare_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_setting_mod_tab_popular;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_popular_model_product;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_popular_model_product) { ?>
							<input id="config_on_off_tab_popular_model_product_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_model_product" value="1" checked="checked" />
							<label for="config_on_off_tab_popular_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_model_product_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_model_product" value="1" />
							<label for="config_on_off_tab_popular_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_popular_model_product) { ?>
							<input id="config_on_off_tab_popular_model_product_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_model_product" value="0" checked="checked" />							
							<label for="config_on_off_tab_popular_model_product_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_model_product_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_model_product" value="0" />							
							<label for="config_on_off_tab_popular_model_product_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_popular_description;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_popular_description) { ?>
							<input id="config_on_off_tab_popular_description_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_description" value="1" checked="checked" />
							<label for="config_on_off_tab_popular_description_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_description_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_description" value="1" />
							<label for="config_on_off_tab_popular_description_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_popular_description) { ?>
							<input id="config_on_off_tab_popular_description_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_description" value="0" checked="checked" />							
							<label for="config_on_off_tab_popular_description_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_description_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_description" value="0" />							
							<label for="config_on_off_tab_popular_description_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>				
				<div class="form-group">
                  <label for="input-config_on_off_tab_popular_slider_additional_image" class="col-sm-3 control-label"><?php echo $text_additional_image;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_on_off_tab_popular_slider_additional_image" name="config_on_off_tab_popular_slider_additional_image">
						<?php if($config_on_off_tab_popular_slider_additional_image =='1') { ?>
						<option selected="selected" value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } ?>
						<?php if($config_on_off_tab_popular_slider_additional_image =='2') { ?>
						<option selected="selected" value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } else { ?>
						<option value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } ?>
                        <?php if($config_on_off_tab_popular_slider_additional_image =='0') { ?>
						 <option selected="selected" value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						 <option value="0"><?php echo $text_no; ?></option>
						<?php } ?>          
                    </select>
                  </div>
                </div>
				<div class="form-group">
                  <label for="input-tab_popular_additional_animate" class="col-sm-3 control-label"><?php echo $text_select_tab_popular_additional_animate_method;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-special_additional_animate" name="config_select_tab_popular_additional_animate_method">
                        <?php echo $config_select_tab_popular_additional_animate_method;?>
						<?php if($config_select_tab_popular_additional_animate_method =='fade') { ?>
						<option selected="selected" value="fade">fade</option>
						<?php } else { ?>
						<option value="fade">fade</option>
						<?php } ?>
						<?php if($config_select_tab_popular_additional_animate_method =='backSlide') { ?>
						<option selected="selected" value="backSlide">backSlide</option>
						<?php } else { ?>
						<option value="backSlide">backSlide</option>
						<?php } ?>
                        <?php if($config_select_tab_popular_additional_animate_method =='goDown') { ?>
						 <option selected="selected" value="goDown">goDown</option>
						<?php } else { ?>
						 <option value="goDown">goDown</option>
						<?php } ?>
                        <?php if($config_select_tab_popular_additional_animate_method =='fadeUp') { ?>
						 <option selected="selected" value="fadeUp">fadeUp</option>
						<?php } else { ?>
						 <option value="fadeUp">fadeUp</option>
						<?php } ?>
                       
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_popular_rating;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_popular_rating) { ?>
							<input id="config_on_off_tab_popular_rating_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_rating" value="1" checked="checked" />
							<label for="config_on_off_tab_popular_rating_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_rating_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_rating" value="1" />
							<label for="config_on_off_tab_popular_rating_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_popular_rating) { ?>
							<input id="config_on_off_tab_popular_rating_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_rating" value="0" checked="checked" />							
							<label for="config_on_off_tab_popular_rating_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_rating_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_rating" value="0" />							
							<label for="config_on_off_tab_popular_rating_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_popular_quantity_reviews;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_popular_quantity_reviews) { ?>
							<input id="config_on_off_tab_popular_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_quantity_reviews" value="1" checked="checked" />
							<label for="config_on_off_tab_popular_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_quantity_reviews" value="1" />
							<label for="config_on_off_tab_popular_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_popular_quantity_reviews) { ?>
							<input id="config_on_off_tab_popular_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_quantity_reviews" value="0" checked="checked" />							
							<label for="config_on_off_tab_popular_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_quantity_reviews" value="0" />							
							<label for="config_on_off_tab_popular_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_popular_fastorder;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_popular_fastorder) { ?>
							<input id="config_on_off_tab_popular_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_fastorder" value="1" checked="checked" />
							<label for="config_on_off_tab_popular_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_fastorder" value="1" />
							<label for="config_on_off_tab_popular_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_popular_fastorder) { ?>
							<input id="config_on_off_tab_popular_fastorder_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_fastorder" value="0" checked="checked" />							
							<label for="config_on_off_tab_popular_fastorder_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_fastorder_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_fastorder" value="0" />							
							<label for="config_on_off_tab_popular_fastorder_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_popular_wishlist;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_popular_wishlist) { ?>
							<input id="config_on_off_tab_popular_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_wishlist" value="1" checked="checked" />
							<label for="config_on_off_tab_popular_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_wishlist" value="1" />
							<label for="config_on_off_tab_popular_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_popular_wishlist) { ?>
							<input id="config_on_off_tab_popular_wishlist_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_wishlist" value="0" checked="checked" />							
							<label for="config_on_off_tab_popular_wishlist_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_wishlist_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_wishlist" value="0" />							
							<label for="config_on_off_tab_popular_wishlist_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_tab_popular_compare;?></label>
					<div class="col-sm-9">	
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_tab_popular_compare) { ?>
							<input id="config_on_off_tab_popular_compare_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_compare" value="1" checked="checked" />
							<label for="config_on_off_tab_popular_compare_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_compare_yes" class="hide-radio" type="radio" name="config_on_off_tab_popular_compare" value="1" />
							<label for="config_on_off_tab_popular_compare_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_tab_popular_compare) { ?>
							<input id="config_on_off_tab_popular_compare_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_compare" value="0" checked="checked" />							
							<label for="config_on_off_tab_popular_compare_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_tab_popular_compare_no" class="hide-radio" type="radio" name="config_on_off_tab_popular_compare" value="0" />							
							<label for="config_on_off_tab_popular_compare_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>																
			</div>			
			<div class="tab-pane" id="tab-productany-mod">
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_setting_mod_productany;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_productany_model_product;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_productany_model_product) { ?>
							<input id="config_on_off_productany_model_product_yes" class="hide-radio" type="radio" name="config_on_off_productany_model_product" value="1" checked="checked" />
							<label for="config_on_off_productany_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_model_product_yes" class="hide-radio" type="radio" name="config_on_off_productany_model_product" value="1" />
							<label for="config_on_off_productany_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_productany_model_product) { ?>
							<input id="config_on_off_productany_model_product_no" class="hide-radio" type="radio" name="config_on_off_productany_model_product" value="0" checked="checked" />							
							<label for="config_on_off_productany_model_product_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_model_product_no" class="hide-radio" type="radio" name="config_on_off_productany_model_product" value="0" />							
							<label for="config_on_off_productany_model_product_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_productany_description;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_productany_description) { ?>
							<input id="config_on_off_productany_description_yes" class="hide-radio" type="radio" name="config_on_off_productany_description" value="1" checked="checked" />
							<label for="config_on_off_productany_description_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_description_yes" class="hide-radio" type="radio" name="config_on_off_productany_description" value="1" />
							<label for="config_on_off_productany_description_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_productany_description) { ?>
							<input id="config_on_off_productany_description_no" class="hide-radio" type="radio" name="config_on_off_productany_description" value="0" checked="checked" />							
							<label for="config_on_off_productany_description_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_description_no" class="hide-radio" type="radio" name="config_on_off_productany_description" value="0" />							
							<label for="config_on_off_productany_description_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
                  <label for="input-config_on_off_productany_slider_additional_image" class="col-sm-3 control-label"><?php echo $text_additional_image;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_on_off_productany_slider_additional_image" name="config_on_off_productany_slider_additional_image">
						<?php if($config_on_off_productany_slider_additional_image =='1') { ?>
						<option selected="selected" value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } ?>
						<?php if($config_on_off_productany_slider_additional_image =='2') { ?>
						<option selected="selected" value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } else { ?>
						<option value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } ?>
                        <?php if($config_on_off_productany_slider_additional_image =='0') { ?>
						 <option selected="selected" value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						 <option value="0"><?php echo $text_no; ?></option>
						<?php } ?>          
                    </select>
                  </div>
                </div>
				<div class="form-group">
                  <label for="input-productany_additional_animate" class="col-sm-3 control-label"><?php echo $text_select_productany_additional_animate_method;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-special_additional_animate" name="config_select_productany_additional_animate_method">
                        <?php echo $config_select_productany_additional_animate_method;?>
						<?php if($config_select_productany_additional_animate_method =='fade') { ?>
						<option selected="selected" value="fade">fade</option>
						<?php } else { ?>
						<option value="fade">fade</option>
						<?php } ?>
						<?php if($config_select_productany_additional_animate_method =='backSlide') { ?>
						<option selected="selected" value="backSlide">backSlide</option>
						<?php } else { ?>
						<option value="backSlide">backSlide</option>
						<?php } ?>
                        <?php if($config_select_productany_additional_animate_method =='goDown') { ?>
						 <option selected="selected" value="goDown">goDown</option>
						<?php } else { ?>
						 <option value="goDown">goDown</option>
						<?php } ?>
                        <?php if($config_select_productany_additional_animate_method =='fadeUp') { ?>
						 <option selected="selected" value="fadeUp">fadeUp</option>
						<?php } else { ?>
						 <option value="fadeUp">fadeUp</option>
						<?php } ?>
                       
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_productany_rating;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_productany_rating) { ?>
							<input id="config_on_off_productany_rating_yes" class="hide-radio" type="radio" name="config_on_off_productany_rating" value="1" checked="checked" />
							<label for="config_on_off_productany_rating_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_rating_yes" class="hide-radio" type="radio" name="config_on_off_productany_rating" value="1" />
							<label for="config_on_off_productany_rating_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_productany_rating) { ?>
							<input id="config_on_off_productany_rating_no" class="hide-radio" type="radio" name="config_on_off_productany_rating" value="0" checked="checked" />							
							<label for="config_on_off_productany_rating_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_rating_no" class="hide-radio" type="radio" name="config_on_off_productany_rating" value="0" />							
							<label for="config_on_off_productany_rating_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_productany_quantity_reviews;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_productany_quantity_reviews) { ?>
							<input id="config_on_off_productany_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_productany_quantity_reviews" value="1" checked="checked" />
							<label for="config_on_off_productany_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_productany_quantity_reviews" value="1" />
							<label for="config_on_off_productany_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_productany_quantity_reviews) { ?>
							<input id="config_on_off_productany_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_productany_quantity_reviews" value="0" checked="checked" />							
							<label for="config_on_off_productany_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_productany_quantity_reviews" value="0" />							
							<label for="config_on_off_productany_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_productany_fastorder;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_productany_fastorder) { ?>
							<input id="config_on_off_productany_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_productany_fastorder" value="1" checked="checked" />
							<label for="config_on_off_productany_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_productany_fastorder" value="1" />
							<label for="config_on_off_productany_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_productany_fastorder) { ?>
							<input id="config_on_off_productany_fastorder_no" class="hide-radio" type="radio" name="config_on_off_productany_fastorder" value="0" checked="checked" />							
							<label for="config_on_off_productany_fastorder_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_fastorder_no" class="hide-radio" type="radio" name="config_on_off_productany_fastorder" value="0" />							
							<label for="config_on_off_productany_fastorder_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_productany_wishlist;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_productany_wishlist) { ?>
							<input id="config_on_off_productany_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_productany_wishlist" value="1" checked="checked" />
							<label for="config_on_off_productany_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_productany_wishlist" value="1" />
							<label for="config_on_off_productany_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_productany_wishlist) { ?>
							<input id="config_on_off_productany_wishlist_no" class="hide-radio" type="radio" name="config_on_off_productany_wishlist" value="0" checked="checked" />							
							<label for="config_on_off_productany_wishlist_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_wishlist_no" class="hide-radio" type="radio" name="config_on_off_productany_wishlist" value="0" />							
							<label for="config_on_off_productany_wishlist_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_productany_compare;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_productany_compare) { ?>
							<input id="config_on_off_productany_compare_yes" class="hide-radio" type="radio" name="config_on_off_productany_compare" value="1" checked="checked" />
							<label for="config_on_off_productany_compare_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_compare_yes" class="hide-radio" type="radio" name="config_on_off_productany_compare" value="1" />
							<label for="config_on_off_productany_compare_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_productany_compare) { ?>
							<input id="config_on_off_productany_compare_no" class="hide-radio" type="radio" name="config_on_off_productany_compare" value="0" checked="checked" />							
							<label for="config_on_off_productany_compare_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_productany_compare_no" class="hide-radio" type="radio" name="config_on_off_productany_compare" value="0" />							
							<label for="config_on_off_productany_compare_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
			</div>
