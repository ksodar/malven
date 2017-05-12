<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-featured" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-featured" class="form-horizontal">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
				<li><a href="#tab-style" data-toggle="tab"><?php echo $tab_style; ?></a></li>   
			</ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-general">
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
				<div class="col-sm-10">
					<div class="radio-group-ns">
						<?php if ($agreedata['status']) { ?>
							<input id="status_yes" class="hide-radio" type="radio" name="agreedata[status]" value="1" checked="checked" />
							<label for="status_yes"><?php echo $text_yes; ?></label>
						<?php } else { ?>
							<input id="status_yes" class="hide-radio" type="radio" name="agreedata[status]" value="1" />
							<label for="status_yes"><?php echo $text_yes; ?></label>
						<?php } ?>
						<?php if (!$agreedata['status']) { ?>
							<input id="status_no" class="hide-radio" type="radio" name="agreedata[status]" value="0" checked="checked" />							
							<label for="status_no"><?php echo $text_no; ?></label>
						<?php } else { ?>
							<input id="status_no" class="hide-radio" type="radio" name="agreedata[status]" value="0" />							
							<label for="status_no"><?php echo $text_no; ?></label>
						<?php } ?>							
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-escape-click"><?php echo $entry_escape_click; ?></label>
				<div class="col-sm-10">
					<div class="radio-group-ns">
						<?php if ($agreedata['escape_click']) { ?>
							<input id="escape_click_yes" class="hide-radio" type="radio" name="agreedata[escape_click]" value="1" checked="checked" />
							<label for="escape_click_yes"><?php echo $text_yes; ?></label>
						<?php } else { ?>
							<input id="escape_click_yes" class="hide-radio" type="radio" name="agreedata[escape_click]" value="1" />
							<label for="escape_click_yes"><?php echo $text_yes; ?></label>
						<?php } ?>
						<?php if (!$agreedata['escape_click']) { ?>
							<input id="escape_click_no" class="hide-radio" type="radio" name="agreedata[escape_click]" value="0" checked="checked" />							
							<label for="escape_click_no"><?php echo $text_no; ?></label>
						<?php } else { ?>
							<input id="escape_click_no" class="hide-radio" type="radio" name="agreedata[escape_click]" value="0" />							
							<label for="escape_click_no"><?php echo $text_no; ?></label>
						<?php } ?>							
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-blur-click"><?php echo $entry_blur_click; ?></label>
				<div class="col-sm-10">
					<div class="radio-group-ns">
						<?php if ($agreedata['blur_click']) { ?>
							<input id="blur_click_yes" class="hide-radio" type="radio" name="agreedata[blur_click]" value="1" checked="checked" />
							<label for="blur_click_yes"><?php echo $text_yes; ?></label>
						<?php } else { ?>
							<input id="blur_click_yes" class="hide-radio" type="radio" name="agreedata[blur_click]" value="1" />
							<label for="blur_click_yes"><?php echo $text_yes; ?></label>
						<?php } ?>
						<?php if (!$agreedata['blur_click']) { ?>
							<input id="blur_click_no" class="hide-radio" type="radio" name="agreedata[blur_click]" value="0" checked="checked" />							
							<label for="blur_click_no"><?php echo $text_no; ?></label>
						<?php } else { ?>
							<input id="blur_click_no" class="hide-radio" type="radio" name="agreedata[blur_click]" value="0" />							
							<label for="blur_click_no"><?php echo $text_no; ?></label>
						<?php } ?>							
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-method-agree-popup"><span data-toggle="tooltip" title="<?php echo $help_method;?>"><?php echo $entry_method_agree_popup; ?></span></label>
				<div class="col-sm-10">
				  <select name="agreedata[method_agree_popup]" id="input-method-agree-popup" class="form-control">
					<?php if ($agreedata['method_agree_popup']=='method_cookie') { ?>
					<option value="method_cookie" selected="selected"><?php echo $text_method_cookie; ?></option>
					<option value="method_session"><?php echo $text_method_session; ?></option>
					<?php } else { ?>
					<option value="method_cookie"><?php echo $text_method_cookie; ?></option>
					<option value="method_session" selected="selected"><?php echo $text_method_session; ?></option>
					<?php } ?>
				  </select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-cookie-day"><?php echo $text_cookie_day; ?></label>
				<div class="col-sm-10">
				  <input name="agreedata[cookie_day]" value="<?php echo isset($agreedata['cookie_day']) ? $agreedata['cookie_day'] : '1'; ?>" class="form-control"></input>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-cookie-day"><span data-toggle="tooltip" title="<?php echo $help_delay_time;?>"><?php echo $text_delay_time; ?></span>
				</label>
				<div class="col-sm-10">
				  <input name="agreedata[delay_time]" value="<?php echo isset($agreedata['delay_time']) ? $agreedata['delay_time'] : '1000'; ?>" class="form-control"></input>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><?php echo $entry_title; ?></label>
				<div class="col-sm-10">
					<?php foreach ($languages as $language) { ?>
						<div class="input-group"><span class="input-group-addon"><?php if($VERSION < 2.2){?>
							<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
						<?php } else { ?>
							<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
						<?php } ?></span>
							<input name="agreedata[title_agree][<?php echo $language['language_id']; ?>][text]" class="form-control" value="<?php echo isset($agreedata['title_agree'][$language['language_id']]) ? $agreedata['title_agree'][$language['language_id']]['text'] : ''; ?>"></input>
						</div>
					<?php } ?>
				</div>
			</div> 
			<div class="form-group">
				<label class="col-sm-2 control-label"><?php echo $entry_status_btn_agree;?></label>
				<div class="col-sm-10">
					<div class="radio-group-ns">
						<?php if ($agreedata['status_btn_agree']) { ?>
							<input id="status_btn_agree_yes" class="hide-radio" type="radio" name="agreedata[status_btn_agree]" value="1" checked="checked" />
							<label for="status_btn_agree_yes"><?php echo $text_yes; ?></label>
						<?php } else { ?>
							<input id="status_btn_agree_yes" class="hide-radio" type="radio" name="agreedata[status_btn_agree]" value="1" />
							<label for="status_btn_agree_yes"><?php echo $text_yes; ?></label>
						<?php } ?>
						<?php if (!$agreedata['status_btn_agree']) { ?>
							<input id="status_btn_agree_no" class="hide-radio" type="radio" name="agreedata[status_btn_agree]" value="0" checked="checked" />							
							<label for="status_btn_agree_no"><?php echo $text_no; ?></label>
						<?php } else { ?>
							<input id="status_btn_agree_no" class="hide-radio" type="radio" name="agreedata[status_btn_agree]" value="0" />							
							<label for="status_btn_agree_no"><?php echo $text_no; ?></label>
						<?php } ?>							
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><?php echo $entry_text_btn_agree; ?></label>
				<div class="col-sm-10">
					<?php foreach ($languages as $language) { ?>
						<div class="input-group"><span class="input-group-addon"><?php if($VERSION < 2.2){?>
							<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
						<?php } else { ?>
							<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
						<?php } ?></span>
							<input name="agreedata[btn_agree][<?php echo $language['language_id']; ?>][text]" class="form-control" value="<?php echo isset($agreedata['btn_agree'][$language['language_id']]) ? $agreedata['btn_agree'][$language['language_id']]['text'] : ''; ?>"></input>
						</div>
					<?php } ?>
				</div>
			</div> 
			
			<div class="form-group">
				<label class="col-sm-2 control-label"><?php echo $entry_status_btn_disagree;?></label>
				<div class="col-sm-10">
					<div class="radio-group-ns">
						<?php if ($agreedata['status_btn_disagree']) { ?>
							<input id="status_btn_disagree_yes" class="hide-radio" type="radio" name="agreedata[status_btn_disagree]" value="1" checked="checked" />
							<label for="status_btn_disagree_yes"><?php echo $text_yes; ?></label>
						<?php } else { ?>
							<input id="status_btn_disagree_yes" class="hide-radio" type="radio" name="agreedata[status_btn_disagree]" value="1" />
							<label for="status_btn_disagree_yes"><?php echo $text_yes; ?></label>
						<?php } ?>
						<?php if (!$agreedata['status_btn_disagree']) { ?>
							<input id="status_btn_disagree_no" class="hide-radio" type="radio" name="agreedata[status_btn_disagree]" value="0" checked="checked" />							
							<label for="status_btn_disagree_no"><?php echo $text_no; ?></label>
						<?php } else { ?>
							<input id="status_btn_disagree_no" class="hide-radio" type="radio" name="agreedata[status_btn_disagree]" value="0" />							
							<label for="status_btn_disagree_no"><?php echo $text_no; ?></label>
						<?php } ?>							
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><?php echo $entry_text_btn_disagree; ?></label>
				<div class="col-sm-10">
					<?php foreach ($languages as $language) { ?>
						<div class="input-group"><span class="input-group-addon"><?php if($VERSION < 2.2){?>
							<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
						<?php } else { ?>
							<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
						<?php } ?></span>
							<input name="agreedata[btn_disagree][<?php echo $language['language_id']; ?>][text]" class="form-control" value="<?php echo isset($agreedata['btn_disagree'][$language['language_id']]) ? $agreedata['btn_disagree'][$language['language_id']]['text'] : ''; ?>"></input>
						</div>
					<?php } ?>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><?php echo $entry_text_btn_disagree_href; ?></label>
				<div class="col-sm-10">
					<input name="agreedata[btn_disagree_location_href]" class="form-control" value="<?php echo isset($agreedata['btn_disagree_location_href']) ? $agreedata['btn_disagree_location_href'] : ''; ?>"></input>
				</div>
			</div>
			<ul class="nav nav-tabs" id="language">
                <?php foreach ($languages as $language) { ?>
                <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><?php if($VERSION < 2.2){?>
							<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
						<?php } else { ?>
							<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
						<?php } ?> <?php echo $language['name']; ?></a></li>
                <?php } ?>
            </ul>
			<div class="tab-content">
				<?php foreach ($languages as $language) { ?>
					<div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
						<div class="form-group">					
							<label class="col-sm-2 control-label" for="input-agree-description<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
							<div class="col-sm-10">
								<textarea name="agreedata[<?php echo $language['language_id']; ?>][agree_description]" id="input-agree-description<?php echo $language['language_id']; ?>"><?php echo isset($agreedata[$language['language_id']]) ? $agreedata[$language['language_id']]['agree_description'] : ''; ?></textarea>
							</div>
						</div>				  
					</div>	
				<?php } ?>
			</div>	
			</div>
			<div class="tab-pane" id="tab-style">
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_agree_header; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[background_agree_header]" value="<?php echo isset($agreedata['background_agree_header']) ? $agreedata['background_agree_header'] : ''; ?>" placeholder="<?php echo $entry_background_agree_header; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_text_color_agree_header; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[text_color_agree_header]" value="<?php echo isset($agreedata['text_color_agree_header']) ? $agreedata['text_color_agree_header'] : ''; ?>" placeholder="<?php echo $entry_text_color_agree_header; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_icon_agree_header;?></label>
					<div class="col-sm-10">
						<span class="icon_open" id="icon_agree_header" onclick="icon_fontawesome_popup($(this).attr('id'))">
						<?php echo $text_select_icon;?>
						<?php if(isset($agreedata['icon_agree_header'])) { ?><i class="<?php echo $agreedata['icon_agree_header']?>"></i><?php } ?></span>
						<input class="form-control" type="hidden"  name="agreedata[icon_agree_header]" value="<?php echo isset($agreedata['icon_agree_header']) ? $agreedata['icon_agree_header'] : ''; ?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_btn_agree; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[background_btn_agree]" value="<?php echo isset($agreedata['background_btn_agree']) ? $agreedata['background_btn_agree'] : ''; ?>" placeholder="<?php echo $entry_background_btn_agree; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_hover_btn_agree; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[background_hover_btn_agree]" value="<?php echo isset($agreedata['background_hover_btn_agree']) ? $agreedata['background_hover_btn_agree'] : ''; ?>" placeholder="<?php echo $entry_background_hover_btn_agree; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_border_btn_agree; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[border_btn_agree]" value="<?php echo isset($agreedata['border_btn_agree']) ? $agreedata['border_btn_agree'] : ''; ?>" placeholder="<?php echo $entry_border_btn_agree; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_border_hover_btn_agree; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[border_hover_btn_agree]" value="<?php echo isset($agreedata['border_hover_btn_agree']) ? $agreedata['border_hover_btn_agree'] : ''; ?>" placeholder="<?php echo $entry_border_hover_btn_agree; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_text_color_btn_agree; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[text_color_btn_agree]" value="<?php echo isset($agreedata['text_color_btn_agree']) ? $agreedata['text_color_btn_agree'] : ''; ?>" placeholder="<?php echo $entry_text_color_btn_agree; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_text_color_hover_btn_agree; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[text_color_hover_btn_agree]" value="<?php echo isset($agreedata['text_color_hover_btn_agree']) ? $agreedata['text_color_hover_btn_agree'] : ''; ?>" placeholder="<?php echo $entry_text_color_hover_btn_agree; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_icon_btn_agree;?></label>
					<div class="col-sm-10">
						<span class="icon_open" id="icon_btn_agree" onclick="icon_fontawesome_popup($(this).attr('id'))">
						<?php echo $text_select_icon;?>
						<?php if(isset($agreedata['icon_btn_agree'])) { ?><i class="<?php echo $agreedata['icon_btn_agree']?>"></i><?php } ?></span>
						<input class="form-control" type="hidden"  name="agreedata[icon_btn_agree]" value="<?php echo isset($agreedata['icon_btn_agree']) ? $agreedata['icon_btn_agree'] : ''; ?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_btn_disagree; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[background_btn_disagree]" value="<?php echo isset($agreedata['background_btn_disagree']) ? $agreedata['background_btn_disagree'] : ''; ?>" placeholder="<?php echo $entry_background_btn_disagree; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_hover_btn_disagree; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[background_hover_btn_disagree]" value="<?php echo isset($agreedata['background_hover_btn_disagree']) ? $agreedata['background_hover_btn_disagree'] : ''; ?>" placeholder="<?php echo $entry_background_hover_btn_disagree; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_border_btn_disagree; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[border_btn_disagree]" value="<?php echo isset($agreedata['border_btn_disagree']) ? $agreedata['border_btn_disagree'] : ''; ?>" placeholder="<?php echo $entry_border_btn_disagree; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_border_hover_btn_disagree; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[border_hover_btn_disagree]" value="<?php echo isset($agreedata['border_hover_btn_disagree']) ? $agreedata['border_hover_btn_disagree'] : ''; ?>" placeholder="<?php echo $entry_border_hover_btn_disagree; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_text_color_btn_disagree; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[text_color_btn_disagree]" value="<?php echo isset($agreedata['text_color_btn_disagree']) ? $agreedata['text_color_btn_disagree'] : ''; ?>" placeholder="<?php echo $entry_text_color_btn_disagree; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_text_color_hover_btn_disagree; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[text_color_hover_btn_disagree]" value="<?php echo isset($agreedata['text_color_hover_btn_disagree']) ? $agreedata['text_color_hover_btn_disagree'] : ''; ?>" placeholder="<?php echo $entry_text_color_hover_btn_disagree; ?>" class="form-control color" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_icon_btn_disagree;?></label>
					<div class="col-sm-10">
						<span class="icon_open" id="icon_btn_disagree" onclick="icon_fontawesome_popup($(this).attr('id'))">
						<?php echo $text_select_icon;?>
						<?php if(isset($agreedata['icon_btn_disagree'])) { ?><i class="<?php echo $agreedata['icon_btn_disagree']?>"></i><?php } ?></span>
						<input class="form-control" type="hidden"  name="agreedata[icon_btn_disagree]" value="<?php echo isset($agreedata['icon_btn_disagree']) ? $agreedata['icon_btn_disagree'] : ''; ?>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_background_agree_footer; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="agreedata[background_agree_footer]" value="<?php echo isset($agreedata['background_agree_footer']) ? $agreedata['background_agree_footer'] : ''; ?>" placeholder="<?php echo $entry_background_agree_footer; ?>" class="form-control color" />
					</div>
				</div>
			</div>
		</div>
        </form>
      </div>
    </div>
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
$('#input-agree-description<?php echo $language['language_id']; ?>').summernote({height: 200});
<?php } ?>
$('#language a:first').tab('show');
//--></script>
<link href="view/stylesheet/agree_popup/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="screen" />
<script src="view/stylesheet/agree_popup/popup.js" type="text/javascript"></script>
<script type="text/javascript">
	function icon_fontawesome_popup(id) {
		$('.icon_fontawesome_popup').popup('show');
		$('.id_icon').val(id);
		
		$('.icon_fontawesome_popup .fa').on('click', function() {
			var class_this_icon = $(this).attr('class');
			$('.class_icon').val(class_this_icon);
			save_icons_fontawesome();
			$('.icon_fontawesome_popup').popup('hide');
		});
	}
	
	function save_icons_fontawesome() {
		var id_icon = $('.id_icon').val();
		var class_this_icon = $('.class_icon').val();
		$('#'+id_icon).html('<?php echo $text_select_icon;?> <i class="' + class_this_icon + '"></i>');
		$('#'+id_icon).next().val(class_this_icon);
	}
