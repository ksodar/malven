						<div class="form-group">
										<label class="col-sm-3 control-label"><?php echo $text_scheme_category_page;?></label>
										<div class="col-sm-9">
											<a class="btn btn-info collapsed" data-toggle="collapse" href="#CategoryPageScheme">
												<span class="ns_ch_visible"><i class="fa fa-eye fa-fw"></i><?php echo $text_show_scheme;?></span>
												<span class="ns_ch_hidden"><i class="fa fa-eye-slash fa-fw"></i><?php echo $text_hidden_scheme;?></span>
												<i class="fa fa-angle-up arr"></i>
											</a>
											
											<div id="CategoryPageScheme" class="panel-collapse collapse">
												<br>
												<div class="well">
														<div class="row">
															<div class="col-xs-12 ns_block"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_header_site;?><br>(header)</span></div></div>
														</div>
														<div class="row">
														<div class="col-xs-12 ns_block"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_menu; ?></span></div></div>
														</div>
														<div class="row">
															<div class="col-xs-12 ns_block position-ns"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_number;?>1</span></div></div>															
														</div>
														<div class="row">
															<div class="col-xs-6 ns_block position-ns"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_number;?>2</span></div></div>
															<div class="col-xs-6 ns_block position-ns"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_number;?>3</span></div></div>
														</div>
														<div class="row">
															<div class="col-xs-3 ns_block"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_menu; ?></span></div></div>
															<div class="col-xs-6 ns_block"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_content_top;?><br>(content_top)</span></div></div>
															<div class="col-xs-3 ns_block"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_column_right;?><br>(column_right)</span></div></div>
														</div>
														<div class="row">
															<div class="col-xs-3 ns_block"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_column_left;?><br>(column_left)</span></div></div>
															<div class="col-xs-6 ns_block"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_content_bottom;?><br>(content_bottom)</span></div></div>
															<div class="col-xs-3 ns_block"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_column_right;?><br>(column_right)</span></div></div>
														</div>
														<div class="row">
															<div class="col-xs-6 ns_block position-ns"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_number;?>4</span></div></div>															
															<div class="col-xs-6 ns_block position-ns"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_number;?>5</span></div></div>															
														</div>
														<div class="row">
															<div class="col-xs-3 ns_block position-ns"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_number;?>6</span></div></div>
															<div class="col-xs-3 ns_block position-ns"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_number;?>7</span></div></div>
															<div class="col-xs-3 ns_block position-ns"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_number;?>8</span></div></div>
															<div class="col-xs-3 ns_block position-ns"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_number;?>9</span></div></div>
														</div>
														<div class="row">
															<div class="col-xs-12 ns_block position-ns"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_number;?>10</span></div></div>
														</div>
														<div class="row">
															<div class="ns_block position-ns"><div class="thumbnail"><b></b><span><?php echo $text_scheme_position_number;?>11<br><?php echo $text_scheme_position_fluid;?></span></div></div>
														</div>
														<div class="row">
															<div class="col-xs-12 ns_block"><div class="thumbnail" style="margin-bottom:0;"><b></b><span><?php echo $text_scheme_position_footer_site;?><br>(footer)</span></div></div>
														</div>
												</div>
											</div>
										</div>
									</div>
																		<div class="form-group">
										<label class="col-sm-3 control-label"><?php echo $text_additional_modules;?></label>
										<div class="col-sm-9">
											<table id="ns-new-category-module" class="table table-striped table-bordered table-hover">
												<thead style="background:#eee;">
													<tr>
														<td class="nowrap"><i class="fa fa-puzzle-piece fa-fw"></i><?php echo $additional_column_modules;?></td>
														<td class="nowrap"><i class="fa fa-crosshairs fa-fw"></i><?php echo $additional_column_position;?></td>
														<td class="nowrap"><i class="fa fa-sort fa-fw"></i><?php echo $additional_column_sort;?></td>
														<td></td>
													</tr>
												</thead>
												<tbody>
													<?php $ns_new_category_module_row = 0; ?>
													<?php foreach ($ns_new_category_page_layout_modules as $ns_new_category_layout_module) { ?>
													<tr id="ns-new-category-module-row<?php echo $ns_new_category_module_row; ?>">
														<td>
															<select name="ns_new_category_layout_module[<?php echo $ns_new_category_module_row; ?>][code]" class="form-control">
																<?php foreach ($ns_new_home_extensions as $extension) { ?>
																<?php if (!$extension['module']) { ?>
																<?php if ($extension['code'] == $ns_new_category_layout_module['code']) { ?>
																<option value="<?php echo $extension['code']; ?>" selected="selected"><?php echo $extension['name']; ?></option>
																<?php } else { ?>
																<option value="<?php echo $extension['code']; ?>"><?php echo $extension['name']; ?></option>
																<?php } ?>
																<?php } else { ?>
																<optgroup label="<?php echo $extension['name']; ?>">
																<?php foreach ($extension['module'] as $module) { ?>
																<?php if ($module['code'] == $ns_new_category_layout_module['code']) { ?>
																<option value="<?php echo $module['code']; ?>" selected="selected"><?php echo $module['name']; ?></option>
																<?php } else { ?>
																<option value="<?php echo $module['code']; ?>"><?php echo $module['name']; ?></option>
																<?php } ?>
																<?php } ?>
																</optgroup>
																<?php } ?>
																<?php } ?>
															</select>
														</td>
														<td>
															<select name="ns_new_category_layout_module[<?php echo $ns_new_category_module_row; ?>][position]" class="form-control">															
																<?php if ($ns_new_category_layout_module['position'] == 'position_1') { ?>
																<option value="position_1" selected="selected"><?php echo $text_scheme_position_number;?>1</option>
																<?php } else { ?>
																<option value="position_1"><?php echo $text_scheme_position_number;?>1</option>
																<?php } ?>
																<?php if ($ns_new_category_layout_module['position'] == 'position_2') { ?>
																<option value="position_2" selected="selected"><?php echo $text_scheme_position_number;?>2</option>
																<?php } else { ?>
																<option value="position_2"><?php echo $text_scheme_position_number;?>2</option>
																<?php } ?>
																<?php if ($ns_new_category_layout_module['position'] == 'position_3') { ?>
																<option value="position_3" selected="selected"><?php echo $text_scheme_position_number;?>3</option>
																<?php } else { ?>
																<option value="position_3"><?php echo $text_scheme_position_number;?>3</option>
																<?php } ?>
																<?php if ($ns_new_category_layout_module['position'] == 'position_4') { ?>
																<option value="position_4" selected="selected"><?php echo $text_scheme_position_number;?>4</option>
																<?php } else { ?>
																<option value="position_4"><?php echo $text_scheme_position_number;?>4</option>
																<?php } ?>
																<?php if ($ns_new_category_layout_module['position'] == 'position_5') { ?>
																<option value="position_5" selected="selected"><?php echo $text_scheme_position_number;?>5</option>
																<?php } else { ?>
																<option value="position_5"><?php echo $text_scheme_position_number;?>5</option>
																<?php } ?>
																<?php if ($ns_new_category_layout_module['position'] == 'position_6') { ?>
																<option value="position_6" selected="selected"><?php echo $text_scheme_position_number;?>6</option>
																<?php } else { ?>
																<option value="position_6"><?php echo $text_scheme_position_number;?>6</option>
																<?php } ?>
																<?php if ($ns_new_category_layout_module['position'] == 'position_7') { ?>
																<option value="position_7" selected="selected"><?php echo $text_scheme_position_number;?>7</option>
																<?php } else { ?>
																<option value="position_7"><?php echo $text_scheme_position_number;?>7</option>
																<?php } ?>
																<?php if ($ns_new_category_layout_module['position'] == 'position_8') { ?>
																<option value="position_8" selected="selected"><?php echo $text_scheme_position_number;?>8</option>
																<?php } else { ?>
																<option value="position_8"><?php echo $text_scheme_position_number;?>8</option>
																<?php } ?>
																<?php if ($ns_new_category_layout_module['position'] == 'position_9') { ?>
																<option value="position_9" selected="selected"><?php echo $text_scheme_position_number;?>9</option>
																<?php } else { ?>
																<option value="position_9"><?php echo $text_scheme_position_number;?>9</option>
																<?php } ?>
																<?php if ($ns_new_category_layout_module['position'] == 'position_10') { ?>
																<option value="position_10" selected="selected"><?php echo $text_scheme_position_number;?>10</option>
																<?php } else { ?>
																<option value="position_10"><?php echo $text_scheme_position_number;?>10</option>
																<?php } ?>
																<?php if ($ns_new_category_layout_module['position'] == 'position_11') { ?>
																<option value="position_11" selected="selected"><?php echo $text_scheme_position_number;?>11</option>
																<?php } else { ?>
																<option value="position_11"><?php echo $text_scheme_position_number;?>11</option>
																<?php } ?>																
															</select>
														</td>
														<td>
															<input type="text" name="ns_new_category_layout_module[<?php echo $ns_new_category_module_row; ?>][sort_order]" value="<?php echo $ns_new_category_layout_module['sort_order']; ?>" placeholder="" class="form-control" />
														</td>
														<td>
															<button type="button" onclick="$('#ns-new-category-module-row<?php echo $ns_new_category_module_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $text_delete;?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button>
														</td>
													</tr>
													<?php $ns_new_category_module_row++; ?>
													<?php } ?>
												</tbody>
												<tfoot>
													<tr>
														<td colspan="3"></td>
														<td><button type="button" onclick="addNewCategoryPageModule();" data-toggle="tooltip" title="добавить" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
													</tr>
												</tfoot>
											</table>
										</div>
									</div>
