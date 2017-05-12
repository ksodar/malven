	<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#tab-general-designed"><?php echo $tab_general_designed;?></a></li>
			</ul>
			<div class="tab-pane active" id="tab-general-designed">
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $selecting_color_scheme;?></label>
					<div class="col-sm-9">				
						<select class="form-control" name="config_design_template_color_theme">
							<?php for ($i = 1; $i <= 6; $i++) {
							  ($config_design_template_color_theme == $i) ? $active = 'selected' : $active = ''; ?>
							<option value="<?php echo $i; ?>" <?php echo $active; ?>></span><?php echo $color_scheme;?><?php echo " - ";?><?php echo $i; ?></option>
							<?php } ?>
						</select>
						
					</div>
				</div>
			<div class="form-group">
			<div class="col-sm-12" style="font-weight:bold; margin-bottom:15px;"><?php echo $color_scheme;?></div>
				<div class="col-sm-12">	
				<span class="theme-color"><span class="color-scheme-text">№1</span><span class="color-scheme" style="background:#2B8CDB"></span><span class="color-scheme" style="background:#f06262"></span></span>
				<span class="theme-color"><span class="color-scheme-text">№2</span><span class="color-scheme" style="background:#f06262"></span><span class="color-scheme" style="background:#2B8CDB"></span></span>
				<span class="theme-color"><span class="color-scheme-text">№3</span><span class="color-scheme" style="background:#FF6600"></span><span class="color-scheme" style="background:#666666"></span></span>
				<span class="theme-color"><span class="color-scheme-text">№4</span><span class="color-scheme" style="background:#28BECF"></span><span class="color-scheme" style="background:#666666"></span></span>
				<span class="theme-color"><span class="color-scheme-text">№5</span><span class="color-scheme" style="background:#333333"></span><span class="color-scheme" style="background:#2B8CDB"></span></span>
				<span class="theme-color"><span class="color-scheme-text">№6</span><span class="color-scheme" style="background:#333333"></span><span class="color-scheme" style="background:#62AD2D"></span></span>
				
				</div>
			</div>
				
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_manual_setting_designed;?></div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_top_sidebar_menu;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_custom_style;?></br>
					<div class="label-description"><?php echo $text_custom_style_description ;?></div>
					</label>
					<div class="col-sm-3">
						<input class="form-control" placeholder="<?php echo $text_custom_style_placeholder;?>" type="text" name="config_custom_style_newstore" value="<?php echo $config_custom_style_newstore;?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_top_background_sidebar_menu;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[top_background][value]" value="<?php echo $csseditor['top_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_top_color_link_sidebar_menu;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[top_color_link][value]" value="<?php echo $csseditor['top_color_link']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_top_color_link_hover_sidebar_menu;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[top_color_link_hover][value]" value="<?php echo $csseditor['top_color_link_hover']; ?>" />
					</div>
				</div>
				
				
				<!---->
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_header_search_setting;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_search_category_select_background;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_search_category_select_background][value]" value="<?php echo $csseditor['header_search_category_select_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_search_category_select_border_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_search_category_select_border_color][value]" value="<?php echo $csseditor['header_search_category_select_border_color']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_search_category_select_color_text;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_search_category_select_color_text][value]" value="<?php echo $csseditor['header_search_category_select_color_text']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_search_category_select_color_text_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_search_category_select_color_text_hover][value]" value="<?php echo $csseditor['header_search_category_select_color_text_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_search_btn_background;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_search_btn_background][value]" value="<?php echo $csseditor['header_search_btn_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_search_btn_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_search_btn_color][value]" value="<?php echo $csseditor['header_search_btn_color']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_search_btn_color_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_search_btn_color_hover][value]" value="<?php echo $csseditor['header_search_btn_color_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_search_btn_border_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_search_btn_border_color][value]" value="<?php echo $csseditor['header_search_btn_border_color']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_search_input_border_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_search_input_border_color][value]" value="<?php echo $csseditor['header_search_input_border_color']; ?>" />
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_header_cart;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_cart_background;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_cart_background][value]" value="<?php echo $csseditor['header_cart_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_cart_background_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_cart_background_hover][value]" value="<?php echo $csseditor['header_cart_background_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_cart_border_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_cart_border_color][value]" value="<?php echo $csseditor['header_cart_border_color']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_cart_color_text;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_cart_color_text][value]" value="<?php echo $csseditor['header_cart_color_text']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_header_cart_color_text_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[header_cart_color_text_hover][value]" value="<?php echo $csseditor['header_cart_color_text_hover']; ?>" />
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_link_pagemenu;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_link_pagemenu_background;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[link_pagemenu_background][value]" value="<?php echo $csseditor['link_pagemenu_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_link_pagemenu_border_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[link_pagemenu_border_color][value]" value="<?php echo $csseditor['link_pagemenu_border_color']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_link_pagemenu_color_text;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[link_pagemenu_color_text][value]" value="<?php echo $csseditor['link_pagemenu_color_text']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_general_menu_setting;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_general_menu_background;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[general_menu_background][value]" value="<?php echo $csseditor['general_menu_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_general_menu_background_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[general_menu_background_hover][value]" value="<?php echo $csseditor['general_menu_background_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_general_menu_border_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[general_menu_border_color][value]" value="<?php echo $csseditor['general_menu_border_color']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_general_menu_border_color_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[general_menu_border_color_hover][value]" value="<?php echo $csseditor['general_menu_border_color_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_general_menu_link_color_text;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[general_menu_link_color_text][value]" value="<?php echo $csseditor['general_menu_link_color_text']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_general_menu_link_color_text_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[general_menu_link_color_text_hover][value]" value="<?php echo $csseditor['general_menu_link_color_text_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_btn_carousel_setting;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_carousel_background;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_carousel_background][value]" value="<?php echo $csseditor['btn_carousel_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_carousel_background_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_carousel_background_hover][value]" value="<?php echo $csseditor['btn_carousel_background_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_carousel_color_text;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_carousel_color_text][value]" value="<?php echo $csseditor['btn_carousel_color_text']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_carousel_color_text_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_carousel_color_text_hover][value]" value="<?php echo $csseditor['btn_carousel_color_text_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_carousel_border_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_carousel_border_color][value]" value="<?php echo $csseditor['btn_carousel_border_color']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_box_heading_module;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_box_heading_module_background;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[box_heading_module_background][value]" value="<?php echo $csseditor['box_heading_module_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_box_heading_module_background_right;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[box_heading_module_background_right][value]" value="<?php echo $csseditor['box_heading_module_background_right']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_box_heading_module_color_text;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[box_heading_module_color_text][value]" value="<?php echo $csseditor['box_heading_module_color_text']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_btn_general_setting;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_general_background;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_general_background][value]" value="<?php echo $csseditor['btn_general_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_general_background_hover_block;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_general_background_hover_block][value]" value="<?php echo $csseditor['btn_general_background_hover_block']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_general_background_hover_button;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_general_background_hover_button][value]" value="<?php echo $csseditor['btn_general_background_hover_button']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_general_border_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_general_border_color][value]" value="<?php echo $csseditor['btn_general_border_color']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_general_border_color_hover_block;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_general_border_color_hover_block][value]" value="<?php echo $csseditor['btn_general_border_color_hover_block']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_general_border_color_hover_button;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_general_border_color_hover_button][value]" value="<?php echo $csseditor['btn_general_border_color_hover_button']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_general_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_general_color][value]" value="<?php echo $csseditor['btn_general_color']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_general_color_hover_block;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_general_color_hover_block][value]" value="<?php echo $csseditor['btn_general_color_hover_block']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_general_color_hover_button;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_general_color_hover_button][value]" value="<?php echo $csseditor['btn_general_color_hover_button']; ?>" />
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_btn_fastorder_setting;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_fastorder_background;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_fastorder_background][value]" value="<?php echo $csseditor['btn_fastorder_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_fastorder_background_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_fastorder_background_hover][value]" value="<?php echo $csseditor['btn_fastorder_background_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_fastorder_border_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_fastorder_border_color][value]" value="<?php echo $csseditor['btn_fastorder_border_color']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_fastorder_border_color_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_fastorder_border_color_hover][value]" value="<?php echo $csseditor['btn_fastorder_border_color_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_fastorder_color_text;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_fastorder_color_text][value]" value="<?php echo $csseditor['btn_fastorder_color_text']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_fastorder_color_text_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_fastorder_color_text_hover][value]" value="<?php echo $csseditor['btn_fastorder_color_text_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_btn_wishlist_setting;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_wishlist_background;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_wishlist_background][value]" value="<?php echo $csseditor['btn_wishlist_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_wishlist_background_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_wishlist_background_hover][value]" value="<?php echo $csseditor['btn_wishlist_background_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_wishlist_border_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_wishlist_border_color][value]" value="<?php echo $csseditor['btn_wishlist_border_color']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_wishlist_border_color_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_wishlist_border_color_hover][value]" value="<?php echo $csseditor['btn_wishlist_border_color_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_wishlist_color_text;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_wishlist_color_text][value]" value="<?php echo $csseditor['btn_wishlist_color_text']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_wishlist_color_text_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_wishlist_color_text_hover][value]" value="<?php echo $csseditor['btn_wishlist_color_text_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_btn_compare_setting;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_compare_background;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_compare_background][value]" value="<?php echo $csseditor['btn_compare_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_compare_background_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_compare_background_hover][value]" value="<?php echo $csseditor['btn_compare_background_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_compare_border_color;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_compare_border_color][value]" value="<?php echo $csseditor['btn_compare_border_color']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_compare_border_color_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_compare_border_color_hover][value]" value="<?php echo $csseditor['btn_compare_border_color_hover']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_compare_color_text;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_compare_color_text][value]" value="<?php echo $csseditor['btn_compare_color_text']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_btn_compare_color_text_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[btn_compare_color_text_hover][value]" value="<?php echo $csseditor['btn_compare_color_text_hover']; ?>" />
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-12 title-setting"><?php echo $text_footer_setting;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_footer_background;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[footer_background][value]" value="<?php echo $csseditor['footer_background']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_footer_border_top;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[footer_border_top][value]" value="<?php echo $csseditor['footer_border_top']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_footer_color_h5_title_block;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[footer_color_h5_title_block][value]" value="<?php echo $csseditor['footer_color_h5_title_block']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_footer_color_link;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[footer_color_link][value]" value="<?php echo $csseditor['footer_color_link']; ?>" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_footer_color_link_hover;?></label>
					<div class="col-sm-3">
						<input class="form-control color" type="text" name="csseditor[footer_color_link_hover][value]" value="<?php echo $csseditor['footer_color_link_hover']; ?>" />
					</div>
				</div>
			</div>
				