</script>
<input type="hidden" class="id_icon" name="target" value="" />
<input type="hidden" class="class_icon" name="class" value="" />
<div class="icon_fontawesome_popup">
<div class="icon_fontawesome_list">
<div class="col-xs-1"><i class="fa fa-american-sign-language-interpreting" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-blind" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gitlab" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pied-piper" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-plus-official" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-snapchat" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-universal-access" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wheelchair-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-american-sign-language-interpreting" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-braille" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-font-awesome" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-glide" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-deaf" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-question-circle-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-snapchat-ghost" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-viadeo" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wpbeginner" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-assistive-listening-systems" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-first-order" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-glide-g" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-instagram" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sign-language" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-snapchat-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-viadeo-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wpforms" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-audio-description" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-font-awesome" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-plus-official" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-low-vision" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-themeisle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-volume-control-phone" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-yoast" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-adjust" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-area-chart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-american-sign-language-interpreting" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-audio-description" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-university" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bars" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-three-quarters" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-half" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-beer" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bell-slash-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-blind" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bomb" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-braille" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-building-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-taxi" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calendar-minus-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-camera" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-left" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cart-plus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-check-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-child" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-circle-thin" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cloud" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-code-fork" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-comment" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-comments" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-creative-commons" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-crosshairs" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tachometer" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-desktop" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-envelope-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-exclamation" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-external-link-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fax" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-archive-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-image-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-image-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-word-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fire" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-flag-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-folder-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-futbol-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cogs" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-paper-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-scissors-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hashtag" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-heart-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bed" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-end" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-start" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-industry" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-key" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-leaf" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-level-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-life-ring" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-lock" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-map" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-map-signs" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-minus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-mobile" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-graduation-cap" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bars" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paint-brush" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pencil" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-phone" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pie-chart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plus-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-print" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-question-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-random" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-times" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-retweet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rss-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paper-plane" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-shield" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-shopping-cart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-signal" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-smile-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-alpha-desc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-desc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-asc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-star-half-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sticky-note" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sun-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tag" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-television" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-times" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-right" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-trash-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tty" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-university" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-upload" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-user-times" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-volume-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wheelchair" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-users" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-unlock" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-television" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tree" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-left" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-times-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tags" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-life-ring" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sticky-note-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-space-shuttle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-amount-asc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-futbol-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sign-language" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sign-in" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ship" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share-alt-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-search" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-road" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bars" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-recycle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-question-circle-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-puzzle-piece" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plus-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plane" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-phone-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pencil-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paper-plane" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-newspaper-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-motorcycle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-mobile" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-minus-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-meh-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-reply" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-low-vision" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-lightbulb-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-life-ring" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gavel" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-keyboard-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-info" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-i-cursor" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-end" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-heartbeat" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hdd-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-spock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-peace-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-users" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gift" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gamepad" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-folder-open" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bolt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fire-extinguisher" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-archive-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-powerpoint-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-video-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-audio-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rss" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-eye" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-exclamation-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-envelope-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-diamond" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-database" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cube" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-credit-card" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-comments-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-comment-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-coffee" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cloud-download" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-check-circle-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-right" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-camera-retro" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calendar-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calculator" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bullhorn" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-briefcase" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-book" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bluetooth" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bicycle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bell" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-quarter" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-full" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-empty" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bar-chart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-car" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-arrows" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-anchor" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-asterisk" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-balance-scale" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bar-chart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-quarter" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-empty" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-three-quarters" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bell-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-binoculars" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bluetooth-b" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bookmark" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bug" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bullseye" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calendar" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calendar-plus-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-car" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-certificate" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-check-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-circle-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-clone" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cloud-upload" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cog" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-commenting" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-compass" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-credit-card-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cubes" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-deaf" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-dot-circle-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ellipsis-v" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-eraser" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-eye-slash" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-female" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-code-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-pdf-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-audio-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-film" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-flag" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-flask" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-folder-open-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gavel" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-glass" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-rock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-paper-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-headphones" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-history" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-start" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-half" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-picture-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-info-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-language" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-lemon-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-life-ring" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-line-chart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-magic" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-reply-all" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-microphone" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-minus-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-money" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-mouse-pointer" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-picture-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plug" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plus-square-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-qrcode" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-refresh" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-reply" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rocket" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-search-minus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-server" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-shopping-bag" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sign-language" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sitemap" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-amount-desc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-numeric-asc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-spinner" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-star" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-star-half-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-street-view" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tablet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tasks" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumb-tack" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-times-circle-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-toggle-off" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-trademark" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-trophy" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-umbrella" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-unlock-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-user-plus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-video-camera" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-volume-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wifi" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wrench" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-volume-control-phone" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-user-secret" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-universal-access" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-truck" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-trash" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-toggle-on" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tint" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ticket" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-taxi" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tachometer" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-suitcase" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-star-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-star-half" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-spoon" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sort-asc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sliders" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sign-out" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-shopping-basket" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share-square-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-search-plus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rss" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-reply-all" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-registered" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-question" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-power-off" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-picture-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-percent" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paw" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-object-ungroup" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-music" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-moon-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-minus-square-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-microphone-slash" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-map-pin" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-male" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-magnet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-location-arrow" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-life-ring" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-level-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-laptop" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-university" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-inbox" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hourglass-half" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-home" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-heart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-rock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-lizard-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-globe" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cog" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-frown-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-folder" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-flag-checkered" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-filter" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-video-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-image-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-excel-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fighter-jet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-eyedropper" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-external-link" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-exchange" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-envelope" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-download" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cutlery" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-crop" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-copyright" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-commenting-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cogs" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-code" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-times" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-circle-o-notch" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-check-square-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-check" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-caret-square-o-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calendar-times-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-calendar-check-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-building" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bookmark-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bolt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-birthday-cake" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bell-slash" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bed" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-battery-full" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-barcode" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ban" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-at" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-arrows-v" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-archive" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-rock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-o-right" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-paper-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-lizard-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-o-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-rock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-o-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-paper-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-scissors-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-o-left" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-peace-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hand-spock-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ambulance" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-taxi" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-plane" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-subway" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-car" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rocket" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-taxi" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bicycle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fighter-jet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ship" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-train" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-motorcycle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-space-shuttle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-truck" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-excel-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-pdf-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-audio-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-word-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-archive-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-image-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-image-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-text" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-archive-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-audio-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-video-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-image-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-text-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-code-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-powerpoint-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-file-video-o" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-amex" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-mastercard" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-credit-card" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-diners-club" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-paypal" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-credit-card-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-discover" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-stripe" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-wallet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-jcb" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-visa" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paypal" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-usd" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gg" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-jpy" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rub" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gbp" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-eur" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-eur" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-angellist" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bitbucket" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bluetooth" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-amex" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-mastercard" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-chrome" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-contao" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-deviantart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-drupal" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-expeditedssl" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-facebook-official" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-flickr" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-forumbee" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gg" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-github" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gratipay" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-plus" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-wallet" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-html5" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-joomla" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-leanpub" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-maxcdn" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-modx" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-openid" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-paypal" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pinterest" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-qq" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-reddit-alien" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-safari" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-share-alt-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-skype" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-snapchat-ghost" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-stack-exchange" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-stumbleupon" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-trello" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-twitch" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-vimeo-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-weibo" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-windows" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-xing" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-yahoo" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-yoast" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-youtube" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-y-combinator" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-xing-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wordpress" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-weixin" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-vine" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-viadeo" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-twitter" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tripadvisor" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-stumbleupon-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-stack-overflow" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-snapchat-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-slack" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-shirtsinbulk" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-scribd" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-reddit-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rebel" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pinterest-p" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pied-piper" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-opera" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-odnoklassniki" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-meanpath" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-jsfiddle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-instagram" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gratipay" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-plus-official" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-glide" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-github-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gg-circle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-foursquare" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-font-awesome" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-facebook-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-font-awesome" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-edge" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-css3" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-codepen" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-paypal" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-diners-club" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bluetooth-b" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-bitbucket-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-apple" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-adn" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-amazon" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-behance" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-btc" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-discover" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-stripe" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-codiepie" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-dashcube" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-dribbble" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-empire" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-facebook" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-firefox" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fonticons" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-empire" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-github-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-glide-g" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-plus-official" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hacker-news" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-internet-explorer" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-lastfm" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-linkedin-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-medium" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-odnoklassniki-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-optin-monster" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pied-piper-alt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pinterest-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rebel" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-renren" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-simplybuilt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-sellsy" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-slideshare" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-soundcloud" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-steam" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tencent-weibo" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tumblr" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-twitter-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-viadeo-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-vk" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-whatsapp" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wpbeginner" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-y-combinator" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hacker-news" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-youtube-play" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-youtube-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-yelp" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-hacker-news" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wpforms" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-wikipedia-w" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-weixin" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-vimeo" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-usb" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-tumblr-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-themeisle" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-steam-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-spotify" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-snapchat" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-skyatlas" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-rebel" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-product-hunt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-product-hunt" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pied-piper-pp" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-pagelines" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-opencart" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-linux" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-lastfm-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-ioxhost" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-houzz" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google-plus-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-google" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-gitlab" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-get-pocket" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-git-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-fort-awesome" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-first-order" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-facebook" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-envira" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-dropbox" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-delicious" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-connectdevelop" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-jcb" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-buysellads" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-black-tie" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-behance-square" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-android" aria-hidden="true"></i></div>
<div class="col-xs-1"><i class="fa fa-cc-visa" aria-hidden="true"></i></div>
</div>
</div>
  </div>
 </div>
<?php echo $footer; ?>