<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-review" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-review" class="form-horizontal">
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-author"><?php echo $entry_author; ?></label>
            <div class="col-sm-10">
              <input type="text" name="author" value="<?php echo $author; ?>" placeholder="<?php echo $entry_author; ?>" id="input-author" class="form-control" />
              <?php if ($error_author) { ?>
              <div class="text-danger"><?php echo $error_author; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-product"><span data-toggle="tooltip" title="<?php echo $help_product; ?>"><?php echo $entry_product; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="product" value="<?php echo $product; ?>" placeholder="<?php echo $entry_product; ?>" id="input-product" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <?php if ($error_product) { ?>
              <div class="text-danger"><?php echo $error_product; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-text"><?php echo $entry_text; ?></label>
            <div class="col-sm-10">
              <textarea name="text" cols="60" rows="8" placeholder="<?php echo $entry_text; ?>" id="input-text" class="form-control"><?php echo $text; ?></textarea>
              <?php if ($error_text) { ?>
              <div class="text-danger"><?php echo $error_text; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_rating; ?></label>
            <div class="col-sm-10">
              <label class="radio-inline">
                <?php if ($rating == 1) { ?>
                <input type="radio" name="rating" value="1" checked="checked" />
                1
                <?php } else { ?>
                <input type="radio" name="rating" value="1" />
                1
                <?php } ?>
              </label>
              <label class="radio-inline">
                <?php if ($rating == 2) { ?>
                <input type="radio" name="rating" value="2" checked="checked" />
                2
                <?php } else { ?>
                <input type="radio" name="rating" value="2" />
                2
                <?php } ?>
              </label>
              <label class="radio-inline">
                <?php if ($rating == 3) { ?>
                <input type="radio" name="rating" value="3" checked="checked" />
                3
                <?php } else { ?>
                <input type="radio" name="rating" value="3" />
                3
                <?php } ?>
              </label>
              <label class="radio-inline">
                <?php if ($rating == 4) { ?>
                <input type="radio" name="rating" value="4" checked="checked" />
                4
                <?php } else { ?>
                <input type="radio" name="rating" value="4" />
                4
                <?php } ?>
              </label>
              <label class="radio-inline">
                <?php if ($rating == 5) { ?>
                <input type="radio" name="rating" value="5" checked="checked" />
                5
                <?php } else { ?>
                <input type="radio" name="rating" value="5" />
                5
                <?php } ?>
              </label>
              <?php if ($error_rating) { ?>
              <div class="text-danger"><?php echo $error_rating; ?></div>
              <?php } ?>
            </div>
          </div>

			<div class="form-group required">
				<label class="col-sm-2 control-label" for="input-plus"><?php echo $entry_plus; ?></label>
				<div class="col-sm-10">
					<textarea name="plus" cols="60" rows="8" placeholder="<?php echo $entry_plus; ?>" id="input-text" class="form-control"><?php echo $plus; ?></textarea>
				</div>
			</div>
			<div class="form-group required">
				<label class="col-sm-2 control-label" for="input-minus"><?php echo $entry_minus; ?></label>
				<div class="col-sm-10">
					<textarea name="minus" cols="60" rows="8" placeholder="<?php echo $entry_minus; ?>" id="input-text" class="form-control"><?php echo $minus; ?></textarea>
				</div>
			</div>
			<div class="form-group required">
				<label class="col-sm-2 control-label" for="input-admin_reply"><?php echo $entry_admin_reply; ?></label>
				<div class="col-sm-10">
					<textarea name="admin_reply" cols="60" rows="8" placeholder="<?php echo $entry_admin_reply; ?>" id="input-text" class="form-control"><?php echo $admin_reply; ?></textarea>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><?php echo 'Куплен в этом магазине:';?></label>
				<div class="col-sm-10">
						<div class="radio-group-infinity">	
							<?php if ($purchased) { ?>
							<input id="purchased_yes" class="hide-radio" type="radio" name="purchased" value="1" checked="checked" />
							<label for="purchased_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="purchased_yes" class="hide-radio" type="radio" name="purchased" value="1" />
							<label for="purchased_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$purchased) { ?>
							<input id="purchased_no" class="hide-radio" type="radio" name="purchased" value="0" checked="checked" />							
							<label for="purchased_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="purchased_no" class="hide-radio" type="radio" name="purchased" value="0" />							
							<label for="purchased_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
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
        </form>
      </div>
    </div>
  </div>
  <script type="text/javascript"><!--
$('input[name=\'product\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
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
	'select': function(item) {
		$('input[name=\'product\']').val(item['label']);
		$('input[name=\'product_id\']').val(item['value']);		
	}	
});
//--></script></div>
<?php echo $footer; ?>