<script type="text/javascript">

var ns_new_category_module_row = <?php echo $ns_new_category_module_row; ?>;

function addNewCategoryPageModule() {
	html  = '<tr id="new-category-module-row' + ns_new_category_module_row + '">';
	html += '  <td><select name="ns_new_category_layout_module[' + ns_new_category_module_row + '][code]" class="form-control">';
	<?php foreach ($ns_new_home_extensions as $extension) { ?>    
	<?php if (!$extension['module']) { ?>
	html += '    <option value="<?php echo $extension['code']; ?>"><?php echo addslashes($extension['name']); ?></option>';
	<?php } else { ?>
	html += '    <optgroup label="<?php echo addslashes($extension['name']); ?>">';
	<?php foreach ($extension['module'] as $module) { ?>
	html += '      <option value="<?php echo $module['code']; ?>"><?php echo addslashes($module['name']); ?></option>';
	<?php } ?>
	html += '    </optgroup>';
	<?php } ?>
	<?php } ?>
    html += '  </select></td>'; 
	html += '  <td><select name="ns_new_category_layout_module[' + ns_new_category_module_row + '][position]" class="form-control">';
    html += '    <option value="position_1"><?php echo $text_scheme_position_number;?>1</option>';
    html += '    <option value="position_2"><?php echo $text_scheme_position_number;?>2</option>';
    html += '    <option value="position_3"><?php echo $text_scheme_position_number;?>3</option>';
    html += '    <option value="position_4"><?php echo $text_scheme_position_number;?>4</option>';
	html += '    <option value="position_5"><?php echo $text_scheme_position_number;?>5</option>';
	html += '    <option value="position_6"><?php echo $text_scheme_position_number;?>6</option>';
	html += '    <option value="position_7"><?php echo $text_scheme_position_number;?>7</option>';
	html += '    <option value="position_8"><?php echo $text_scheme_position_number;?>8</option>';
	html += '    <option value="position_9"><?php echo $text_scheme_position_number;?>9</option>';
	html += '    <option value="position_10"><?php echo $text_scheme_position_number;?>10</option>';
	html += '    <option value="position_11"><?php echo $text_scheme_position_number;?>11</option>';
    html += '  </select></td>';
	html += '  <td><input type="text" name="ns_new_category_layout_module[' + ns_new_category_module_row + '][sort_order]" value="" placeholder="" class="form-control" /></td>';
	html += '  <td><button type="button" onclick="$(\'#new-category-module-row' + ns_new_category_module_row + '\').remove();" data-toggle="tooltip" title="удалить" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';
	
	$('#ns-new-category-module tbody').append(html);
	
	ns_new_category_module_row++;
}

