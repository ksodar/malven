<div id="popup-editor-product">
<div class="title-editor"><?php echo $text_code;?></div>
	<form id="code-form" action="POST" method="post" enctype="multipart/form-data" class="form-horizontal">
	<input type="hidden" name="user_change" value="<?php echo $user_change;?>">
		
		<div class="form-group">
			<label class="col-sm-3 desc_edit_label"><?php echo $entry_model; ?></label>
			<div class="col-sm-9">
				<input class="form-control" type="text" name="model" value="<?php echo $model; ?>" />
			</div>
		</div>
		<div class="form-group">
			 <label class="col-sm-3 desc_edit_label"><?php echo $entry_sku; ?></label>
			<div class="col-sm-9">
				<input class="form-control" type="text" name="sku" value="<?php echo $sku; ?>" />
			</div>
		</div>
		<div class="form-group">
			 <label class="col-sm-3 desc_edit_label"><?php echo $entry_upc; ?></label>
			<div class="col-sm-9">
				<input class="form-control" type="text" name="upc" value="<?php echo $upc; ?>" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 desc_edit_label"><?php echo $entry_location; ?></label>
			<div class="col-sm-9">
				<input class="form-control" type="text" name="location" value="<?php echo $location; ?>" />
			</div>
		</div>
		<div class="form-group">
            <label class="col-sm-3 desc_edit_label" for="input-tax-class"><?php echo $entry_tax_class; ?></label>
            <div class="col-sm-9">
                <select name="tax_class_id" id="input-tax-class" class="form-control">
                    <option value="0"><?php echo $text_none; ?></option>
                    <?php foreach ($tax_classes as $tax_class) { ?>
                    <?php if ($tax_class['tax_class_id'] == $tax_class_id) { ?>
                    <option value="<?php echo $tax_class['tax_class_id']; ?>" selected="selected"><?php echo $tax_class['title']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $tax_class['tax_class_id']; ?>"><?php echo $tax_class['title']; ?></option>
                    <?php } ?>
                    <?php } ?>
                </select>
            </div>
        </div>
		<div class="form-group">
            <label class="col-sm-3 desc_edit_label" for="input-quantity"><?php echo $entry_quantity; ?></label>
            <div class="col-sm-9">
                <input type="text" name="quantity" value="<?php echo $quantity; ?>" placeholder="<?php echo $entry_quantity; ?>" id="input-quantity" class="form-control" />
            </div>
        </div>
		<div class="form-group">
            <label class="col-sm-3 desc_edit_label" for="input-minimum"><?php echo $entry_minimum; ?></label>
            <div class="col-sm-9">
               <input type="text" name="minimum" value="<?php echo $minimum; ?>" placeholder="" id="input-minimum" class="form-control" />
            </div>
        </div>
		<div class="form-group">
            <label class="col-sm-3 desc_edit_label" for="input-subtract"><?php echo $entry_subtract; ?></label>
            <div class="col-sm-9">
                <select name="subtract" id="input-subtract" class="form-control">
                <?php if ($subtract) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                <?php } ?>
                </select>
            </div>
        </div>
		<div class="form-group">
            <label class="col-sm-3 desc_edit_label" for="input-stock-status"><?php echo $entry_stock_status; ?></label>
            <div class="col-sm-9">
                <select name="stock_status_id" id="input-stock-status" class="form-control">
                    <?php foreach ($stock_statuses as $stock_status) { ?>
                    <?php if ($stock_status['stock_status_id'] == $stock_status_id) { ?>
                    <option value="<?php echo $stock_status['stock_status_id']; ?>" selected="selected"><?php echo $stock_status['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $stock_status['stock_status_id']; ?>"><?php echo $stock_status['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                </select>
            </div>
        </div>
		<div class="form-group">
            <label class="col-sm-3 desc_edit_label" for="input-length"><?php echo $entry_dimension; ?></label>
            <div class="col-sm-9">
                <div class="row">
                    <div class="col-sm-4">
                      <input type="text" name="length" value="<?php echo $length; ?>" placeholder="<?php echo $entry_length; ?>" id="input-length" class="form-control" />
                    </div>
                    <div class="col-sm-4">
                      <input type="text" name="width" value="<?php echo $width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width" class="form-control" />
                    </div>
                    <div class="col-sm-4">
                      <input type="text" name="height" value="<?php echo $height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height" class="form-control" />
                    </div>
                </div>
            </div>
        </div>
		<div class="form-group">
            <label class="col-sm-3 desc_edit_label" for="input-length-class"><?php echo $entry_length_class; ?></label>
            <div class="col-sm-9">
                <select name="length_class_id" id="input-length-class" class="form-control">
                    <?php foreach ($length_classes as $length_class) { ?>
                    <?php if ($length_class['length_class_id'] == $length_class_id) { ?>
                    <option value="<?php echo $length_class['length_class_id']; ?>" selected="selected"><?php echo $length_class['title']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $length_class['length_class_id']; ?>"><?php echo $length_class['title']; ?></option>
                    <?php } ?>
                    <?php } ?>
                </select>
            </div>
        </div>
		<div class="form-group">
            <label class="col-sm-3 desc_edit_label" for="input-weight"><?php echo $entry_weight; ?></label>
            <div class="col-sm-9">
                <input type="text" name="weight" value="<?php echo $weight; ?>" placeholder="<?php echo $entry_weight; ?>" id="input-weight" class="form-control" />
            </div>
        </div>
		<div class="form-group">
            <label class="col-sm-3 desc_edit_label" for="input-weight-class"><?php echo $entry_weight_class; ?></label>
            <div class="col-sm-9">
                <select name="weight_class_id" id="input-weight-class" class="form-control">
                    <?php foreach ($weight_classes as $weight_class) { ?>
                    <?php if ($weight_class['weight_class_id'] == $weight_class_id) { ?>
                    <option value="<?php echo $weight_class['weight_class_id']; ?>" selected="selected"><?php echo $weight_class['title']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $weight_class['weight_class_id']; ?>"><?php echo $weight_class['title']; ?></option>
                    <?php } ?>
                    <?php } ?>
                </select>
             </div>
        </div>
		<div class="form-group">
            <label class="col-sm-3 desc_edit_label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
            <div class="col-sm-9">
                <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" placeholder="" id="input-sort-order" class="form-control" />
            </div>
        </div>
	</form>
	<div class="row mtb10">
		<div class="col-xs-12 text-center">
			<button class="btn-editor btn-primary-editor" type="button" data-toggle="collapse" data-target="#change_edit_data_product" aria-expanded="false" aria-controls="collapseExample">
			<?php echo $button_last_change;?>
			</button>
		</div>
	</div>
	<div class="row collapse" id="change_edit_data_product">
		<div class="col-xs-12 table-responsive">
			<table class="table table-bordered" style="background:#fff;">
				<thead>
				  <tr>
					<th class="text-center"><div><span><?php echo $ch_user; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_model; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_sku; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_upc; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_location; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_tax_class; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_quantity; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_minimum; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_subtract; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_stock_status; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_lwh; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_length_class; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_weight; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_weight_class; ?></span></div></th>
					<th class="text-center"><div><span><?php echo $ch_date; ?></span></div></th>
				  </tr>
				</thead>
				<tbody>
				<?php $i=0;?>
					<?php foreach ($change_edit_code as $result ) { ?>
						<?php if($i >= 10) break;?>
						<tr>
							<td class="text-center"><div class="ch-user-name"><?php echo $result['user_name'];?></div></label></td>
							<td class="text-center w20">
							<?php if($result['model_product'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>
							<td class="text-center w20">
							<?php if($result['sku_product'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>
							<td class="text-center w20">
							<?php if($result['upc_product'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>
							<td class="text-center w20">
							<?php if($result['location'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>
							<td class="text-center w20">
							<?php if($result['tax_class'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>
							<td class="text-center w20">
							<?php if($result['quantity'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>
							<td class="text-center w20">
							<?php if($result['minimum'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>
							<td class="text-center w20">
							<?php if($result['subtract'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>
							<td class="text-center w20">
							<?php if($result['stock_status'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>							
							<td class="text-center w20">
							<?php if($result['lwh'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>
							<td class="text-center w20">
							<?php if($result['length_class'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>
							<td class="text-center w20">
							<?php if($result['weight'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>
							<td class="text-center w20">
							<?php if($result['weight_class'] !='') { ?>
								<i class="fa fa-check-square-o ch-green" aria-hidden="true"></i>
							<?php } else { ?>
								<i class="fa fa-minus-square ch-red" aria-hidden="true"></i>
							<?php } ?>
							</td>							
							<td class="text-center"><?php echo $result['date_modified'];?></td>
						</tr>
					<?php $i++;?>
				<?php } ?>
				</tbody>
			</table>
		</div>
	</div>	
	<div class="text-right">
		<button onclick="$('.popup_banner').popup('hide');" class="btn-editor btn-cancel-editor" type="button"><?php echo $button_cancel;?></button>
		<button onclick="saveEditorData();" class="btn-editor btn-save-editor" type="button"><?php echo $button_save;?></button>
	</div>
<script type="text/javascript">
function saveEditorData() {
	$.ajax({
			url: 'index.php?route=module/editproduct/editcode/saveEditorData&product_id=<?php echo $product_id;?>',
			type: 'post',
			dataType: 'json',
			data: $('#code-form').serialize(),
			beforeSend: function() {
				$('.popup-alert').remove();
				$('#code-form').prepend('<div id="loading_img_svg"></div>');
				$('#code-form').css('opacity',0.5);
				loading_img_svg(true);
			},
			complete: function() {
				loading_img_svg(false);
				$('#code-form').css('opacity',1);
			},
			success: function(json) {
				$('.popup-alert').remove();
				if (json['error']) {
					$('#code-form').before('<div class="popup-alert alert alert-danger"><i class="fa fa-info-circle"></i> '+ json['error'] +' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				}
				if (json['success']) {
					$('#code-form').before('<div class="popup-alert alert alert-success"><i class="fa fa-info-circle"></i> '+ json['success'] +' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				location.reload();
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});	
};
</script>
</div>