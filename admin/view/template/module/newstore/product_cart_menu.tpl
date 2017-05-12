			<div class="form-group">
				<div class="col-sm-12 title-setting"><?php echo $text_card_roduct_tunes_here?></div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $text_on_off_featured_fastorder;?></label>
				<div class="col-sm-9">
					<div class="radio-group-infinity">	
						<?php if ($config_show_nsproduct_btn_fastorder) { ?>
							<input id="config_show_nsproduct_btn_fastorder_yes" class="hide-radio" type="radio" name="config_show_nsproduct_btn_fastorder" value="1" checked="checked" />
							<label for="config_show_nsproduct_btn_fastorder_yes"><?php echo $text_yes; ?></label>
						<?php } else { ?>
							<input id="config_show_nsproduct_btn_fastorder_yes" class="hide-radio" type="radio" name="config_show_nsproduct_btn_fastorder" value="1" />
							<label for="config_show_nsproduct_btn_fastorder_yes"><?php echo $text_yes; ?></label>
						<?php } ?>
						<?php if (!$config_show_nsproduct_btn_fastorder) { ?>
							<input id="config_show_nsproduct_btn_fastorder_no" class="hide-radio" type="radio" name="config_show_nsproduct_btn_fastorder" value="0" checked="checked" />							
							<label for="config_show_nsproduct_btn_fastorder_no"><?php echo $text_no; ?></label>
						<?php } else { ?>
							<input id="config_show_nsproduct_btn_fastorder_no" class="hide-radio" type="radio" name="config_show_nsproduct_btn_fastorder" value="0" />							
							<label for="config_show_nsproduct_btn_fastorder_no"><?php echo $text_no; ?></label>
						<?php } ?>						  
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $text_on_off_featured_wishlist;?></label>
				<div class="col-sm-9">
					<div class="radio-group-infinity">	
						<?php if ($config_show_nsproduct_btn_wishlist) { ?>
							<input id="config_show_nsproduct_btn_wishlist_yes" class="hide-radio" type="radio" name="config_show_nsproduct_btn_wishlist" value="1" checked="checked" />
							<label for="config_show_nsproduct_btn_wishlist_yes"><?php echo $text_yes; ?></label>
						<?php } else { ?>
							<input id="config_show_nsproduct_btn_wishlist_yes" class="hide-radio" type="radio" name="config_show_nsproduct_btn_wishlist" value="1" />
							<label for="config_show_nsproduct_btn_wishlist_yes"><?php echo $text_yes; ?></label>
						<?php } ?>
						<?php if (!$config_show_nsproduct_btn_wishlist) { ?>
							<input id="config_show_nsproduct_btn_wishlist_no" class="hide-radio" type="radio" name="config_show_nsproduct_btn_wishlist" value="0" checked="checked" />							
							<label for="config_show_nsproduct_btn_wishlist_no"><?php echo $text_no; ?></label>
						<?php } else { ?>
							<input id="config_show_nsproduct_btn_wishlist_no" class="hide-radio" type="radio" name="config_show_nsproduct_btn_wishlist" value="0" />							
							<label for="config_show_nsproduct_btn_wishlist_no"><?php echo $text_no; ?></label>
						<?php } ?>						  
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $text_on_off_featured_compare;?></label>
				<div class="col-sm-9">
					<div class="radio-group-infinity">	
						<?php if ($config_show_nsproduct_btn_compare) { ?>
							<input id="config_show_nsproduct_btn_compare_yes" class="hide-radio" type="radio" name="config_show_nsproduct_btn_compare" value="1" checked="checked" />
							<label for="config_show_nsproduct_btn_compare_yes"><?php echo $text_yes; ?></label>
						<?php } else { ?>
							<input id="config_show_nsproduct_btn_compare_yes" class="hide-radio" type="radio" name="config_show_nsproduct_btn_compare" value="1" />
							<label for="config_show_nsproduct_btn_compare_yes"><?php echo $text_yes; ?></label>
						<?php } ?>
						<?php if (!$config_show_nsproduct_btn_compare) { ?>
							<input id="config_show_nsproduct_btn_compare_no" class="hide-radio" type="radio" name="config_show_nsproduct_btn_compare" value="0" checked="checked" />							
							<label for="config_show_nsproduct_btn_compare_no"><?php echo $text_no; ?></label>
						<?php } else { ?>
							<input id="config_show_nsproduct_btn_compare_no" class="hide-radio" type="radio" name="config_show_nsproduct_btn_compare" value="0" />							
							<label for="config_show_nsproduct_btn_compare_no"><?php echo $text_no; ?></label>
						<?php } ?>						  
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $text_on_off_countdown_product;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_countdown_product) { ?>
							<input id="config_on_off_countdown_product_yes" class="hide-radio" type="radio" name="config_on_off_countdown_product" value="1" checked="checked" />
							<label for="config_on_off_countdown_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_countdown_product_yes" class="hide-radio" type="radio" name="config_on_off_countdown_product" value="1" />
							<label for="config_on_off_countdown_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_countdown_product) { ?>
							<input id="config_on_off_countdown_product_no" class="hide-radio" type="radio" name="config_on_off_countdown_product" value="0" checked="checked" />							
							<label for="config_on_off_countdown_product_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_countdown_product_no" class="hide-radio" type="radio" name="config_on_off_countdown_product" value="0" />							
							<label for="config_on_off_countdown_product_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12 title-setting"><?php echo $text_on_off_social_sharing;?></div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $text_on_off_product_sharing_facebock;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_product_sharing_facebock) { ?>
							<input id="config_on_off_product_sharing_facebock_yes" class="hide-radio" type="radio" name="config_on_off_product_sharing_facebock" value="1" checked="checked" />
							<label for="config_on_off_product_sharing_facebock_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_product_sharing_facebock_yes" class="hide-radio" type="radio" name="config_on_off_product_sharing_facebock" value="1" />
							<label for="config_on_off_product_sharing_facebock_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_product_sharing_facebock) { ?>
							<input id="config_on_off_product_sharing_facebock_no" class="hide-radio" type="radio" name="config_on_off_product_sharing_facebock" value="0" checked="checked" />							
							<label for="config_on_off_product_sharing_facebock_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_product_sharing_facebock_no" class="hide-radio" type="radio" name="config_on_off_product_sharing_facebock" value="0" />							
							<label for="config_on_off_product_sharing_facebock_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $text_on_off_product_sharing_twitter;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_product_sharing_twitter) { ?>
							<input id="config_on_off_product_sharing_twitter_yes" class="hide-radio" type="radio" name="config_on_off_product_sharing_twitter" value="1" checked="checked" />
							<label for="config_on_off_product_sharing_twitter_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_product_sharing_twitter_yes" class="hide-radio" type="radio" name="config_on_off_product_sharing_twitter" value="1" />
							<label for="config_on_off_product_sharing_twitter_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_product_sharing_twitter) { ?>
							<input id="config_on_off_product_sharing_twitter_no" class="hide-radio" type="radio" name="config_on_off_product_sharing_twitter" value="0" checked="checked" />							
							<label for="config_on_off_product_sharing_twitter_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_product_sharing_twitter_no" class="hide-radio" type="radio" name="config_on_off_product_sharing_twitter" value="0" />							
							<label for="config_on_off_product_sharing_twitter_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $text_on_off_product_sharing_googleplus;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_product_sharing_googleplus) { ?>
							<input id="config_on_off_product_sharing_googleplus_yes" class="hide-radio" type="radio" name="config_on_off_product_sharing_googleplus" value="1" checked="checked" />
							<label for="config_on_off_product_sharing_googleplus_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_product_sharing_googleplus_yes" class="hide-radio" type="radio" name="config_on_off_product_sharing_googleplus" value="1" />
							<label for="config_on_off_product_sharing_googleplus_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_product_sharing_googleplus) { ?>
							<input id="config_on_off_product_sharing_googleplus_no" class="hide-radio" type="radio" name="config_on_off_product_sharing_googleplus" value="0" checked="checked" />							
							<label for="config_on_off_product_sharing_googleplus_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_product_sharing_googleplus_no" class="hide-radio" type="radio" name="config_on_off_product_sharing_googleplus" value="0" />							
							<label for="config_on_off_product_sharing_googleplus_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $text_on_off_product_sharing_mailru;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_product_sharing_mailru) { ?>
							<input id="config_on_off_product_sharing_mailru_yes" class="hide-radio" type="radio" name="config_on_off_product_sharing_mailru" value="1" checked="checked" />
							<label for="config_on_off_product_sharing_mailru_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_product_sharing_mailru_yes" class="hide-radio" type="radio" name="config_on_off_product_sharing_mailru" value="1" />
							<label for="config_on_off_product_sharing_mailru_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_product_sharing_mailru) { ?>
							<input id="config_on_off_product_sharing_mailru_no" class="hide-radio" type="radio" name="config_on_off_product_sharing_mailru" value="0" checked="checked" />							
							<label for="config_on_off_product_sharing_mailru_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_product_sharing_mailru_no" class="hide-radio" type="radio" name="config_on_off_product_sharing_mailru" value="0" />							
							<label for="config_on_off_product_sharing_mailru_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
			</div>	
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $text_on_off_product_sharing_vk;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_product_sharing_vk) { ?>
							<input id="config_on_off_product_sharing_vk_yes" class="hide-radio" type="radio" name="config_on_off_product_sharing_vk" value="1" checked="checked" />
							<label for="config_on_off_product_sharing_vk_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_product_sharing_vk_yes" class="hide-radio" type="radio" name="config_on_off_product_sharing_vk" value="1" />
							<label for="config_on_off_product_sharing_vk_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_product_sharing_vk) { ?>
							<input id="config_on_off_product_sharing_vk_no" class="hide-radio" type="radio" name="config_on_off_product_sharing_vk" value="0" checked="checked" />							
							<label for="config_on_off_product_sharing_vk_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_product_sharing_vk_no" class="hide-radio" type="radio" name="config_on_off_product_sharing_vk" value="0" />							
							<label for="config_on_off_product_sharing_vk_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
			</div>	
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $text_on_off_product_sharing_ok;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_product_sharing_ok) { ?>
							<input id="config_on_off_product_sharing_ok_yes" class="hide-radio" type="radio" name="config_on_off_product_sharing_ok" value="1" checked="checked" />
							<label for="config_on_off_product_sharing_ok_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_product_sharing_ok_yes" class="hide-radio" type="radio" name="config_on_off_product_sharing_ok" value="1" />
							<label for="config_on_off_product_sharing_ok_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_product_sharing_ok) { ?>
							<input id="config_on_off_product_sharing_ok_no" class="hide-radio" type="radio" name="config_on_off_product_sharing_ok" value="0" checked="checked" />							
							<label for="config_on_off_product_sharing_ok_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_product_sharing_ok_no" class="hide-radio" type="radio" name="config_on_off_product_sharing_ok" value="0" />							
							<label for="config_on_off_product_sharing_ok_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
			</div>	
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $entry_status_zoom_image; ?></label>
				<div class="col-sm-9">
					<div class="radio-group-infinity">	
							<?php if ($config_status_zoom_image) { ?>
							<input id="status_zoom_image_yes" class="hide-radio" type="radio" name="config_status_zoom_image" value="1" checked="checked" />
							<label for="status_zoom_image_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="status_zoom_image_yes" class="hide-radio" type="radio" name="config_status_zoom_image" value="1" />
							<label for="status_zoom_image_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_status_zoom_image) { ?>
							<input id="status_zoom_image_no" class="hide-radio" type="radio" name="config_status_zoom_image" value="0" checked="checked" />							
							<label for="status_zoom_image_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="status_zoom_image_no" class="hide-radio" type="radio" name="config_status_zoom_image" value="0" />							
							<label for="status_zoom_image_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $entry_status_delivery_options_status; ?></label>
				<div class="col-sm-9">
					<div class="radio-group-infinity">	
							<?php if ($config_status_delivery_options) { ?>
							<input id="status_delivery_options_yes" class="hide-radio" type="radio" name="config_status_delivery_options" value="1" checked="checked" />
							<label for="status_delivery_options_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="status_delivery_options_yes" class="hide-radio" type="radio" name="config_status_delivery_options" value="1" />
							<label for="status_delivery_options_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_status_delivery_options) { ?>
							<input id="status_delivery_options_no" class="hide-radio" type="radio" name="config_status_delivery_options" value="0" checked="checked" />							
							<label for="status_delivery_options_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="status_delivery_options_no" class="hide-radio" type="radio" name="config_status_delivery_options" value="0" />							
							<label for="status_delivery_options_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $entry_status_delivery_options_title; ?></label>
				<div class="col-sm-9">
				<?php foreach ($languages as $language) { ?>
					<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
					<input type="text" name="config_delivery_options_title[<?php echo $language['language_id']; ?>][config_delivery_options_title]" value="<?php echo $config_delivery_options_title[$language['language_id']]['config_delivery_options_title']; ?>" placeholder="" class="form-control" />				  
				</div>
				<?php } ?>
				</div>
			</div>
			<table id="banner_delivery_options_items" class="table table-bordered table-hover">
						<thead>
							<tr>
								<td><?php echo $entry_image; ?></td>
								<td><?php echo $entry_title; ?></td>
								<td><?php echo $entry_description; ?></td>
								<td><?php echo $entry_link; ?></td>
								<td><?php echo $entry_sort_order; ?></td>
								<td></td>
							</tr>
						</thead>
						<tbody>
						<?php $banner_delivery_row = 0; ?>
						<?php foreach ($banner_delivery_options as $banner_delivery_options) { ?>
							<tr id="item-row<?php echo $banner_delivery_row; ?>">
								<td class="text-left">
									<a href="" id="thumb-image-banner-delivery-row<?php echo $banner_delivery_row; ?>" data-toggle="image" class="img-thumbnail"><img src="<?php echo $banner_delivery_options['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>"  /></a><input type="hidden" name="banner_delivery_option[<?php echo $banner_delivery_row; ?>][image]" value="<?php echo $banner_delivery_options['image']; ?>" id="input-image-banner-delivery-row<?php echo $banner_delivery_row; ?>" />
								</td>
								<td class="text-left">
									<?php foreach ($languages as $language) { ?>
									<div class="input-group pull-left">
										<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
										<input class="form-control" type="text" name="banner_delivery_option[<?php echo $banner_delivery_row; ?>][title][<?php echo $language['language_id']; ?>]" value="<?php echo $banner_delivery_options['title'][$language['language_id']]; ?>" />
									</div>
									<?php } ?>
								</td>
								<td class="text-left">
									<?php foreach ($languages as $language) { ?>
									<div class="input-group pull-left">
										<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
										<textarea class="form-control" type="text" name="banner_delivery_option[<?php echo $banner_delivery_row; ?>][description][<?php echo $language['language_id']; ?>]"><?php echo $banner_delivery_options['description'][$language['language_id']]; ?></textarea>										
									</div>
									<?php } ?>
								</td>
								<td class="text-left">
									<?php foreach ($languages as $language) { ?>
									<div class="input-group pull-left">
										<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
											<input class="form-control" type="text" name="banner_delivery_option[<?php echo $banner_delivery_row; ?>][link][<?php echo $language['language_id']; ?>]" value="<?php echo $banner_delivery_options['link'][$language['language_id']]; ?>" />
									</div>
									<?php } ?>
									<div class="form-group">
										<label class="col-sm-12 text-center"><?php echo $text_open_banner_popup;?></label>
										<div class="col-sm-12 text-center">
											<div class="radio-group-infinity">	
												<?php if ($banner_delivery_options['popup']) { ?>
													<input id="config_open_banner_popup_yes_<?php echo $banner_delivery_row; ?>" class="hide-radio" type="radio" name="banner_delivery_option[<?php echo $banner_delivery_row; ?>][popup]" value="1" checked="checked" />
													<label for="config_open_banner_popup_yes_<?php echo $banner_delivery_row; ?>"><?php echo $text_yes; ?></label>
												<?php } else { ?>
													<input id="config_open_banner_popup_yes_<?php echo $banner_delivery_row; ?>" class="hide-radio" type="radio" name="banner_delivery_option[<?php echo $banner_delivery_row; ?>][popup]" value="1" />
													<label for="config_open_banner_popup_yes_<?php echo $banner_delivery_row; ?>"><?php echo $text_yes; ?></label>
												<?php } ?>
												<?php if (!$banner_delivery_options['popup']) { ?>
													<input id="config_open_banner_popup_no_<?php echo $banner_delivery_row; ?>" class="hide-radio" type="radio" name="banner_delivery_option[<?php echo $banner_delivery_row; ?>][popup]" value="0" checked="checked" />							
													<label for="config_open_banner_popup_no_<?php echo $banner_delivery_row; ?>"><?php echo $text_no; ?></label>
												<?php } else { ?>
													<input id="config_open_banner_popup_no_<?php echo $banner_delivery_row; ?>" class="hide-radio" type="radio" name="banner_delivery_option[<?php echo $banner_delivery_row; ?>][popup]" value="0" />							
													<label for="config_open_banner_popup_no_<?php echo $banner_delivery_row; ?>"><?php echo $text_no; ?></label>
												<?php } ?>						  
											</div>
										</div>
									</div>
								</td>
								<td class="text-left">
									<input  class="form-control" type="text" name="banner_delivery_option[<?php echo $banner_delivery_row; ?>][sort]" value="<?php echo $banner_delivery_options['sort']; ?>" />
								</td>
								<td class="text-right">
									<a class="btn btn-danger" onclick="$('#item-row<?php echo $banner_delivery_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $text_delete; ?>"><i class="fa fa-trash-o"></i></a>
								</td>
							</tr>
						<?php $banner_delivery_row++; ?>
						<?php } ?>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="5"></td>
								<td class="text-right"><a class="btn btn-primary" onclick="addBannerDelivery();" data-toggle="tooltip" title="<?php echo $button_add; ?>"><i class="fa fa-plus-circle"></i></a></td>
							</tr>
						</tfoot>
				</table>

<script type="text/javascript">
var banner_delivery_row = <?php echo $banner_delivery_row; ?>;

function addBannerDelivery() {
  html  = '<tr id="item-row' + banner_delivery_row + '">';
	html += '<td class="text-left"><a href="" id="thumb-image-banner-delivery-row' + banner_delivery_row + '" data-toggle="image" class="img-thumbnail"><img src="<?php echo $placeholder; ?>"  /></a><input type="hidden" name="banner_delivery_option[' + banner_delivery_row + '][image]" value="" id="input-image-banner-delivery-row' + banner_delivery_row + '" /></td>';
  html += '<td class="text-left">';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="input-group pull-left"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
	html += '<input class="form-control" type="text" name="banner_delivery_option[' + banner_delivery_row + '][title][<?php echo $language['language_id']; ?>]" value="" />';
	html += '</div>';
	<?php } ?>
	html += '</td>';
	html += '<td class="text-left">';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="input-group pull-left"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
	html += '<textarea class="form-control" type="text" name="banner_delivery_option[' + banner_delivery_row + '][description][<?php echo $language['language_id']; ?>]"></textarea>';
	html += '</div>';
	<?php } ?>
	html += '</td>';
	html += '<td class="text-left">';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="input-group pull-left"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
	html += '<input class="form-control"  type="text" name="banner_delivery_option[' + banner_delivery_row + '][link][<?php echo $language['language_id']; ?>]" value="" />';
	html += '</div>';
	<?php } ?>
	html += '<div class="form-group">';
	html += '	<label class="col-sm-12 text-center"><?php echo $text_open_banner_popup;?></label>';
	html += '	<div class="col-sm-12 text-center">';
	html += '	<div class="radio-group-infinity">';
	html += '		<input id="config_open_banner_popup_yes_' + banner_delivery_row + '" class="hide-radio" type="radio" name="banner_delivery_option[' + banner_delivery_row + '][popup]" value="1"/>';
	html += '		<label for="config_open_banner_popup_yes_' + banner_delivery_row + '"><?php echo $text_yes; ?></label>';
	html += '		<input id="config_open_banner_popup_no_' + banner_delivery_row + '" class="hide-radio" type="radio" name="banner_delivery_option[' + banner_delivery_row + '][popup]" value="0" checked="checked" />';						
	html += '		<label for="config_open_banner_popup_no_' + banner_delivery_row + '"><?php echo $text_no; ?></label>';									  
	html += '	</div>';
	html += '	</div>';
	html += '</div>';
	html += '</td>';
	html += '<td class="text-left"><input class="form-control" type="text" name="banner_delivery_option[' + banner_delivery_row + '][sort]" size="1" value="" /></td>';
	html += '<td class="text-right"><a class="btn btn-danger" onclick="$(\'#item-row' + banner_delivery_row  + '\').remove();" data-toggle="tooltip" title="<?php echo $text_delete; ?>"><i class="fa fa-trash-o"></i></a></td>';
	html += '</tr>'; 
	
	$('#banner_delivery_options_items tbody').append(html);;
	
	banner_delivery_row++;
}
</script>