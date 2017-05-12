<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right"><a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-product_tabs').submit() : false;"><i class="fa fa-trash-o"></i></button>
      </div>
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
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      </div>
      <div class="panel-body">
		<div class="well">
          <div class="row">
			<div class="col-lg-4">
				<div class="form-group">
					<label class="control-label" for="input-status"><?php echo $entry_filter_name; ?></label>
					<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" placeholder="<?php echo $entry_filter_name; ?>" id="input-name" class="form-control" />
				</div>
			</div>
			<div class="col-sm-4">
              <div class="form-group">
                <label class="control-label" for="input-filter-show-empty"><?php echo $entry_filter_show_empty; ?></label>
                <select name="filter_show_empty" id="input-filter-show-empty" class="form-control">
                  <option value="*"></option>
                  <?php if ($filter_show_empty) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <?php } ?>
                  <?php if (!$filter_show_empty && !is_null($filter_show_empty)) { ?>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select>
              </div>        
            </div>
			<div class="col-sm-4">
              <div class="form-group">
                <label class="control-label" for="input-status"><?php echo $entry_filter_status; ?></label>
                <select name="filter_status" id="input-status" class="form-control">
                  <option value="*"></option>
                  <?php if ($filter_status) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <?php } ?>
                  <?php if (!$filter_status && !is_null($filter_status)) { ?>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select>
              </div>
             <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="fa fa-search"></i> <?php echo $button_filter; ?></button>
            </div>
          </div>
        </div>		
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-product_tabs">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>
                  <td class="text-left"><?php if ($sort == 'id.title') { ?>
                    <a href="<?php echo $sort_title; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_title; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_title; ?>"><?php echo $column_title; ?></a>
                    <?php } ?></td>
                  <td class="text-right"><?php if ($sort == 'i.sort_order') { ?>
                    <a href="<?php echo $sort_sort_order; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_sort_order; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_sort_order; ?>"><?php echo $column_sort_order; ?></a>
                    <?php } ?></td>
                  <td class="text-center"><?php echo $column_show_empty; ?></td>
                  <td class="text-center"><?php echo $column_status; ?></td>
                  <td class="text-right"><?php echo $column_action; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php if ($product_tabs) { ?>
                <?php foreach ($product_tabs as $product_tab) { ?>
                <tr>
                  <td class="text-center"><?php if (in_array($product_tab['tabs_ns_id'], $selected)) { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $product_tab['tabs_ns_id']; ?>" checked="checked" />
                    <?php } else { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $product_tab['tabs_ns_id']; ?>" />
                    <?php } ?></td>
                  <td class="text-left"><?php echo $product_tab['title']; ?></td>
                  <td class="text-right"><?php echo $product_tab['sort_order']; ?></td>                 
					<td class="text-center"><a class="statusshowempty" id="show_empty_tab-<?php echo $product_tab['tabs_ns_id']; ?>"><?php echo $product_tab['show_empty_tab']; ?></a></td>	
					<td class="text-center"><a class="columnstatus" id="status-<?php echo $product_tab['tabs_ns_id']; ?>"><?php echo $product_tab['status']; ?></a></td>
					<td class="text-center"><a class="btn btn-info" onclick="productTabsGroupAdd('<?php echo $product_tab['tabs_ns_id']?>');"><?php echo "Групповое добавление вкладки" ?></a></td>
					<td class="text-right"><a href="<?php echo $product_tab['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="text-center" colspan="4"><?php echo $text_no_results; ?></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </form>
        <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="modal-quick-edit">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
	  <div id="modal-quick-product-content"></div>
	</div>
  </div>
</div>
<script type="text/javascript"><!--
function productTabsGroupAdd(tabs_ns_id) {	
	html  = '<div class="modal fade" id="name-modal-' + tabs_ns_id + '">';
	html += '  <div id="name-content-' + tabs_ns_id + '"></div>';
	html += '</div>';

	$('body').append(html);				
							
	$('#name-modal-' + tabs_ns_id).modal({backdrop:'static',keyboard: false});
	$('#name-content-' + tabs_ns_id).load('index.php?route=catalog/product_tabs/productTabsGroupAdd&token=<?php echo $token;?>&tabs_ns_id=' + tabs_ns_id);
}
$('.columnstatus').click(function() {
	var object_id=$(this).attr('id');
	$.ajax({
		url: 'index.php?route=catalog/product_tabs/changeProductTabsStatus&token=<?php echo $token; ?>',
		type: 'get',
		data: {object_id:object_id},
		dataType: 'html',
		success: function(html) {
			if(html!=''){				
				$('#'+object_id).html(html);
			}
		}
	});
});	
$('.statusshowempty').click(function() {
	var object_id=$(this).attr('id');
	$.ajax({
		url: 'index.php?route=catalog/product_tabs/changeProductTabsShowEmpty&token=<?php echo $token; ?>',
		type: 'get',
		data: {object_id:object_id},
		dataType: 'html',
		success: function(html) {
			if(html!=''){				
				$('#'+object_id).html(html);
			}
		}
	});
});
$('input[name=\'filter_name\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/product_tabs/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['title'],
						value: item['tabs_ns_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'filter_name\']').val(item['label']);
	}
});

$('#button-filter').on('click', function() {
	var url = 'index.php?route=catalog/product_tabs&token=<?php echo $token; ?>';

	var filter_name = $('input[name=\'filter_name\']').val();

	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}
	
	var filter_show_empty = $('select[name=\'filter_show_empty\']').val();

	if (filter_show_empty != '*') {
		url += '&filter_show_empty=' + encodeURIComponent(filter_show_empty);
	}
	
	var filter_status = $('select[name=\'filter_status\']').val();

	if (filter_status != '*') {
		url += '&filter_status=' + encodeURIComponent(filter_status);
	}
	location = url;
});
//--></script>
<?php echo $footer; ?>