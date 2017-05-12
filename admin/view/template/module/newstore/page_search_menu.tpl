				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_setting_search_page;?></div>
				</div>
				<div class="form-group">
                  <label for="input-config_price_list_view_on_off_search_page" class="col-sm-3 control-label"><?php echo $text_localstorege_pricelist;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_price_list_view_on_off_search_page" name="config_price_list_view_on_off_search_page">
                        <?php if ($config_price_list_view_on_off_search_page) { ?>
							<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
							<option value="0"><?php echo $text_disabled; ?></option>
						<?php } else { ?>
							<option value="1"><?php echo $text_enabled; ?></option>
							<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
						<?php } ?>
                    </select>
                  </div>
                </div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_search_page_model_product;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_search_page_model_product) { ?>
							<input id="config_on_off_search_page_model_product_yes" class="hide-radio" type="radio" name="config_on_off_search_page_model_product" value="1" checked="checked" />
							<label for="config_on_off_search_page_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_model_product_yes" class="hide-radio" type="radio" name="config_on_off_search_page_model_product" value="1" />
							<label for="config_on_off_search_page_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_search_page_model_product) { ?>
							<input id="config_on_off_search_page_model_product_no" class="hide-radio" type="radio" name="config_on_off_search_page_model_product" value="0" checked="checked" />							
							<label for="config_on_off_search_page_model_product_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_model_product_no" class="hide-radio" type="radio" name="config_on_off_search_page_model_product" value="0" />							
							<label for="config_on_off_search_page_model_product_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_search_page_description;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_search_page_description) { ?>
							<input id="config_on_off_search_page_description_yes" class="hide-radio" type="radio" name="config_on_off_search_page_description" value="1" checked="checked" />
							<label for="config_on_off_search_page_description_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_description_yes" class="hide-radio" type="radio" name="config_on_off_search_page_description" value="1" />
							<label for="config_on_off_search_page_description_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_search_page_description) { ?>
							<input id="config_on_off_search_page_description_no" class="hide-radio" type="radio" name="config_on_off_search_page_description" value="0" checked="checked" />							
							<label for="config_on_off_search_page_description_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_description_no" class="hide-radio" type="radio" name="config_on_off_search_page_description" value="0" />							
							<label for="config_on_off_search_page_description_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
                  <label for="input-config_on_off_search_page_slider_additional_image" class="col-sm-3 control-label"><?php echo $text_additional_image;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_on_off_search_page_slider_additional_image" name="config_on_off_search_page_slider_additional_image">
						<?php if($config_on_off_search_page_slider_additional_image =='1') { ?>
						<option selected="selected" value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } ?>
						<?php if($config_on_off_search_page_slider_additional_image =='2') { ?>
						<option selected="selected" value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } else { ?>
						<option value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } ?>
                        <?php if($config_on_off_search_page_slider_additional_image =='0') { ?>
						 <option selected="selected" value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						 <option value="0"><?php echo $text_no; ?></option>
						<?php } ?>          
                    </select>
                  </div>
                </div>
				<div class="form-group">
                  <label for="input-search_page_additional_animate" class="col-sm-3 control-label"><?php echo $text_select_search_page_additional_animate_method;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-special_additional_animate" name="config_select_search_page_additional_animate_method">
                        <?php echo $config_select_search_page_additional_animate_method;?>
						<?php if($config_select_search_page_additional_animate_method =='fade') { ?>
						<option selected="selected" value="fade">fade</option>
						<?php } else { ?>
						<option value="fade">fade</option>
						<?php } ?>
						<?php if($config_select_search_page_additional_animate_method =='backSlide') { ?>
						<option selected="selected" value="backSlide">backSlide</option>
						<?php } else { ?>
						<option value="backSlide">backSlide</option>
						<?php } ?>
                        <?php if($config_select_search_page_additional_animate_method =='goDown') { ?>
						 <option selected="selected" value="goDown">goDown</option>
						<?php } else { ?>
						 <option value="goDown">goDown</option>
						<?php } ?>
                        <?php if($config_select_search_page_additional_animate_method =='fadeUp') { ?>
						 <option selected="selected" value="fadeUp">fadeUp</option>
						<?php } else { ?>
						 <option value="fadeUp">fadeUp</option>
						<?php } ?>
                       
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_search_page_rating;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_search_page_rating) { ?>
							<input id="config_on_off_search_page_rating_yes" class="hide-radio" type="radio" name="config_on_off_search_page_rating" value="1" checked="checked" />
							<label for="config_on_off_search_page_rating_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_rating_yes" class="hide-radio" type="radio" name="config_on_off_search_page_rating" value="1" />
							<label for="config_on_off_search_page_rating_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_search_page_rating) { ?>
							<input id="config_on_off_search_page_rating_no" class="hide-radio" type="radio" name="config_on_off_search_page_rating" value="0" checked="checked" />							
							<label for="config_on_off_search_page_rating_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_rating_no" class="hide-radio" type="radio" name="config_on_off_search_page_rating" value="0" />							
							<label for="config_on_off_search_page_rating_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_search_page_quantity_reviews;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_search_page_quantity_reviews) { ?>
							<input id="config_on_off_search_page_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_search_page_quantity_reviews" value="1" checked="checked" />
							<label for="config_on_off_search_page_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_search_page_quantity_reviews" value="1" />
							<label for="config_on_off_search_page_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_search_page_quantity_reviews) { ?>
							<input id="config_on_off_search_page_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_search_page_quantity_reviews" value="0" checked="checked" />							
							<label for="config_on_off_search_page_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_search_page_quantity_reviews" value="0" />							
							<label for="config_on_off_search_page_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_search_page_fastorder;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_search_page_fastorder) { ?>
							<input id="config_on_off_search_page_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_search_page_fastorder" value="1" checked="checked" />
							<label for="config_on_off_search_page_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_search_page_fastorder" value="1" />
							<label for="config_on_off_search_page_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_search_page_fastorder) { ?>
							<input id="config_on_off_search_page_fastorder_no" class="hide-radio" type="radio" name="config_on_off_search_page_fastorder" value="0" checked="checked" />							
							<label for="config_on_off_search_page_fastorder_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_fastorder_no" class="hide-radio" type="radio" name="config_on_off_search_page_fastorder" value="0" />							
							<label for="config_on_off_search_page_fastorder_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_search_page_wishlist;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_search_page_wishlist) { ?>
							<input id="config_on_off_search_page_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_search_page_wishlist" value="1" checked="checked" />
							<label for="config_on_off_search_page_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_search_page_wishlist" value="1" />
							<label for="config_on_off_search_page_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_search_page_wishlist) { ?>
							<input id="config_on_off_search_page_wishlist_no" class="hide-radio" type="radio" name="config_on_off_search_page_wishlist" value="0" checked="checked" />							
							<label for="config_on_off_search_page_wishlist_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_wishlist_no" class="hide-radio" type="radio" name="config_on_off_search_page_wishlist" value="0" />							
							<label for="config_on_off_search_page_wishlist_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_search_page_compare;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_search_page_compare) { ?>
							<input id="config_on_off_search_page_compare_yes" class="hide-radio" type="radio" name="config_on_off_search_page_compare" value="1" checked="checked" />
							<label for="config_on_off_search_page_compare_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_compare_yes" class="hide-radio" type="radio" name="config_on_off_search_page_compare" value="1" />
							<label for="config_on_off_search_page_compare_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_search_page_compare) { ?>
							<input id="config_on_off_search_page_compare_no" class="hide-radio" type="radio" name="config_on_off_search_page_compare" value="0" checked="checked" />							
							<label for="config_on_off_search_page_compare_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_search_page_compare_no" class="hide-radio" type="radio" name="config_on_off_search_page_compare" value="0" />							
							<label for="config_on_off_search_page_compare_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>