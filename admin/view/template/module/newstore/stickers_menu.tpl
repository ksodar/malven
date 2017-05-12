<?php
if(empty($config_change_color_text_sticker_special)) $config_change_color_text_sticker_special           		= "#FFFFFF";
if(empty($config_change_background_sticker_special)) $config_change_background_sticker_special          		= "#FC9292";
if(empty($config_change_icon_sticker_special)) $config_change_icon_sticker_special          			 		= "fa fa-bomb";
if(empty($config_change_color_icon_sticker_special)) $config_change_color_icon_sticker_special           		= "#FFFFFF";

if(empty($config_change_color_text_sticker_newproduct)) $config_change_color_text_sticker_newproduct     		= "#FFFFFF";
if(empty($config_change_background_sticker_newproduct)) $config_change_background_sticker_newproduct     		= "#1f96c4";
if(empty($config_limit_day_newproduct)) $config_limit_day_newproduct    								 		= "45";
if(empty($config_change_icon_sticker_newproduct)) $config_change_icon_sticker_newproduct    			 		= "fa fa-lightbulb-o";

if(empty($config_change_color_text_sticker_popular)) $config_change_color_text_sticker_popular           		= "#FFFFFF";
if(empty($config_change_background_sticker_popular)) $config_change_background_sticker_popular           		= "#4FC605";
if(empty($config_change_icon_sticker_popular)) $config_change_icon_sticker_popular          			 		= "fa fa-hand-o-left";
if(empty($config_min_quantity_popular)) $config_min_quantity_popular    								 		= "100";

if(empty($config_change_color_text_sticker_topbestseller)) $config_change_color_text_sticker_topbestseller      = "#FFFFFF";
if(empty($config_change_background_sticker_topbestseller)) $config_change_background_sticker_topbestseller      = "#F6941F";
if(empty($config_change_icon_sticker_topbestseller)) $config_change_icon_sticker_topbestseller          		= "fa fa-angellist";
if(empty($config_limit_order_product_topbestseller)) $config_limit_order_product_topbestseller           		= "10";


