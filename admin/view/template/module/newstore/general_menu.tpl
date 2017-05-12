<?php
$ns_bg_attachments = array(
'scroll', 'fixed'
);
$ns_bg_positions = array(
'top left', 'top center', 'top right', 'center left', 'center center', 'center right', 'bottom left', 'bottom center', 'bottom right'
);
$ns_bg_repeats = array(
'repeat', 'no-repeat', 'repeat-x', 'repeat-y'
);
?>
				<div class="form-group">
					<label class="col-sm-3 control-label title-setting"><?php echo $text_сaching_system;?></label>
					<div class="col-sm-9">
							<div class="radio-group-infinity">	
								<?php if ($config_developer_mode =='0') { ?>
								<input onchange="change_developer_mode(this.value);" id="config_developer_mode_yes" class="hide-radio" type="radio" name="config_developer_mode" value="0" checked="checked" />
								<label for="config_developer_mode_yes"><?php echo $text_yes; ?></label>
								<?php } else { ?>
								<input onchange="change_developer_mode(this.value);" id="config_developer_mode_yes" class="hide-radio" type="radio" name="config_developer_mode" value="0" />
								<label for="config_developer_mode_yes"><?php echo $text_yes; ?></label>
								<?php } ?>
								<?php if (!isset($config_developer_mode) || ($config_developer_mode =='1')) { ?>
								<input onchange="change_developer_mode(this.value);" id="config_developer_mode_no" class="hide-radio" type="radio" name="config_developer_mode" value="1" checked="checked" />							
								<label for="config_developer_mode_no"><?php echo $text_no; ?></label>
								<?php } else { ?>
								<input onchange="change_developer_mode(this.value);" id="config_developer_mode_no" class="hide-radio" type="radio" name="config_developer_mode" value="1" />							
								<label for="config_developer_mode_no"><?php echo $text_no; ?></label>
								<?php } ?>						  
							</div>
						</div>
				</div>
