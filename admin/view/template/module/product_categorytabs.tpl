<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-latest-by-category" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-latest-by-category" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
		  <div class="form-group">
			<label class="col-sm-2 control-label" for="input-parent"><?php echo $entry_category; ?></label>
			<div class="col-sm-10">
			 <select name="category_id" id="input_name_category_id" class="form-control">
                  <?php foreach ($categories as $category) { ?>
                  <?php if ($category['category_id'] == $category_id) { ?>
                  <option value="<?php echo $category['category_id']; ?>" selected="selected"><?php echo $category['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
              </select>				
			</div>			     
          </div>
		   <div class="form-group">
            <label class="col-sm-2 control-label" for="input-product"><?php echo $entry_featured_product; ?></label>
            <div class="col-sm-10">
              <input type="text" name="product" value="" placeholder="<?php echo $entry_featured_product; ?>" id="input-product" class="form-control" />
              <div id="product-category" class="well well-sm" style="height: 150px; overflow: auto;">
                <?php foreach ($products as $product) { ?>
                <div id="product-category<?php echo $product['product_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product['name']; ?>
                  <input type="hidden" name="product[]" value="<?php echo $product['product_id']; ?>" />
                </div>
                <?php } ?>
              </div>
            </div>
          </div>
		  <div class="form-group">
				<label class="col-sm-2 control-label" for="input-link-image"><?php echo $entry_show_only_featured_product; ?></label>
				<div class="col-sm-10">
					<div class="radio-group-infinity">	
						<?php if ($show_only_featured_product) { ?>
							<input id="show_only_featured_product_yes" class="hide-radio" type="radio" name="show_only_featured_product" value="1" checked="checked" />
							<label for="show_only_featured_product_yes"><?php echo $text_yes; ?></label>
						<?php } else { ?>
							<input id="show_only_featured_product_yes" class="hide-radio" type="radio" name="show_only_featured_product" value="1" />
							<label for="show_only_featured_product_yes"><?php echo $text_yes; ?></label>
						<?php } ?>
						<?php if (!$show_only_featured_product) { ?>
							<input id="show_only_featured_product_no" class="hide-radio" type="radio" name="show_only_featured_product" value="0" checked="checked" />							
							<label for="show_only_featured_product_no"><?php echo $text_no; ?></label>
						<?php } else { ?>
							<input id="show_only_featured_product_no" class="hide-radio" type="radio" name="show_only_featured_product" value="0" />							
							<label for="show_only_featured_product_no"><?php echo $text_no; ?></label>
						<?php } ?>						  
					</div>
				</div>
			</div>
		   <div class="form-group">
            <label class="col-sm-2 control-label" for="input-limit"><?php echo $entry_sort; ?></label>
            <div class="col-sm-10">
             <select name="sorts_product" id="input-sort" class="form-control">
            <?php foreach ($sorts as $sorts) { ?>

			<?php if ($sorts['value'] == $sorts_product) { ?>
            <option value="<?php echo $sorts['value']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['value']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-limit"><?php echo $entry_limit; ?></label>
            <div class="col-sm-10">
              <input type="text" name="limit" value="<?php echo $limit; ?>" placeholder="<?php echo $entry_limit; ?>" id="input-limit" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-width"><?php echo $entry_width; ?></label>
            <div class="col-sm-10">
              <input type="text" name="width" value="<?php echo $width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width" class="form-control" />
              <?php if ($error_width) { ?>
              <div class="text-danger"><?php echo $error_width; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-height"><?php echo $entry_height; ?></label>
            <div class="col-sm-10">
              <input type="text" name="height" value="<?php echo $height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height" class="form-control" />
              <?php if ($error_height) { ?>
              <div class="text-danger"><?php echo $error_height; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                <?php if ($status) { ?>
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
                <label class="col-sm-2 control-label" for="input-banner_to_category"><?php echo $entry_banner; ?></label>
                <div class="col-sm-2"><a href="" id="thumb-banner_to_category" data-toggle="image" class="img-thumbnail"><img src="<?php echo $banner_product_to_category; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                  <input type="hidden" name="banner_to_category" value="<?php echo $banner_to_category; ?>" id="input-banner_to_category" />
                </div>
				<div class="col-sm-6">
					<div class="form-group">
						<label class="col-sm-4 control-label" for="input-width-banner"><?php echo $entry_width_banner; ?></label>
						<div class="col-sm-8">
						  <input type="text" name="width_banner" value="<?php echo $width_banner; ?>" placeholder="<?php echo $entry_width_banner; ?>" id="input-width-banner" class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label" for="input-height-banner"><?php echo $entry_height_banner; ?></label>
						<div class="col-sm-8">
						  <input type="text" name="height_banner" value="<?php echo $height_banner; ?>" placeholder="<?php echo $entry_height_banner; ?>" id="input-height_banner" class="form-control" />
						</div>
					</div>
				</div>
            </div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-link-image"><?php echo $entry_link_image; ?></label>
				<div class="col-sm-10">
					<input type="text" name="link_image" value="<?php echo $link_image; ?>" placeholder="<?php echo $entry_link_image; ?>" id="input-link-image" class="form-control" />         
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-link-image"><?php echo $entry_image_open_popup; ?></label>
				<div class="col-sm-10">
					<div class="radio-group-infinity">	
						<?php if ($link_image_open_popup) { ?>
							<input id="open_link_image_popup_yes" class="hide-radio" type="radio" name="link_image_open_popup" value="1" checked="checked" />
							<label for="open_link_image_popup_yes"><?php echo $text_yes; ?></label>
						<?php } else { ?>
							<input id="open_link_image_popup_yes" class="hide-radio" type="radio" name="link_image_open_popup" value="1" />
							<label for="open_link_image_popup_yes"><?php echo $text_yes; ?></label>
						<?php } ?>
						<?php if (!$link_image_open_popup) { ?>
							<input id="open_link_image_popup_no" class="hide-radio" type="radio" name="link_image_open_popup" value="0" checked="checked" />							
							<label for="open_link_image_popup_no"><?php echo $text_no; ?></label>
						<?php } else { ?>
							<input id="open_link_image_popup_no" class="hide-radio" type="radio" name="link_image_open_popup" value="0" />							
							<label for="open_link_image_popup_no"><?php echo $text_no; ?></label>
						<?php } ?>						  
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-status-banner"><?php echo $entry_status_banner; ?></label>
				<div class="col-sm-10">
				  <select name="status_banner" id="input-status-banner" class="form-control">
					<?php if ($status_banner) { ?>
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
				<label class="col-sm-2 control-label" for="input-position-banner"><?php echo $entry_position_banner; ?></label>
				<div class="col-sm-10">
				  <select name="position_banner" id="input-position-banner" class="form-control">
					<?php if ($position_banner == '1') { ?>
					<option value="1" selected="selected"><?php echo $text_left; ?></option>
					<option value="2"><?php echo $text_right; ?></option>
					<?php } else { ?>
					<option value="1"><?php echo $text_left; ?></option>
					<option value="2" selected="selected"><?php echo $text_right; ?></option>
					<?php } ?>
				  </select>
				</div>
			</div>
			 
          
        </form>
      </div>
    </div>
  </div>
</div>
<style>
.hide-radio {
	display:none;
}
.radio-group-infinity {
	display: inline-block;
	margin-top: 9px;
	border-radius:15px;
	background-color: white;
	background-image: linear-gradient(to bottom, #eeeeee, white 25px);
	padding:3px;
	box-shadow: 0 -1px white inset, 0 1px 1px rgba(0, 0, 0, 0.05) inset;
}
.hide-radio + label {
	background: #eceeef none repeat scroll 0 0;
	color: #fff;
	display: block;
	float: left;
	font-family: "Oswald",sans-serif;
	padding: 5px 0;
	text-align: center;
	-webkit-transition: background-image 0.15s ease-in-out;
	-moz-transition: background-image 0.15s ease-in-out;
	-o-transition: background-color 0.15s ease-in-out;
	transition: background-image 0.15s ease-in-out;
	width: 45px;
	margin-bottom:0px;	
	position:relative;
	color:#969696;
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.15) inset, 0 0 3px rgba(0, 0, 0, 0.2) inset;
	text-shadow:0 1px rgba(255, 255, 255, 0.8);
}
.hide-radio + label:hover {
	box-shadow:2px 3px 3px rgba(0, 0, 0, 0.25) inset;
}
.hide-radio:first-child + label{
	border-radius:15px 0px 0px 15px;
}
.radio-group-infinity > label:last-child{
	border-radius:0px 15px 15px 0px;	
	margin-left:-1px;
}
 
.hide-radio:checked + label {
	background-image: linear-gradient(#47a8d8, #47a8d8);
	display: inline-block;
	margin-bottom:0px;
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.15) inset, 0 0 3px rgba(0, 0, 0, 0.2) inset;
	color:#fff;
	text-shadow:0 1px rgba(0, 0, 0, 0.2);
}

</style>
  <script type="text/javascript"><!-- 
$('input[name=\'product\']').autocomplete({
	source: function(request, response) {
	var filter_category = $('#input_name_category_id option:selected').val();
		$.ajax({
			url: 'index.php?route=module/product_categorytabs/autocomplete&token=<?php echo $token; ?>&filter_category='+ filter_category +'&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['product_id']
					}
				}));
			}
		});
	},
	select: function(item) {
		$('input[name=\'product\']').val('');
		
		$('#product-category' + item['value']).remove();
		
		$('#product-category').append('<div id="product-category' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product[]" value="' + item['value'] + '" /></div>');	
	}
});
	
$('#product-category').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});
//--></script>
<?php echo $footer; ?>