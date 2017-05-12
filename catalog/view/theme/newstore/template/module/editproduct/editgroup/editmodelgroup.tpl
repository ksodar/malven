<div id="popup-editor-product">
	<div class="title-editor"><?php echo $entry_model_location_tax_class;?></div>
	  <form class="form-horizontal" id="form-product-model" enctype="multipart/form-data" method="post">
		<div class="form-group">
			<div class="col-sm-12">
				<div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_codes_info;?></div>
			</div>
		</div>
		<div class="form-group">
			<label for="input-model" class="col-sm-2 desc_edit_label"><?php echo $entry_model; ?></label>
			<div class="col-sm-8">
				<div class="input-group">
				  <span class="input-group-addon"><input type="checkbox" value="1" name="status_model"></span>
				  <input type="text" class="form-control" id="input-model" placeholder="<?php echo $entry_model; ?>" value="<?php echo isset($product['model']) ? $product['model'] : ''; ?>" name="model">
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="input-location" class="col-sm-2 desc_edit_label"><?php echo $entry_location; ?></label>
			<div class="col-sm-8">
				<div class="input-group">
				  <span class="input-group-addon"><input type="checkbox" value="1" name="status_location"></span>
				  <input type="text" class="form-control" id="input-location" placeholder="<?php echo $entry_location; ?>" value="<?php echo isset($product['location']) ? $product['location'] : ''; ?>" name="location">
				</div>
			</div>
		</div>
		<div class="form-group">
            <label class="col-sm-2 desc_edit_label" for="input-tax-class"><?php echo $entry_tax_class; ?></label>
            <div class="col-sm-8">
				<div class="input-group">
					<span class="input-group-addon"><input type="checkbox" value="1" name="status_tax"></span>
					<select name="tax_class_id" id="input-tax-class" class="form-control">
						<option value="0"><?php echo $text_none; ?></option>
						<?php foreach ($tax_classes as $tax_class) { ?>
							<?php if(isset($tax_class_id)) { ?>
								<?php if ($tax_class['tax_class_id'] == $tax_class_id) { ?>
									<option value="<?php echo $tax_class['tax_class_id']; ?>" selected="selected"><?php echo $tax_class['title']; ?></option>
								<?php } else { ?>
									<option value="<?php echo $tax_class['tax_class_id']; ?>"><?php echo $tax_class['title']; ?></option>
								<?php } ?>
							<?php } else { ?>
								<option value="<?php echo $tax_class['tax_class_id']; ?>"><?php echo $tax_class['title']; ?></option>
							<?php } ?>
						<?php } ?>
					</select>
				</div>
            </div>
        </div>
	  </form>
<div class="text-right">
	<button onclick="$('.popup_banner').popup('hide');groupEditorRefresh();" class="btn-editor btn-cancel-editor" type="button"><?php echo $button_cancel;?></button>
	<button onclick="saveGroupEditor();" data-loading-text="<?php echo $text_loading_editor; ?>" class="btn-editor btn-save-editor" type="button"><?php echo $button_save;?></button>
</div>
	
<script type="text/javascript">
function saveGroupEditor() { 	
	$.ajax({
		url: 'index.php?route=module/editproduct/editgroup/productGroupModelChange&token=<?php echo $token;?>',
		type: 'post',
		dataType: 'json',
		data: $('.editor-group-checked-product input.group-editor-checkbox[type=\'checkbox\']:checked, #form-product-model input[type=\'text\'], #form-product-model input[type=\'checkbox\']:checked, #form-product-model select'),
		beforeSend: function() {
			$('#popup-editor-product .btn-save-editor').button('loading');
			$('#form-product-model').prepend('<div id="loading_img_svg"></div>');
			$('#form-product-model').css('opacity',0.5);
			loading_img_svg(true);
		},
		complete: function() {
			loading_img_svg(false);
			$('#popup-editor-product .btn-save-editor').button('reset');
			$('#form-product-model').css('opacity',1);
		},
		success: function(json) {
		$('#popup-editor-product .alert.alert-danger, #popup-editor-product .alert.alert-success').remove();
			if (json['warning']) {
				$('#form-product-model').before('<div class="alert alert-danger"><i class="fa fa-check-circle"></i> ' + json['warning'] + '</div>');	
			}
			if (json['success']) {
			$('#form-product-model').before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');			
				setTimeout(function(){					
						location.reload(true);
				}, 1000)
			}
		}
	});
}
</script>