<script type="text/javascript">
$(window).load(function(){ 
	var config_developer_mode_selection = $('input[name=config_developer_mode]:checked').val();	
	if (config_developer_mode_selection =='0') {
		$('.minify_css').addClass('active');
		$('.minify_js').addClass('active');
	} else if (config_developer_mode_selection =='1') {
		$('.minify_css').removeClass('active');
		$('.minify_js').removeClass('active');
	}
})
function change_developer_mode(config_developer_mode){						
	if (config_developer_mode =='0') {
		$('.minify_css').addClass('active');
		$('.minify_js').addClass('active');
	} else if (config_developer_mode =='1') {
		$('.minify_css').removeClass('active');
		$('.minify_js').removeClass('active');
	}
}				
</script>		
				<div class="form-group minify_css">
						<label class="col-sm-3 control-label"><?php echo $text_minify_css;?></label>
						<div class="col-sm-9">
							<div class="radio-group-infinity">	
								<?php if ($config_minify_css) { ?>
								<input id="config_minify_css_yes" class="hide-radio" type="radio" name="config_minify_css" value="1" checked="checked" />
								<label for="config_minify_css_yes"><?php echo $text_yes; ?></label>
								<?php } else { ?>
								<input id="config_minify_css_yes" class="hide-radio" type="radio" name="config_minify_css" value="1" />
								<label for="config_minify_css_yes"><?php echo $text_yes; ?></label>
								<?php } ?>
								<?php if (!$config_minify_css) { ?>
								<input id="config_minify_css_no" class="hide-radio" type="radio" name="config_minify_css" value="0" checked="checked" />							
								<label for="config_minify_css_no"><?php echo $text_no; ?></label>
								<?php } else { ?>
								<input id="config_minify_css_no" class="hide-radio" type="radio" name="config_minify_css" value="0" />							
								<label for="config_minify_css_no"><?php echo $text_no; ?></label>
								<?php } ?>						  
							</div>
						</div>
				</div>
				<div class="form-group minify_js">
						<label class="col-sm-3 control-label"><?php echo $text_minify_js;?></label>
						<div class="col-sm-9">
							<div class="radio-group-infinity">	
								<?php if ($config_minify_js) { ?>
								<input id="config_minify_js_yes" class="hide-radio" type="radio" name="config_minify_js" value="1" checked="checked" />
								<label for="config_minify_js_yes"><?php echo $text_yes; ?></label>
								<?php } else { ?>
								<input id="config_minify_js_yes" class="hide-radio" type="radio" name="config_minify_js" value="1" />
								<label for="config_minify_js_yes"><?php echo $text_yes; ?></label>
								<?php } ?>
								<?php if (!$config_minify_js) { ?>
								<input id="config_minify_js_no" class="hide-radio" type="radio" name="config_minify_js" value="0" checked="checked" />							
								<label for="config_minify_js_no"><?php echo $text_no; ?></label>
								<?php } else { ?>
								<input id="config_minify_js_no" class="hide-radio" type="radio" name="config_minify_js" value="0" />							
								<label for="config_minify_js_no"><?php echo $text_no; ?></label>
								<?php } ?>						  
							</div>
						</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $title_disable_button_cart_quickorder;?></div>
				</div>
				<div class="form-group">
						<label class="col-sm-3 control-label"><?php echo $text_disable_cart_button;?></label>
						<div class="col-sm-9">
							<div class="radio-group-infinity">	
								<?php if ($config_disable_cart_button) { ?>
								<input id="config_disable_cart_button_yes" class="hide-radio" type="radio" name="config_disable_cart_button" value="1" checked="checked" />
								<label for="config_disable_cart_button_yes"><?php echo $text_yes; ?></label>
								<?php } else { ?>
								<input id="config_disable_cart_button_yes" class="hide-radio" type="radio" name="config_disable_cart_button" value="1" />
								<label for="config_disable_cart_button_yes"><?php echo $text_yes; ?></label>
								<?php } ?>
								<?php if (!$config_disable_cart_button) { ?>
								<input id="config_disable_cart_button_no" class="hide-radio" type="radio" name="config_disable_cart_button" value="0" checked="checked" />							
								<label for="config_disable_cart_button_no"><?php echo $text_no; ?></label>
								<?php } else { ?>
								<input id="config_disable_cart_button_no" class="hide-radio" type="radio" name="config_disable_cart_button" value="0" />							
								<label for="config_disable_cart_button_no"><?php echo $text_no; ?></label>
								<?php } ?>						  
							</div>
						</div>
				</div>
				<div class="form-group">
						<label class="col-sm-3 control-label"><?php echo $text_change_text_cart_button_out_of_stock;?></label>
						<div class="col-sm-9">
							<div class="radio-group-infinity">	
								<?php if ($config_change_text_cart_button_out_of_stock) { ?>
								<input id="config_change_text_cart_button_out_of_stock_yes" class="hide-radio" type="radio" name="config_change_text_cart_button_out_of_stock" value="1" checked="checked" />
								<label for="config_change_text_cart_button_out_of_stock_yes"><?php echo $text_yes; ?></label>
								<?php } else { ?>
								<input id="config_change_text_cart_button_out_of_stock_yes" class="hide-radio" type="radio" name="config_change_text_cart_button_out_of_stock" value="1" />
								<label for="config_change_text_cart_button_out_of_stock_yes"><?php echo $text_yes; ?></label>
								<?php } ?>
								<?php if (!$config_change_text_cart_button_out_of_stock) { ?>
								<input id="config_change_text_cart_button_out_of_stock_no" class="hide-radio" type="radio" name="config_change_text_cart_button_out_of_stock" value="0" checked="checked" />							
								<label for="config_change_text_cart_button_out_of_stock_no"><?php echo $text_no; ?></label>
								<?php } else { ?>
								<input id="config_change_text_cart_button_out_of_stock_no" class="hide-radio" type="radio" name="config_change_text_cart_button_out_of_stock" value="0" />							
								<label for="config_change_text_cart_button_out_of_stock_no"><?php echo $text_no; ?></label>
								<?php } ?>						  
							</div>
						</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_disable_cart_button_out_of_stock;?></label>
						<div class="col-sm-5">
								<?php foreach ($languages as $language) { ?>
									<div class="input-group pull-left">
										<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
										<input class="form-control" type="text" name="config_disable_cart_button_text[<?php echo $language['language_id']; ?>][disable_cart_button_text]" value="<?php echo isset($config_disable_cart_button_text[$language['language_id']]) ? $config_disable_cart_button_text[$language['language_id']]['disable_cart_button_text'] : ''; ?>" />
									</div>
								<?php } ?>
							</div>
				</div>
				<div class="form-group">
						<label class="col-sm-3 control-label"><?php echo $text_show_stock_status;?></label>
						<div class="col-sm-9">
					<div class="radio-group-infinity">	
							<?php if ($config_show_stock_status) { ?>
							<input id="config_show_stock_status_yes" class="hide-radio" type="radio" name="config_show_stock_status" value="1" checked="checked" />
							<label for="config_show_stock_status_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_show_stock_status_yes" class="hide-radio" type="radio" name="config_show_stock_status" value="1" />
							<label for="config_show_stock_status_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_show_stock_status) { ?>
							<input id="config_show_stock_status_no" class="hide-radio" type="radio" name="config_show_stock_status" value="0" checked="checked" />							
							<label for="config_show_stock_status_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_show_stock_status_no" class="hide-radio" type="radio" name="config_show_stock_status" value="0" />							
							<label for="config_show_stock_status_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
						<label class="col-sm-3 control-label"><?php echo $text_disable_fastorder_button;?></label>
						<div class="col-sm-9">
					<div class="radio-group-infinity">	
							<?php if ($config_disable_fastorder_button) { ?>
							<input id="config_disable_fastorder_button_yes" class="hide-radio" type="radio" name="config_disable_fastorder_button" value="1" checked="checked" />
							<label for="config_disable_fastorder_button_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_disable_fastorder_button_yes" class="hide-radio" type="radio" name="config_disable_fastorder_button" value="1" />
							<label for="config_disable_fastorder_button_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_disable_fastorder_button) { ?>
							<input id="config_disable_fastorder_button_no" class="hide-radio" type="radio" name="config_disable_fastorder_button" value="0" checked="checked" />							
							<label for="config_disable_fastorder_button_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_disable_fastorder_button_no" class="hide-radio" type="radio" name="config_disable_fastorder_button" value="0" />							
							<label for="config_disable_fastorder_button_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_quantity_btn_module;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_additional_settings_newstore['quantity_btn_module']) { ?>
							<input id="config_asn_quantity_btn_module_yes" class="hide-radio" type="radio" name="config_additional_settings_newstore[quantity_btn_module]" value="1" checked="checked" />
							<label for="config_asn_quantity_btn_module_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_asn_quantity_btn_module_yes" class="hide-radio" type="radio" name="config_additional_settings_newstore[quantity_btn_module]" value="1" />
							<label for="config_asn_quantity_btn_module_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_additional_settings_newstore['quantity_btn_module']) { ?>
							<input id="config_asn_quantity_btn_module_no" class="hide-radio" type="radio" name="config_additional_settings_newstore[quantity_btn_module]" value="0" checked="checked" />							
							<label for="config_asn_quantity_btn_module_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_asn_quantity_btn_module_no" class="hide-radio" type="radio" name="config_additional_settings_newstore[quantity_btn_module]" value="0" />							
							<label for="config_asn_quantity_btn_module_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_quantity_btn_page;?>
					<div class="label-description"><?php echo $text_options_product_page_description;?></div>
					</label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_additional_settings_newstore['quantity_btn_page']) { ?>
							<input id="config_asn_quantity_btn_page_yes" class="hide-radio" type="radio" name="config_additional_settings_newstore[quantity_btn_page]" value="1" checked="checked" />
							<label for="config_asn_quantity_btn_page_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_asn_quantity_btn_page_yes" class="hide-radio" type="radio" name="config_additional_settings_newstore[quantity_btn_page]" value="1" />
							<label for="config_asn_quantity_btn_page_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_additional_settings_newstore['quantity_btn_page']) { ?>
							<input id="config_asn_quantity_btn_page_no" class="hide-radio" type="radio" name="config_additional_settings_newstore[quantity_btn_page]" value="0" checked="checked" />							
							<label for="config_asn_quantity_btn_page_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_asn_quantity_btn_page_no" class="hide-radio" type="radio" name="config_additional_settings_newstore[quantity_btn_page]" value="0" />							
							<label for="config_asn_quantity_btn_page_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $title_setting_options;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_options_product_module;?><br>
					<div class="label-description"><?php echo $text_options_product_module_description;?></div>
					</label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_show_options_module) { ?>
							<input id="config_show_options_module_yes" class="hide-radio" type="radio" name="config_show_options_module" value="1" checked="checked" />
							<label for="config_show_options_module_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_show_options_module_yes" class="hide-radio" type="radio" name="config_show_options_module" value="1" />
							<label for="config_show_options_module_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_show_options_module) { ?>
							<input id="config_show_options_module_no" class="hide-radio" type="radio" name="config_show_options_module" value="0" checked="checked" />							
							<label for="config_show_options_module_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_show_options_module_no" class="hide-radio" type="radio" name="config_show_options_module" value="0" />							
							<label for="config_show_options_module_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						 
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_options_required_module;?>
					<div class="label-description"><?php echo $text_options_product_module_description;?></div>
					</label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_show_options_required_module) { ?>
							<input id="config_show_options_required_module_yes" class="hide-radio" type="radio" name="config_show_options_required_module" value="1" checked="checked" />
							<label for="config_show_options_required_module_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_show_options_required_module_yes" class="hide-radio" type="radio" name="config_show_options_required_module" value="1" />
							<label for="config_show_options_required_module_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_show_options_required_module) { ?>
							<input id="config_show_options_required_module_no" class="hide-radio" type="radio" name="config_show_options_required_module" value="0" checked="checked" />							
							<label for="config_show_options_required_module_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_show_options_required_module_no" class="hide-radio" type="radio" name="config_show_options_required_module" value="0" />							
							<label for="config_show_options_required_module_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						 
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_options_product_page;?><br>
					<div class="label-description"><?php echo $text_options_product_page_description;?></div>
					</label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_show_options_page) { ?>
							<input id="config_show_options_page_yes" class="hide-radio" type="radio" name="config_show_options_page" value="1" checked="checked" />
							<label for="config_show_options_page_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_show_options_page_yes" class="hide-radio" type="radio" name="config_show_options_page" value="1" />
							<label for="config_show_options_page_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_show_options_page) { ?>
							<input id="config_show_options_page_no" class="hide-radio" type="radio" name="config_show_options_page" value="0" checked="checked" />							
							<label for="config_show_options_page_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_show_options_page_no" class="hide-radio" type="radio" name="config_show_options_page" value="0" />							
							<label for="config_show_options_page_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						 
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_options_required_page;?><br>
					<div class="label-description"><?php echo $text_options_product_page_description;?></div>
					</label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_show_options_required_page) { ?>
							<input id="config_show_options_required_page_yes" class="hide-radio" type="radio" name="config_show_options_required_page" value="1" checked="checked" />
							<label for="config_show_options_required_page_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_show_options_required_page_yes" class="hide-radio" type="radio" name="config_show_options_required_page" value="1" />
							<label for="config_show_options_required_page_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_show_options_required_page) { ?>
							<input id="config_show_options_required_page_no" class="hide-radio" type="radio" name="config_show_options_required_page" value="0" checked="checked" />							
							<label for="config_show_options_required_page_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_show_options_required_page_no" class="hide-radio" type="radio" name="config_show_options_required_page" value="0" />							
							<label for="config_show_options_required_page_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						 
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_special_timer;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $entry_design_special_timer;?></label>
					<div class="col-sm-9">
						<select class="form-control" name="config_design_special_timer">
							<?php for ($i = 1; $i <= 2; $i++) {
							  ($config_design_special_timer == $i) ? $active = 'selected' : $active = ''; ?>
							<option value="<?php echo $i; ?>" <?php echo $active; ?>></span><?php echo "№ - ";?><?php echo $i; ?></option>
							<?php } ?>
						</select>						 
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-1 control-label"><?php echo "№ - 1";?></label>
					<div class="col-sm-3">	
						<img title="" alt="" src="view/image/1st.png" />
					</div>
					<label class="col-sm-1 control-label"><?php echo "№ - 2";?></label>
					<div class="col-sm-3">	
						<img title="" alt="" src="view/image/2st.png" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_entry_special_timer_module;?>
					<div class="label-description"><?php echo $text_entry_special_timer_module_description;?></div>
					</label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_show_special_timer_module) { ?>
							<input id="config_show_special_timer_module_yes" class="hide-radio" type="radio" name="config_show_special_timer_module" value="1" checked="checked" />
							<label for="config_show_special_timer_module_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_show_special_timer_module_yes" class="hide-radio" type="radio" name="config_show_special_timer_module" value="1" />
							<label for="config_show_special_timer_module_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_show_special_timer_module) { ?>
							<input id="config_show_special_timer_module_no" class="hide-radio" type="radio" name="config_show_special_timer_module" value="0" checked="checked" />							
							<label for="config_show_special_timer_module_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_show_special_timer_module_no" class="hide-radio" type="radio" name="config_show_special_timer_module" value="0" />							
							<label for="config_show_special_timer_module_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						 
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_entry_special_timer_page;?>
					<div class="label-description"><?php echo $text_entry_special_timer_page_description;?></div>
					</label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_show_special_timer_page) { ?>
							<input id="config_show_special_timer_page_yes" class="hide-radio" type="radio" name="config_show_special_timer_page" value="1" checked="checked" />
							<label for="config_show_special_timer_page_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_show_special_timer_page_yes" class="hide-radio" type="radio" name="config_show_special_timer_page" value="1" />
							<label for="config_show_special_timer_page_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_show_special_timer_page) { ?>
							<input id="config_show_special_timer_page_no" class="hide-radio" type="radio" name="config_show_special_timer_page" value="0" checked="checked" />							
							<label for="config_show_special_timer_page_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_show_special_timer_page_no" class="hide-radio" type="radio" name="config_show_special_timer_page" value="0" />							
							<label for="config_show_special_timer_page_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						 
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_review;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $entry_fields_dignity;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_show_review_plus) { ?>
							<input id="config_show_review_plus_yes" class="hide-radio" type="radio" name="config_show_review_plus" value="1" checked="checked" />
							<label for="config_show_review_plus_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_show_review_plus_yes" class="hide-radio" type="radio" name="config_show_review_plus" value="1" />
							<label for="config_show_review_plus_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_show_review_plus) { ?>
							<input id="config_show_review_plus_no" class="hide-radio" type="radio" name="config_show_review_plus" value="0" checked="checked" />							
							<label for="config_show_review_plus_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_show_review_plus_no" class="hide-radio" type="radio" name="config_show_review_plus" value="0" />							
							<label for="config_show_review_plus_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						 
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $entry_fields_required;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_show_review_plus_requared) { ?>
							<input id="config_show_review_plus_requared_yes" class="hide-radio" type="radio" name="config_show_review_plus_requared" value="1" checked="checked" />
							<label for="config_show_review_plus_requared_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_show_review_plus_requared_yes" class="hide-radio" type="radio" name="config_show_review_plus_requared" value="1" />
							<label for="config_show_review_plus_requared_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_show_review_plus_requared) { ?>
							<input id="config_show_review_plus_requared_no" class="hide-radio" type="radio" name="config_show_review_plus_requared" value="0" checked="checked" />							
							<label for="config_show_review_plus_requared_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_show_review_plus_requared_no" class="hide-radio" type="radio" name="config_show_review_plus_requared" value="0" />							
							<label for="config_show_review_plus_requared_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						 
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $entry_fields_disadvantages;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_show_review_minus) { ?>
							<input id="config_show_review_minus_yes" class="hide-radio" type="radio" name="config_show_review_minus" value="1" checked="checked" />
							<label for="config_show_review_minus_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_show_review_minus_yes" class="hide-radio" type="radio" name="config_show_review_minus" value="1" />
							<label for="config_show_review_minus_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_show_review_minus) { ?>
							<input id="config_show_review_minus_no" class="hide-radio" type="radio" name="config_show_review_minus" value="0" checked="checked" />							
							<label for="config_show_review_minus_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_show_review_minus_no" class="hide-radio" type="radio" name="config_show_review_minus" value="0" />							
							<label for="config_show_review_minus_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						 
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $entry_fields_required;?></label>
					<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_show_review_minus_requared) { ?>
							<input id="config_show_review_minus_requared_yes" class="hide-radio" type="radio" name="config_show_review_minus_requared" value="1" checked="checked" />
							<label for="config_show_review_minus_requared_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_show_review_minus_requared_yes" class="hide-radio" type="radio" name="config_show_review_minus_requared" value="1" />
							<label for="config_show_review_minus_requared_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_show_review_minus_requared) { ?>
							<input id="config_show_review_minus_requared_no" class="hide-radio" type="radio" name="config_show_review_minus_requared" value="0" checked="checked" />							
							<label for="config_show_review_minus_requared_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_show_review_minus_requared_no" class="hide-radio" type="radio" name="config_show_review_minus_requared" value="0" />							
							<label for="config_show_review_minus_requared_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>						 
					</div>
				</div>
				
				
				
				<div class="form-group">
					<label class="col-sm-3 control-label" ><?php echo $entry_ns_themes_custom_bg_mode;?></label>
					<div class="col-sm-9">
						<select name="config_ns_themes_custom_bg_mode" class="form-control">
							<?php if ($config_ns_themes_custom_bg_mode =='1') { ?>
								<option value="1" selected="selected"><?php echo $text_ns_themes_custom_bg_mode_image; ?></option>
								<option value="0"><?php echo $text_ns_themes_custom_bg_mode_color; ?></option>
							<?php } else{ ?>
								<option value="0" selected="selected"><?php echo $text_ns_themes_custom_bg_mode_color; ?></option>
								<option value="1"><?php echo $text_ns_themes_custom_bg_mode_image; ?></option>                  
							<?php } ?>					
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-3 control-label" for="input-bg-img-preview"><?php echo $entry_bg_img_preview; ?></label>
					<div class="col-sm-9"><a href="" id="thumb-bg-img-preview" data-toggle="image" class="img-thumbnail"><img src="<?php echo $bg_img_preview; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
						<input type="hidden" name="config_themes_custom_bg_img_preview" value="<?php echo $bg_img_val; ?>" id="input-bg-img-preview" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" ><?php echo $entry_themes_custom_bg_attachment;?></label>
					<div class="col-sm-9">
						<select class="form-control" name="config_themes_custom_bg_attachment">
							<?php foreach ($ns_bg_attachments as $ns_bg_attachment) { ?>
							<?php ($ns_bg_attachment == $config_themes_custom_bg_attachment) ? $active = 'selected' : $active=''; ?>
								<option value="<?php echo $ns_bg_attachment; ?>" <?php echo $active; ?>><?php echo $ns_bg_attachment; ?></option>
							<?php } ?>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" ><?php echo $entry_themes_custom_bg_position;?></label>
					<div class="col-sm-9">
						<select class="form-control" name="config_themes_custom_bg_position">
							<?php foreach ($ns_bg_positions as $ns_bg_position) { ?>
							<?php ($ns_bg_position == $config_themes_custom_bg_position) ? $active = 'selected' : $active=''; ?>
							<option value="<?php echo $ns_bg_position; ?>" <?php echo $active; ?>><?php echo $ns_bg_position; ?></option>
							<?php } ?>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" ><?php echo $entry_themes_custom_bg_repeat;?></label>
					<div class="col-sm-9">
						<select class="form-control" name="config_themes_custom_bg_repeat">
							<?php foreach ($ns_bg_repeats as $ns_bg_repeat) { ?>
							<?php ($ns_bg_repeat == $config_themes_custom_bg_repeat) ? $active = 'selected' : $active=''; ?>
							<option value="<?php echo $ns_bg_repeat; ?>" <?php echo $active; ?>><?php echo $ns_bg_repeat; ?></option>
							<?php } ?>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" ><?php echo $text_ns_themes_custom_bg_mode_color;?></label>
					<div class="col-sm-9">
						<input class="form-control color" type="text" name="config_ns_themes_custom_bg_mode_color" value="<?php echo $config_ns_themes_custom_bg_mode_color; ?>" />
					</div>
				</div>