</script>									
									
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_setting_category_page;?></div>
				</div>
				<div class="form-group">
                  <label for="input-config_price_list_view_on_off" class="col-sm-3 control-label"><?php echo $text_localstorege_pricelist;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_price_list_view_on_off" name="config_price_list_view_on_off">
                        <?php if ($config_price_list_view_on_off) { ?>
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
					<label class="col-sm-3 control-label"><?php echo $text_catalog_category_description_dropped;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_catalog_category_description_dropped) { ?>
							<input id="config_catalog_category_description_dropped_yes" class="hide-radio" type="radio" name="config_catalog_category_description_dropped" value="1" checked="checked" />
							<label for="config_catalog_category_description_dropped_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_catalog_category_description_dropped_yes" class="hide-radio" type="radio" name="config_catalog_category_description_dropped" value="1" />
							<label for="config_catalog_category_description_dropped_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_catalog_category_description_dropped) { ?>
							<input id="config_catalog_category_description_dropped_no" class="hide-radio" type="radio" name="config_catalog_category_description_dropped" value="0" checked="checked" />							
							<label for="config_catalog_category_description_dropped_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_catalog_category_description_dropped_no" class="hide-radio" type="radio" name="config_catalog_category_description_dropped" value="0" />							
							<label for="config_catalog_category_description_dropped_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_category_page_model_product;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_category_page_model_product) { ?>
							<input id="config_on_off_category_page_model_product_yes" class="hide-radio" type="radio" name="config_on_off_category_page_model_product" value="1" checked="checked" />
							<label for="config_on_off_category_page_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_model_product_yes" class="hide-radio" type="radio" name="config_on_off_category_page_model_product" value="1" />
							<label for="config_on_off_category_page_model_product_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_category_page_model_product) { ?>
							<input id="config_on_off_category_page_model_product_no" class="hide-radio" type="radio" name="config_on_off_category_page_model_product" value="0" checked="checked" />							
							<label for="config_on_off_category_page_model_product_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_model_product_no" class="hide-radio" type="radio" name="config_on_off_category_page_model_product" value="0" />							
							<label for="config_on_off_category_page_model_product_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_category_page_description;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_category_page_description) { ?>
							<input id="config_on_off_category_page_description_yes" class="hide-radio" type="radio" name="config_on_off_category_page_description" value="1" checked="checked" />
							<label for="config_on_off_category_page_description_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_description_yes" class="hide-radio" type="radio" name="config_on_off_category_page_description" value="1" />
							<label for="config_on_off_category_page_description_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_category_page_description) { ?>
							<input id="config_on_off_category_page_description_no" class="hide-radio" type="radio" name="config_on_off_category_page_description" value="0" checked="checked" />							
							<label for="config_on_off_category_page_description_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_description_no" class="hide-radio" type="radio" name="config_on_off_category_page_description" value="0" />							
							<label for="config_on_off_category_page_description_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
                  <label for="input-config_on_off_category_page_slider_additional_image" class="col-sm-3 control-label"><?php echo $text_additional_image;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-config_on_off_category_page_slider_additional_image" name="config_on_off_category_page_slider_additional_image">
						<?php if($config_on_off_category_page_slider_additional_image =='1') { ?>
						<option selected="selected" value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_additional_image_slider;?></option>
						<?php } ?>
						<?php if($config_on_off_category_page_slider_additional_image =='2') { ?>
						<option selected="selected" value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } else { ?>
						<option value="2"><?php echo $text_additional_image_hover;?></option>
						<?php } ?>
                        <?php if($config_on_off_category_page_slider_additional_image =='0') { ?>
						 <option selected="selected" value="0"><?php echo $text_no; ?></option>
						<?php } else { ?>
						 <option value="0"><?php echo $text_no; ?></option>
						<?php } ?>          
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
                  <label for="input-category_page_additional_animate" class="col-sm-3 control-label"><?php echo $text_select_category_page_additional_animate_method;?></label>
                  <div class="col-sm-9">
                    <select class="form-control" id="input-special_additional_animate" name="config_select_category_page_additional_animate_method">
                        <?php echo $config_select_category_page_additional_animate_method;?>
						<?php if($config_select_category_page_additional_animate_method =='fade') { ?>
						<option selected="selected" value="fade">fade</option>
						<?php } else { ?>
						<option value="fade">fade</option>
						<?php } ?>
						<?php if($config_select_category_page_additional_animate_method =='backSlide') { ?>
						<option selected="selected" value="backSlide">backSlide</option>
						<?php } else { ?>
						<option value="backSlide">backSlide</option>
						<?php } ?>
                        <?php if($config_select_category_page_additional_animate_method =='goDown') { ?>
						 <option selected="selected" value="goDown">goDown</option>
						<?php } else { ?>
						 <option value="goDown">goDown</option>
						<?php } ?>
                        <?php if($config_select_category_page_additional_animate_method =='fadeUp') { ?>
						 <option selected="selected" value="fadeUp">fadeUp</option>
						<?php } else { ?>
						 <option value="fadeUp">fadeUp</option>
						<?php } ?>
                       
                    </select>
                  </div>
                </div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_category_page_rating;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_category_page_rating) { ?>
							<input id="config_on_off_category_page_rating_yes" class="hide-radio" type="radio" name="config_on_off_category_page_rating" value="1" checked="checked" />
							<label for="config_on_off_category_page_rating_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_rating_yes" class="hide-radio" type="radio" name="config_on_off_category_page_rating" value="1" />
							<label for="config_on_off_category_page_rating_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_category_page_rating) { ?>
							<input id="config_on_off_category_page_rating_no" class="hide-radio" type="radio" name="config_on_off_category_page_rating" value="0" checked="checked" />							
							<label for="config_on_off_category_page_rating_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_rating_no" class="hide-radio" type="radio" name="config_on_off_category_page_rating" value="0" />							
							<label for="config_on_off_category_page_rating_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_category_page_quantity_reviews;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_category_page_quantity_reviews) { ?>
							<input id="config_on_off_category_page_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_category_page_quantity_reviews" value="1" checked="checked" />
							<label for="config_on_off_category_page_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_quantity_reviews_yes" class="hide-radio" type="radio" name="config_on_off_category_page_quantity_reviews" value="1" />
							<label for="config_on_off_category_page_quantity_reviews_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_category_page_quantity_reviews) { ?>
							<input id="config_on_off_category_page_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_category_page_quantity_reviews" value="0" checked="checked" />							
							<label for="config_on_off_category_page_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_quantity_reviews_no" class="hide-radio" type="radio" name="config_on_off_category_page_quantity_reviews" value="0" />							
							<label for="config_on_off_category_page_quantity_reviews_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_category_page_fastorder;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_category_page_fastorder) { ?>
							<input id="config_on_off_category_page_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_category_page_fastorder" value="1" checked="checked" />
							<label for="config_on_off_category_page_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_fastorder_yes" class="hide-radio" type="radio" name="config_on_off_category_page_fastorder" value="1" />
							<label for="config_on_off_category_page_fastorder_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_category_page_fastorder) { ?>
							<input id="config_on_off_category_page_fastorder_no" class="hide-radio" type="radio" name="config_on_off_category_page_fastorder" value="0" checked="checked" />							
							<label for="config_on_off_category_page_fastorder_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_fastorder_no" class="hide-radio" type="radio" name="config_on_off_category_page_fastorder" value="0" />							
							<label for="config_on_off_category_page_fastorder_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_category_page_wishlist;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_category_page_wishlist) { ?>
							<input id="config_on_off_category_page_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_category_page_wishlist" value="1" checked="checked" />
							<label for="config_on_off_category_page_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_wishlist_yes" class="hide-radio" type="radio" name="config_on_off_category_page_wishlist" value="1" />
							<label for="config_on_off_category_page_wishlist_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_category_page_wishlist) { ?>
							<input id="config_on_off_category_page_wishlist_no" class="hide-radio" type="radio" name="config_on_off_category_page_wishlist" value="0" checked="checked" />							
							<label for="config_on_off_category_page_wishlist_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_wishlist_no" class="hide-radio" type="radio" name="config_on_off_category_page_wishlist" value="0" />							
							<label for="config_on_off_category_page_wishlist_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_category_page_compare;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_category_page_compare) { ?>
							<input id="config_on_off_category_page_compare_yes" class="hide-radio" type="radio" name="config_on_off_category_page_compare" value="1" checked="checked" />
							<label for="config_on_off_category_page_compare_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_compare_yes" class="hide-radio" type="radio" name="config_on_off_category_page_compare" value="1" />
							<label for="config_on_off_category_page_compare_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_category_page_compare) { ?>
							<input id="config_on_off_category_page_compare_no" class="hide-radio" type="radio" name="config_on_off_category_page_compare" value="0" checked="checked" />							
							<label for="config_on_off_category_page_compare_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_category_page_compare_no" class="hide-radio" type="radio" name="config_on_off_category_page_compare" value="0" />							
							<label for="config_on_off_category_page_compare_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
	