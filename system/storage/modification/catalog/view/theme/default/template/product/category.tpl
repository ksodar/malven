<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($products) { ?>
      <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
      <div class="row">
        <div class="col-md-3">
          <div class="btn-group hidden-xs">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-md-2 text-right">
          <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
        </div>
        <div class="col-md-3 text-right">
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-md-2 text-right">
          <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        <div class="col-md-2 text-right">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div>
      <br />
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div>
              <div class="caption">
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <p><?php echo $product['description']; ?></p>
                <?php if ($product['rating']) { ?>
                <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
                <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
              </div>
              <div class="button-group">
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>

<?php if ($products) { ?>
<?php if($user_logged) { ?>
<script type="text/javascript">
var loading_masked_img = '<img src="catalog/view/theme/newstore/image/ring-alt-1.svg" />';
	function loading_img_svg(action) {
		if (action) {
			$('#loading_img_svg').html(loading_masked_img);
			$('#loading_img_svg').show();
		} else {
			$('#loading_img_svg').html('');
			$('#loading_img_svg').hide();
		}
	}
	function show_editor(link) {
		$('body').prepend('<div id="loading_img_svg"></div>');
		loading_img_svg(true); 
		$('body').append('<div class="popup_banner"></div>');
		$('.popup_banner').popup({
			transition: 'all 0.3s',
			closetransitionend: function () {$(this).remove();}
		});
		$('.popup_banner').load(link, function() {
			$('.popup_banner').append('<i class="fa fa-times closepopup" onclick="$(\'.popup_banner\').popup(\'hide\');"></i>');
			loading_img_svg(false); 
			$('.popup_banner').popup('show');
		});
	}
</script>
<?php if($group_editor == 'Y') { ?>	
<div id="group-editor">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="input-group">
					<span class="input-group-addon input-group-edit"><i class="fa fa-pencil fa-fw"></i><?php echo $pge_text_batch_edit;?></span>
					<select disabled="disabled" title="<?php echo $pge_text_none_editor;?>" class="form-control selectpicker bs-select-hidden" id="top-quick-edit-data">
						<option class="bs-title-option" value=""> <?php echo $pge_text_none_editor;?> </option>
						<optgroup label="<?php echo $pge_text_opt_general_data;?>">
							<option value="nameGroup"><?php echo $pge_text_opt_name_product;?></option>
							<option value="metaTitleGroup"><?php echo $pge_text_opt_meta_title;?></option>
							<option value="metaH1Group"><?php echo $pge_text_opt_meta_h1;?></option>		
							<option value="metaDescriptionGroup"><?php echo $pge_text_opt_meta_descripton;?></option>						
							<option value="metaKeywordGroup"><?php echo $pge_text_opt_meta_keyword;?></option>
							<option value="metaTagGroup"><?php echo $pge_text_opt_tag;?></option>
							<option value="urlGroup"><?php echo $pge_text_opt_url;?></option>
						</optgroup>
						<optgroup label="<?php echo $pge_text_opt_data;?>">
							<option value="priceGroup"><?php echo $pge_text_opt_price;?></option>
							<option value="quantityGroup"><?php echo $pge_text_opt_quantity;?></option>
							<option value="minquantityGroup"><?php echo $pge_text_opt_minquantity;?></option>
							<option value="modelGroup"><?php echo $pge_text_opt_mlt;?></option>
							<option value="сodesGroup"><?php echo $pge_text_opt_code;?></option>
							<option value="dateavailableGroup"><?php echo $pge_text_opt_date_status;?></option>
							<option value="stockShippingGroup"><?php echo $pge_text_opt_stockshipping;?></option>
							<option value="weightDimensionsGroup"><?php echo $pge_text_opt_weightdimensions;?></option>
						</optgroup>
						<optgroup label="<?php echo $pge_text_opt_links;?>">
							<option value="manufacturerGroup"><?php echo $pge_text_opt_manufacturer;?></option>
							<option value="categoryGroup"><?php echo $pge_text_opt_category;?></option>
							<option value="filterGroup"><?php echo $pge_text_opt_filter;?></option>
							<option value="relatedProductGroup"><?php echo $pge_text_opt_related;?></option>
						</optgroup>
						<optgroup label="<?php echo $pge_text_opt_special_discount;?>">
							<option value="specialGroup"><?php echo $pge_text_opt_special;?></option>
							<option value="discountGroup"><?php echo $pge_text_opt_discount;?></option>
						</optgroup>
						<optgroup label="<?php echo $pge_text_opt_attribute_options;?>">
							<option value="attributeGroup"><?php echo $pge_text_opt_attribute;?></option>
							<option value="optionsGroup"><?php echo $pge_text_opt_options;?></option>
						</optgroup>						
					</select>
				</div>
			</div>
			<div class="col-sm-6">
				<button class="btn-editor btn-selectall-editor" type="button" onclick="groupEditorSelectAll();"><?php echo $pge_text_select_all_product;?></button>
				<span id="checked_countpr" class="btn-editor btn-countpr">0</span>
				<span id="checked_countpr" class="btn-editor btn-cancel-editor" onclick="groupEditorRefresh();"><?php echo $pge_text_reset; ?></span>
			</div>
		</div>
	</div>
<link rel="stylesheet" type="text/css" href="catalog/view/editproduct/css/bootstrap-select.css" />				
<script src="catalog/view/editproduct/js/bootstrap-select.js" type="text/javascript"></script>
<script type="text/javascript">
var loading_masked_img = '<img src="catalog/view/theme/newstore/image/ring-alt-1.svg" />';
	function loading_img_svg(action) {
		if (action) {
			$('#loading_img_svg').html(loading_masked_img);
			$('#loading_img_svg').show();
		} else {
			$('#loading_img_svg').html('');
			$('#loading_img_svg').hide();
		}
	}
	function show_editor_group(link) {
		$('body').prepend('<div id="loading_img_svg"></div>');
		loading_img_svg(true); 
		$('body').append('<div class="popup_banner"></div>');
		$('.popup_banner').popup({
			transition: 'all 0.3s',
			closetransitionend: function () {$(this).remove();}
		});
		$('.popup_banner').load(link, function() {
			$('.popup_banner').append('<i class="fa fa-times closepopup" onclick="$(\'.popup_banner\').popup(\'hide\'); groupEditorRefresh(); "></i>');
			loading_img_svg(false); 
			$('.popup_banner').popup('show');
		});
	}
</script>
<script type="text/javascript">
$(document).ready(function() {
$('.editor-group-checked-product input.group-editor-checkbox').on('click', function() {
	$(this).parent().toggleClass('active');
});
$('.editor-group-checked-product input.group-editor-checkbox[type=\'checkbox\']').on('change', function() {
	var checked_countpr = $(".editor-group-checked-product input.group-editor-checkbox[type=\'checkbox\']:checked").length;
	$('#checked_countpr').html(checked_countpr);		
		if ($('.editor-group-checked-product input.group-editor-checkbox[type=\'checkbox\']:checked').val()) {
			$('#group-editor').find('select').prop('disabled', false);
			$('#group-editor').find('select').selectpicker('refresh');	
			$('#group-editor .input-group-addon').removeClass('input-group-edit');
			$('#group-editor .input-group-addon').addClass('input-group-edit-active');			
		} else {
			$('#group-editor').find('select').prop('disabled', true);
			$('#group-editor').find('select').selectpicker('refresh');
			$('#group-editor').find('select').selectpicker('val', '0');			
			$('#group-editor .input-group-addon').removeClass('input-group-edit-active');
			$('#group-editor .input-group-addon').addClass('input-group-edit');			
		}
	});
});

$('#top-quick-edit-data').on('change', function() {
	if ($('.editor-group-checked-product input.group-editor-checkbox[type=\'checkbox\']:checked').val()) {	
		var count_checked = $(".editor-group-checked-product input.group-editor-checkbox[type=\'checkbox\']:checked").length;
		var val_checked = $(".editor-group-checked-product input.group-editor-checkbox[type=\'checkbox\']:checked").val();
		if (count_checked == 1) {
			show_editor_group('index.php?route=module/editproduct/editgroup/quickedit_' + $(this).val() + '&seo_category_id='+ <?php echo $seo_category_id;?> +'&token=<?php echo $token; ?>&product_id='+val_checked);			
		} else {				
			show_editor_group('index.php?route=module/editproduct/editgroup/quickedit_' + $(this).val() + '&seo_category_id='+ <?php echo $seo_category_id;?> +'&token=<?php echo $token; ?>');
		}	
	} else {
		show_editor_group('index.php?route=module/editproduct/editgroup/quickedit_select_product');
	}
});

function groupEditorRefresh(){
	$('.editor-group-checked-product').removeClass('active');
	$('#top-quick-edit-data').selectpicker('val', '0');
	$('.editor-group-checked-product input.group-editor-checkbox[type=\'checkbox\']').prop('checked', false);
	$('#group-editor').find('select').prop('disabled', true);
	$('#group-editor').find('select').selectpicker('refresh');
	$('#group-editor .input-group-addon').removeClass('input-group-edit-active');
	$('#group-editor .input-group-addon').addClass('input-group-edit');
	var checked_countpr = $(".editor-group-checked-product input.group-editor-checkbox[type=\'checkbox\']:checked").length;
	$('#checked_countpr').html(checked_countpr);	
}
function groupEditorSelectAll(){
	$('.editor-group-checked-product').addClass('active');
	$('#top-quick-edit-data').selectpicker('val', '0');
	$('.editor-group-checked-product input.group-editor-checkbox[name*=\'selected_productgroupeditor\']').prop('checked', true);
	$('input[name*=\'selected_productgroupeditor\']').prop('checked', this.checked);
	$('#group-editor').find('select').prop('disabled', false);
	$('#group-editor').find('select').selectpicker('refresh');	
	$('#group-editor .input-group-addon').removeClass('input-group-edit');
	$('#group-editor .input-group-addon').addClass('input-group-edit-active');	
	var checked_countpr = $(".editor-group-checked-product input.group-editor-checkbox[type=\'checkbox\']:checked").length;
	$('#checked_countpr').html(checked_countpr);
	}
</script>
</div>
<?php } ?>
<?php } ?>
<?php } ?>
		