?>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#tab-spicial-sticker"><?php echo $tab_special_sticker;?></a></li>
					<li><a data-toggle="tab" href="#tab-newproduct-sticker"><?php echo $tab_newproduct_sticker;?></a></li>
					<li><a data-toggle="tab" href="#tab-popular-sticker"><?php echo $tab_popular_sticker;?></a></li>
					<li><a data-toggle="tab" href="#tab-bestseller-sticker"><?php echo $tab_bestseller_sticker;?></a></li>
				</ul>
			<div class="tab-pane active" id="tab-spicial-sticker">
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_sticker_special;?></label>
					<div class="col-sm-5">
					 <div class="radio-group-infinity">	
							<?php if ($on_off_sticker_special) { ?>
							<input id="on_off_sticker_special_yes" class="hide-radio" type="radio" name="on_off_sticker_special" value="1" checked="checked" />
							<label for="on_off_sticker_special_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="on_off_sticker_special_yes" class="hide-radio" type="radio" name="on_off_sticker_special" value="1" />
							<label for="on_off_sticker_special_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$on_off_sticker_special) { ?>
							<input id="on_off_sticker_special_no" class="hide-radio" type="radio" name="on_off_sticker_special" value="0" checked="checked" />							
							<label for="on_off_sticker_special_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="on_off_sticker_special_no" class="hide-radio" type="radio" name="on_off_sticker_special" value="0" />							
							<label for="on_off_sticker_special_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_background_sticker_special;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="color"  name="config_change_background_sticker_special" value="<?php echo $config_change_background_sticker_special;?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_color_text_sticker_special;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="color"  name="config_change_color_text_sticker_special" value="<?php echo $config_change_color_text_sticker_special;?>"/>
					</div>
				</div>				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_text_sticker_special; ?></label>
					<div class="col-sm-5">
					<tr>
						<td class="text-left"><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                          <input type="text" name="config_change_text_sticker_special[<?php echo $language['language_id']; ?>][config_change_text_sticker_special]" rows="5" placeholder="" class="form-control" value="<?php echo isset($config_change_text_sticker_special[$language['language_id']]) ? $config_change_text_sticker_special[$language['language_id']]['config_change_text_sticker_special'] : ''; ?>"></input>
                        </div>
                        <?php } ?></td>
					</tr>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_icon_sticker_special;?></label>
					<div class="col-sm-5">
						<span class="icon_open" id="config_change_icon_sticker_special" onclick="icon_fontawesome_popup($(this).attr('id'))">
						<?php echo $text_select_icon;?>
						<?php if(isset($config_change_icon_sticker_special)) { ?><i class="<?php echo $config_change_icon_sticker_special; ?>"></i><?php } ?></span>
						<input class="form-control" type="hidden"  name="config_change_icon_sticker_special" value="<?php echo $config_change_icon_sticker_special;?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_color_icon_sticker_special;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="color"  name="config_change_color_icon_sticker_special" value="<?php echo $config_change_color_icon_sticker_special;?>"/>
					</div>
				</div>	
				
			</div>
			<!--STICKER NEW PRODUCT-->
			<div class="tab-pane" id="tab-newproduct-sticker">
					<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_sticker_newproduct;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($on_off_sticker_newproduct) { ?>
							<input id="on_off_sticker_newproduct_yes" class="hide-radio" type="radio" name="on_off_sticker_newproduct" value="1" checked="checked" />
							<label for="on_off_sticker_newproduct_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="on_off_sticker_newproduct_yes" class="hide-radio" type="radio" name="on_off_sticker_newproduct" value="1" />
							<label for="on_off_sticker_newproduct_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$on_off_sticker_newproduct) { ?>
							<input id="on_off_sticker_newproduct_no" class="hide-radio" type="radio" name="on_off_sticker_newproduct" value="0" checked="checked" />							
							<label for="on_off_sticker_newproduct_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="on_off_sticker_newproduct_no" class="hide-radio" type="radio" name="on_off_sticker_newproduct" value="0" />							
							<label for="on_off_sticker_newproduct_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_limit_day;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="text"  name="config_limit_day_newproduct" value="<?php echo $config_limit_day_newproduct;?>"/>
					</div>
					<label class="col-sm-5"><?php echo $text_day;?></label>
				</div>	
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_background_sticker_newproduct;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="color"  name="config_change_background_sticker_newproduct" value="<?php echo $config_change_background_sticker_newproduct;?>"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_text_sticker_newproduct; ?></label>
					<div class="col-sm-5">
					<tr>
						<td class="text-left"><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                          <input name="config_change_text_sticker_newproduct[<?php echo $language['language_id']; ?>][config_change_text_sticker_newproduct]" rows="5" placeholder="" class="form-control" value="<?php echo isset($config_change_text_sticker_newproduct[$language['language_id']]) ? $config_change_text_sticker_newproduct[$language['language_id']]['config_change_text_sticker_newproduct'] : ''; ?>"></input>
                        </div>
                        <?php } ?></td>
					</tr>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_color_text_sticker_newproduct;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="color"  name="config_change_color_text_sticker_newproduct" value="<?php echo $config_change_color_text_sticker_newproduct;?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_icon_sticker_newproduct;?></label>
					<div class="col-sm-5">
						<span class="icon_open" id="config_change_icon_sticker_newproduct" onclick="icon_fontawesome_popup($(this).attr('id'))">
						<?php echo $text_select_icon;?>
						<?php if(isset($config_change_icon_sticker_newproduct)) { ?><i class="<?php echo $config_change_icon_sticker_newproduct; ?>"></i><?php } ?></span>
						<input class="form-control" type="hidden"  name="config_change_icon_sticker_newproduct" value="<?php echo $config_change_icon_sticker_newproduct;?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_color_icon_sticker_newproduct;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="color"  name="config_change_color_icon_sticker_newproduct" value="<?php echo $config_change_color_icon_sticker_newproduct;?>"/>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="tab-popular-sticker">
			<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_sticker_popular;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($on_off_sticker_popular) { ?>
							<input id="on_off_sticker_popular_yes" class="hide-radio" type="radio" name="on_off_sticker_popular" value="1" checked="checked" />
							<label for="on_off_sticker_popular_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="on_off_sticker_popular_yes" class="hide-radio" type="radio" name="on_off_sticker_popular" value="1" />
							<label for="on_off_sticker_popular_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$on_off_sticker_popular) { ?>
							<input id="on_off_sticker_popular_no" class="hide-radio" type="radio" name="on_off_sticker_popular" value="0" checked="checked" />							
							<label for="on_off_sticker_popular_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="on_off_sticker_popular_no" class="hide-radio" type="radio" name="on_off_sticker_popular" value="0" />							
							<label for="on_off_sticker_popular_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_min_quantity_popular;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="text"  name="config_min_quantity_popular" value="<?php echo $config_min_quantity_popular;?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_background_sticker_popular;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="color"  name="config_change_background_sticker_popular" value="<?php echo $config_change_background_sticker_popular;?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_text_sticker_popular; ?></label>
					<div class="col-sm-5">
					<tr>
						<td class="text-left"><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                          <input type="text" name="config_change_text_sticker_popular[<?php echo $language['language_id']; ?>][config_change_text_sticker_popular]" rows="5" placeholder="" class="form-control" value="<?php echo isset($config_change_text_sticker_popular[$language['language_id']]) ? $config_change_text_sticker_popular[$language['language_id']]['config_change_text_sticker_popular'] : ''; ?>"></input>
                        </div>
                        <?php } ?></td>
					</tr>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_color_text_sticker_popular;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="color"  name="config_change_color_text_sticker_popular" value="<?php echo $config_change_color_text_sticker_popular;?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_icon_sticker_popular;?></label>
					<div class="col-sm-5">
						<span class="icon_open" id="config_change_icon_sticker_popular" onclick="icon_fontawesome_popup($(this).attr('id'))">
						<?php echo $text_select_icon;?>
						<?php if(isset($config_change_icon_sticker_popular)) { ?><i class="<?php echo $config_change_icon_sticker_popular; ?>"></i><?php } ?></span>
						<input class="form-control" type="hidden"  name="config_change_icon_sticker_popular" value="<?php echo $config_change_icon_sticker_popular;?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_color_icon_sticker_popular;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="color"  name="config_change_color_icon_sticker_popular" value="<?php echo $config_change_color_icon_sticker_popular;?>"/>
					</div>
				</div>
			</div>	
			
			<div class="tab-pane" id="tab-bestseller-sticker">
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_on_off_sticker_topbestseller;?></label>
					<div class="col-sm-5">
						<div class="radio-group-infinity">	
							<?php if ($on_off_sticker_topbestseller) { ?>
							<input id="on_off_sticker_topbestseller_yes" class="hide-radio" type="radio" name="on_off_sticker_topbestseller" value="1" checked="checked" />
							<label for="on_off_sticker_topbestseller_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="on_off_sticker_topbestseller_yes" class="hide-radio" type="radio" name="on_off_sticker_topbestseller" value="1" />
							<label for="on_off_sticker_topbestseller_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$on_off_sticker_topbestseller) { ?>
							<input id="on_off_sticker_topbestseller_no" class="hide-radio" type="radio" name="on_off_sticker_topbestseller" value="0" checked="checked" />							
							<label for="on_off_sticker_topbestseller_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="on_off_sticker_topbestseller_no" class="hide-radio" type="radio" name="on_off_sticker_topbestseller" value="0" />							
							<label for="on_off_sticker_topbestseller_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_limit_order_product_topbestseller;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="text"  name="config_limit_order_product_topbestseller" value="<?php echo $config_limit_order_product_topbestseller;?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_background_sticker_topbestseller;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="color"  name="config_change_background_sticker_topbestseller" value="<?php echo $config_change_background_sticker_topbestseller;?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_text_sticker_topbestseller; ?></label>
					<div class="col-sm-5">
					<tr>
						<td class="text-left"><?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                          <input type="text" name="config_change_text_sticker_topbestseller[<?php echo $language['language_id']; ?>][config_change_text_sticker_topbestseller]" rows="5" placeholder="" class="form-control" value="<?php echo isset($config_change_text_sticker_topbestseller[$language['language_id']]) ? $config_change_text_sticker_topbestseller[$language['language_id']]['config_change_text_sticker_topbestseller'] : ''; ?>"></input>
                        </div>
                        <?php } ?></td>
					</tr>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_color_text_sticker_topbestseller;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="color"  name="config_change_color_text_sticker_topbestseller" value="<?php echo $config_change_color_text_sticker_topbestseller;?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_icon_sticker_topbestseller;?></label>
					<div class="col-sm-5">
						<span class="icon_open" id="config_change_icon_sticker_topbestseller" onclick="icon_fontawesome_popup($(this).attr('id'))">
						<?php echo $text_select_icon;?>
						<?php if(isset($config_change_icon_sticker_topbestseller)) { ?><i class="<?php echo $config_change_icon_sticker_topbestseller; ?>"></i><?php } ?></span>
						<input class="form-control" type="hidden"  name="config_change_icon_sticker_topbestseller" value="<?php echo $config_change_icon_sticker_topbestseller;?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_change_color_icon_sticker_topbestseller;?></label>
					<div class="col-sm-5">
						<input class="form-control" type="color"  name="config_change_color_icon_sticker_topbestseller" value="<?php echo $config_change_color_icon_sticker_topbestseller;?>"/>
					</div>
				</div>
			</div>