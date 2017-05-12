<div id="popup-editor-product">
	<div class="title-editor"><?php echo $text_price;?></div>
	<form id="price-form" action="POST" method="post" enctype="multipart/form-data" class="form-horizontal">
	<input type="hidden" name="user_change" value="<?php echo $user_change;?>">
			<div class="form-group">
				<div class="col-sm-12">
					<div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_price_info;?></div>
				</div>
			</div>
			<div class="form-group">  
                <label class="col-sm-3 control-label" for="input-quantity"><?php echo $entry_method; ?></label>
                <div class="col-sm-9">
					<select class="form-control" id="input-quantity-method" name="price_method">
						<option value="equality"><?php echo $text_method_equality;?></option>
						<option value="plus"><?php echo $text_method_plus;?></option>
						<option value="minus"><?php echo $text_method_minus;?></option>
						<option value="multiply"><?php echo $text_method_multiply;?></option>
						<option value="divide"><?php echo $text_method_divide;?></option>					  
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="input-price-type" class="col-sm-3 control-label"><?php echo $entry_type_price;?></label>
				<div class="col-sm-9">
					<select class="form-control" id="input-price-type" name="price_type">
					  <option value="fix"><?php echo $text_price_type_fix;?></option>
					  <option value="percent"><?php echo $text_price_type_percent;?></option>
					</select>
				</div>
			</div>
			<div class="form-group">  
                <label class="col-sm-3 control-label" for="input-quantity"><?php echo $entry_value; ?></label>
                <div class="col-sm-9">
                  <input type="text" name="price" value="" placeholder="<?php echo $entry_value; ?>" id="input-quantity" class="form-control" />
                </div>
			</div>
</form>
<div class="text-right">
	<button onclick="$('.popup_banner').popup('hide');" class="btn-editor btn-cancel-editor" type="button"><?php echo $button_cancel;?></button>
	<button onclick="saveEditorPrice();" class="btn-editor btn-save-editor" type="button"><?php echo $button_save;?></button>
</div>
<script type="text/javascript">
function saveEditorPrice() {
	$.ajax({
			url: 'index.php?route=module/editproduct/editprice/saveEditorPrice&product_id=<?php echo $product_id;?>',
			type: 'post',
			dataType: 'json',
			data: $('#price-form').serialize(),
			beforeSend: function() {
				$('.popup-alert').remove();
				$('#price-form').prepend('<div id="loading_img_svg"></div>');
				$('#price-form').css('opacity',0.5);
				loading_img_svg(true);
			},
			complete: function() {
				loading_img_svg(false);
				$('#price-form').css('opacity',1);
			},
			success: function(json) {				
				$('.popup-alert').remove();
				if (json['error']) {
					$('#price-form').before('<div class="popup-alert alert alert-danger"><i class="fa fa-info-circle"></i> '+ json['error'] +' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				}
				if (json['success']) {
					$('#price-form').before('<div class="popup-alert alert alert-success"><i class="fa fa-info-circle"></i> '+ json['success'] +' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				location.reload();
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});	
};
</script>
<script type="text/javascript">
	$(".open_base_price").click(function(){ 
	$('.hidden_bprice').toggleClass("active", 200, "easeOutSine");		
});
</script>
<script type="text/javascript">
	function delete_manual(product_id) {
		$.ajax({
			url: 'index.php?route=module/editproduct/editprice/delete_manual_price&token=<?php echo $token; ?>',
			type: 'post',
			data: '&product_id=' + product_id,
			dataType: 'json',
			success: function(json) {
				$('.success, .warning, .attention, .information, .error').remove();
				if (json['success']) {
					$('#price-form').before('<div class="success" style="display: none;">' + json['success'] + '</div>');
					$('.success').fadeIn('slow');
					$('.price_manual').remove();
					$('.icon_price_edit').after('<div class="price_edit_currency">'+ json['price_edit'] +'</div>');	
					$('.price_auto').remove();		
					$('.price_auto_hidden').before('<input class="price_auto" type="text" name="price" value='+ json['price_edit'] + '></input>');																		
					$('.delete_button').remove();									
					setTimeout(function () { $('.success').hide('slow')},3000);									
				}
			}	
		});		
	}		
</script>
<script type="text/javascript">
	function disconnect(sku_product) {		
		$.ajax({
			url: 'index.php?route=module/editproduct/editprice/disconnect_join_product&token=<?php echo $token; ?>',
			type: 'post',
			data: '&sku_product=' + sku_product,
			dataType: 'json',
			success: function(json) {
				$('.success, .warning, .attention, .information, .error').remove();
				if (json['success']) {					
					$('#price-form').before('<div class="success" style="display: none;">' + json['success'] + '</div>');
					$('.success').fadeIn('slow');
					setTimeout(function () { $('.sku_join'+ json['sku_join_disconnect']).hide('slow')},500);										
					setTimeout(function () { $('.success').hide('slow')},3000);									
				}
			}	
		});				
	}
	function changes_general_product(sku_product_additional) {		
		$.ajax({
			url: 'index.php?route=module/editproduct/editprice/changes_general_product&token=<?php echo $token; ?>',
			type: 'post',
			data: '&sku_product_additional=' + sku_product_additional,
			dataType: 'json',
			success: function(json) {
				$('.success, .warning, .attention, .information, .error').remove();
				if (json['success']) {
					$('#price-form').before('<div class="success" style="display: none;">' + json['success'] + '</div>');
					$('.success').fadeIn('slow');
					setTimeout(function () { $('.sku_join'+ json['sku_join_disconnect_additional']).hide('slow')},500);										
					setTimeout(function () { $('.success').hide('slow')},1500);	
					setTimeout(function () { location.reload()},2000);	
				}
			}	
		});				
	}
</script>
</div>