<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_setting_shopping_cart;?></div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label"><?php echo $text_on_off_hover_shopping_cart;?></label>
	<div class="col-sm-9">
		<div class="radio-group-infinity">	
			<?php if ($config_on_off_shopping_cart_hover) { ?>
				<input id="config_on_off_shopping_cart_hover_yes" class="hide-radio" type="radio" name="config_on_off_shopping_cart_hover" value="1" checked="checked" />
				<label for="config_on_off_shopping_cart_hover_yes"><?php echo $text_yes; ?></label>
			<?php } else { ?>
				<input id="config_on_off_shopping_cart_hover_yes" class="hide-radio" type="radio" name="config_on_off_shopping_cart_hover" value="1" />
				<label for="config_on_off_shopping_cart_hover_yes"><?php echo $text_yes; ?></label>
			<?php } ?>
			<?php if (!$config_on_off_shopping_cart_hover) { ?>
				<input id="config_on_off_shopping_cart_hover_no" class="hide-radio" type="radio" name="config_on_off_shopping_cart_hover" value="0" checked="checked" />							
				<label for="config_on_off_shopping_cart_hover_no"><?php echo $text_no; ?></label>
			<?php } else { ?>
				<input id="config_on_off_shopping_cart_hover_no" class="hide-radio" type="radio" name="config_on_off_shopping_cart_hover" value="0" />							
				<label for="config_on_off_shopping_cart_hover_no"><?php echo $text_no; ?></label>
			<?php } ?>						  
		</div>
	</div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label" ><?php echo $text_on_off_click_shopping_cart;?></label>
	<div class="col-sm-9">
		<select name="config_on_off_shopping_cart_click" class="form-control">
			<?php if ($config_on_off_shopping_cart_click =='1') { ?>
				<option value="1" selected="selected"><?php echo $popup_shopping_cart; ?></option>
				<option value="0"><?php echo $popup_standart; ?></option>
			<?php } else{ ?>
				<option value="0" selected="selected"><?php echo $popup_standart; ?></option>
				<option value="1"><?php echo $popup_shopping_cart; ?></option>                  
			<?php } ?>					
		</select>
	</div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label" ><?php echo $text_shopping_cart_after_add;?></label>
	<div class="col-sm-9">
		<select name="config_shopping_cart_after_add" class="form-control">
			<?php if ($config_shopping_cart_after_add =='1') { ?>
				<option value="1" selected="selected"><?php echo $popup_shopping_cart; ?></option>
				<option value="0"><?php echo $popup_standart; ?></option>
			<?php } else{ ?>
				<option value="0" selected="selected"><?php echo $popup_standart; ?></option>
				<option value="1"><?php echo $popup_shopping_cart; ?></option>                  
			<?php } ?>					
		</select>
	</div>
</div>
