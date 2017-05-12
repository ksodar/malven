<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-purchase" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-purchase" class="form-horizontal">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-form-field" data-toggle="tab"><?php echo $tab_form_field; ?></a></li>
            <li><a href="#tab-general-setting" data-toggle="tab"><?php echo $tab_general_setting; ?></a></li>
			<li><a href="#tab-style" data-toggle="tab"><?php echo $tab_style; ?></a></li>  
            <li><a href="#list-tab" data-toggle="tab"><?php echo $tab_list; ?></a></li>         
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-form-field">
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_status;?></label>
					<div class="col-sm-10">
						<div class="radio-group-ns">
							<?php if ($fcpdata['status']) { ?>
								<input id="cheaper_data_status_yes" class="hide-radio" type="radio" name="fcpdata[status]" value="1" checked="checked" />
								<label for="cheaper_data_status_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="cheaper_data_status_yes" class="hide-radio" type="radio" name="fcpdata[status]" value="1" />
								<label for="cheaper_data_status_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$fcpdata['status']) { ?>
								<input id="cheaper_data_status_no" class="hide-radio" type="radio" name="fcpdata[status]" value="0" checked="checked" />							
								<label for="cheaper_data_status_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="cheaper_data_status_no" class="hide-radio" type="radio" name="fcpdata[status]" value="0" />							
								<label for="cheaper_data_status_no"><?php echo $text_no; ?></label>
							<?php } ?>							
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $entry_send_email_status;?></label>
					<div class="col-sm-10">
						<div class="radio-group-ns">
							<?php if ($fcpdata['send_email_status']) { ?>
								<input id="send_email_status_yes" class="hide-radio" type="radio" name="fcpdata[send_email_status]" value="1" checked="checked" />
								<label for="send_email_status_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="send_email_status_yes" class="hide-radio" type="radio" name="fcpdata[send_email_status]" value="1" />
								<label for="send_email_status_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$fcpdata['send_email_status']) { ?>
								<input id="send_email_status_no" class="hide-radio" type="radio" name="fcpdata[send_email_status]" value="0" checked="checked" />							
								<label for="send_email_status_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="send_email_status_no" class="hide-radio" type="radio" name="fcpdata[send_email_status]" value="0" />							
								<label for="send_email_status_no"><?php echo $text_no; ?></label>
							<?php } ?>							
						</div>
					</div>
				</div>
				<div class="form-group required">
					<label class="col-sm-2 control-label" for="input-email-found-cheaper"><?php echo $entry_email; ?></label>
					<div class="col-sm-10">
						<input type="text" name="fcpdata[email_found_cheaper]" value="<?php echo $fcpdata['email_found_cheaper']; ?>" id="input-email-found-cheaper" class="form-control" />
						<?php if ($error_email_found_cheaper) { ?>
							<div class="text-danger"><?php echo $error_email_found_cheaper; ?></div>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 title-fields"><?php echo $text_field_name?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_status_fields;?></label>
					<div class="col-sm-10">
						<div class="radio-group-ns">
							<?php if ($fcpdata['name_field']) { ?>
								<input id="name_field_yes" class="hide-radio" type="radio" name="fcpdata[name_field]" value="1" checked="checked" />
								<label for="name_field_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="name_field_yes" class="hide-radio" type="radio" name="fcpdata[name_field]" value="1" />
								<label for="name_field_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$fcpdata['name_field']) { ?>
								<input id="name_field_no" class="hide-radio" type="radio" name="fcpdata[name_field]" value="0" checked="checked" />							
								<label for="name_field_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="name_field_no" class="hide-radio" type="radio" name="fcpdata[name_field]" value="0" />							
								<label for="name_field_no"><?php echo $text_no; ?></label>
							<?php } ?>							
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_requared_fields;?></label>
					<div class="col-sm-10">
						<div class="radio-group-ns">
							<?php if ($fcpdata['name_field_required']) { ?>
								<input id="name_field_required_yes" class="hide-radio" type="radio" name="fcpdata[name_field_required]" value="1" checked="checked" />
								<label for="name_field_required_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="name_field_required_yes" class="hide-radio" type="radio" name="fcpdata[name_field_required]" value="1" />
								<label for="name_field_required_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$fcpdata['name_field_required']) { ?>
								<input id="name_field_required_no" class="hide-radio" type="radio" name="fcpdata[name_field_required]" value="0" checked="checked" />							
								<label for="name_field_required_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="name_field_required_no" class="hide-radio" type="radio" name="fcpdata[name_field_required]" value="0" />							
								<label for="name_field_required_no"><?php echo $text_no; ?></label>
							<?php } ?>							
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_placeholder_fields; ?></label>
					<div class="col-sm-3">
						<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><?php if($VERSION < 2.2){?>
								<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
							<?php } else { ?>
								<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
							<?php } ?></span>
								<input name="fcpdata[name_field_placeholder][<?php echo $language['language_id']; ?>][text]" class="form-control" value="<?php echo isset($fcpdata['name_field_placeholder'][$language['language_id']]) ? $fcpdata['name_field_placeholder'][$language['language_id']]['text'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 title-fields"><?php echo $text_field_telephone?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_status_fields;?></label>
					<div class="col-sm-10">
						<div class="radio-group-ns">
							<?php if ($fcpdata['telephone_field']) { ?>
								<input id="telephone_field_yes" class="hide-radio" type="radio" name="fcpdata[telephone_field]" value="1" checked="checked" />
								<label for="telephone_field_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="telephone_field_yes" class="hide-radio" type="radio" name="fcpdata[telephone_field]" value="1" />
								<label for="telephone_field_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$fcpdata['telephone_field']) { ?>
								<input id="telephone_field_no" class="hide-radio" type="radio" name="fcpdata[telephone_field]" value="0" checked="checked" />							
								<label for="telephone_field_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="telephone_field_no" class="hide-radio" type="radio" name="fcpdata[telephone_field]" value="0" />							
								<label for="telephone_field_no"><?php echo $text_no; ?></label>
							<?php } ?>							
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_telephone_mask_fields; ?></label>
					<div class="col-sm-3">
						<input name="fcpdata[telephone_field_mask]" class="form-control" value="<?php echo isset($fcpdata['telephone_field_mask']) ? $fcpdata['telephone_field_mask'] : ''; ?>"></input>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_requared_fields;?></label>
					<div class="col-sm-10">
						<div class="radio-group-ns">
							<?php if ($fcpdata['telephone_field_required']) { ?>
								<input id="telephone_field_required_yes" class="hide-radio" type="radio" name="fcpdata[telephone_field_required]" value="1" checked="checked" />
								<label for="telephone_field_required_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="telephone_field_required_yes" class="hide-radio" type="radio" name="fcpdata[telephone_field_required]" value="1" />
								<label for="telephone_field_required_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$fcpdata['telephone_field_required']) { ?>
								<input id="telephone_field_required_no" class="hide-radio" type="radio" name="fcpdata[telephone_field_required]" value="0" checked="checked" />							
								<label for="telephone_field_required_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="telephone_field_required_no" class="hide-radio" type="radio" name="fcpdata[telephone_field_required]" value="0" />							
								<label for="telephone_field_required_no"><?php echo $text_no; ?></label>
							<?php } ?>							
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_placeholder_fields; ?></label>
					<div class="col-sm-3">
						<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><?php if($VERSION < 2.2){?>
								<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
							<?php } else { ?>
								<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
							<?php } ?></span>
								<input name="fcpdata[telephone_field_placeholder][<?php echo $language['language_id']; ?>][text]" class="form-control" value="<?php echo isset($fcpdata['telephone_field_placeholder'][$language['language_id']]) ? $fcpdata['telephone_field_placeholder'][$language['language_id']]['text'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-2 title-fields"><?php echo $text_field_commen;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_status_fields;?></label>
					<div class="col-sm-10">
						<div class="radio-group-ns">
							<?php if ($fcpdata['comment_field']) { ?>
								<input id="comment_field_yes" class="hide-radio" type="radio" name="fcpdata[comment_field]" value="1" checked="checked" />
								<label for="comment_field_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="comment_field_yes" class="hide-radio" type="radio" name="fcpdata[comment_field]" value="1" />
								<label for="comment_field_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$fcpdata['comment_field']) { ?>
								<input id="comment_field_no" class="hide-radio" type="radio" name="fcpdata[comment_field]" value="0" checked="checked" />							
								<label for="comment_field_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="comment_field_no" class="hide-radio" type="radio" name="fcpdata[comment_field]" value="0" />							
								<label for="comment_field_no"><?php echo $text_no; ?></label>
							<?php } ?>							
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_requared_fields;?></label>
					<div class="col-sm-10">
						<div class="radio-group-ns">
							<?php if ($fcpdata['comment_field_required']) { ?>
								<input id="comment_field_required_yes" class="hide-radio" type="radio" name="fcpdata[comment_field_required]" value="1" checked="checked" />
								<label for="comment_field_required_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="comment_field_required_yes" class="hide-radio" type="radio" name="fcpdata[comment_field_required]" value="1" />
								<label for="comment_field_required_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$fcpdata['comment_field_required']) { ?>
								<input id="comment_field_required_no" class="hide-radio" type="radio" name="fcpdata[comment_field_required]" value="0" checked="checked" />							
								<label for="comment_field_required_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="comment_field_required_no" class="hide-radio" type="radio" name="fcpdata[comment_field_required]" value="0" />							
								<label for="comment_field_required_no"><?php echo $text_no; ?></label>
							<?php } ?>							
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_placeholder_fields; ?></label>
					<div class="col-sm-3">
						<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><?php if($VERSION < 2.2){?>
								<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
							<?php } else { ?>
								<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
							<?php } ?></span>
								<input name="fcpdata[comment_field_placeholder][<?php echo $language['language_id']; ?>][text]" class="form-control" value="<?php echo isset($fcpdata['comment_field_placeholder'][$language['language_id']]) ? $fcpdata['comment_field_placeholder'][$language['language_id']]['text'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 title-fields"><?php echo $text_field_email;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_status_fields;?></label>
					<div class="col-sm-10">
						<div class="radio-group-ns">
							<?php if ($fcpdata['email_field']) { ?>
								<input id="email_field_yes" class="hide-radio" type="radio" name="fcpdata[email_field]" value="1" checked="checked" />
								<label for="email_field_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="email_field_yes" class="hide-radio" type="radio" name="fcpdata[email_field]" value="1" />
								<label for="email_field_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$fcpdata['email_field']) { ?>
								<input id="email_field_no" class="hide-radio" type="radio" name="fcpdata[email_field]" value="0" checked="checked" />							
								<label for="email_field_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="email_field_no" class="hide-radio" type="radio" name="fcpdata[email_field]" value="0" />							
								<label for="email_field_no"><?php echo $text_no; ?></label>
							<?php } ?>							
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_requared_fields;?></label>
					<div class="col-sm-10">
						<div class="radio-group-ns">
							<?php if ($fcpdata['email_field_required']) { ?>
								<input id="email_field_required_yes" class="hide-radio" type="radio" name="fcpdata[email_field_required]" value="1" checked="checked" />
								<label for="email_field_required_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="email_field_required_yes" class="hide-radio" type="radio" name="fcpdata[email_field_required]" value="1" />
								<label for="email_field_required_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$fcpdata['email_field_required']) { ?>
								<input id="email_field_required_no" class="hide-radio" type="radio" name="fcpdata[email_field_required]" value="0" checked="checked" />							
								<label for="email_field_required_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="email_field_required_no" class="hide-radio" type="radio" name="fcpdata[email_field_required]" value="0" />							
								<label for="email_field_required_no"><?php echo $text_no; ?></label>
							<?php } ?>							
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_placeholder_fields; ?></label>
					<div class="col-sm-3">
						<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><?php if($VERSION < 2.2){?>
								<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
							<?php } else { ?>
								<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
							<?php } ?></span>
								<input name="fcpdata[email_field_placeholder][<?php echo $language['language_id']; ?>][text]" class="form-control" value="<?php echo isset($fcpdata['email_field_placeholder'][$language['language_id']]) ? $fcpdata['email_field_placeholder'][$language['language_id']]['text'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div> 
				<div class="form-group">
					<div class="col-sm-2 title-fields"><?php echo $text_field_link;?></div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_status_fields;?></label>
					<div class="col-sm-10">
						<div class="radio-group-ns">
							<?php if ($fcpdata['link_field']) { ?>
								<input id="link_field_yes" class="hide-radio" type="radio" name="fcpdata[link_field]" value="1" checked="checked" />
								<label for="link_field_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="link_field_yes" class="hide-radio" type="radio" name="fcpdata[link_field]" value="1" />
								<label for="link_field_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$fcpdata['link_field']) { ?>
								<input id="link_field_no" class="hide-radio" type="radio" name="fcpdata[link_field]" value="0" checked="checked" />							
								<label for="link_field_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="link_field_no" class="hide-radio" type="radio" name="fcpdata[link_field]" value="0" />							
								<label for="link_field_no"><?php echo $text_no; ?></label>
							<?php } ?>							
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_requared_fields;?></label>
					<div class="col-sm-10">
						<div class="radio-group-ns">
							<?php if ($fcpdata['link_field_required']) { ?>
								<input id="link_field_required_yes" class="hide-radio" type="radio" name="fcpdata[link_field_required]" value="1" checked="checked" />
								<label for="link_field_required_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="link_field_required_yes" class="hide-radio" type="radio" name="fcpdata[link_field_required]" value="1" />
								<label for="link_field_required_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$fcpdata['link_field_required']) { ?>
								<input id="link_field_required_no" class="hide-radio" type="radio" name="fcpdata[link_field_required]" value="0" checked="checked" />							
								<label for="link_field_required_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="link_field_required_no" class="hide-radio" type="radio" name="fcpdata[link_field_required]" value="0" />							
								<label for="link_field_required_no"><?php echo $text_no; ?></label>
							<?php } ?>							
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_placeholder_fields; ?></label>
					<div class="col-sm-3">
						<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><?php if($VERSION < 2.2){?>
								<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
							<?php } else { ?>
								<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
							<?php } ?></span>
								<input name="fcpdata[link_field_placeholder][<?php echo $language['language_id']; ?>][text]" class="form-control" value="<?php echo isset($fcpdata['link_field_placeholder'][$language['language_id']]) ? $fcpdata['link_field_placeholder'][$language['language_id']]['text'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div> 
				 		
            </div>
			<div class="tab-pane" id="tab-general-setting">
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_title_popup_found_cheaper; ?></label>
					<div class="col-sm-3">
						<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><?php if($VERSION < 2.2){?>
								<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
							<?php } else { ?>
								<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
							<?php } ?></span>
								<input name="fcpdata[title_popup_found_cheaper][<?php echo $language['language_id']; ?>][text]" class="form-control" value="<?php echo isset($fcpdata['title_popup_found_cheaper'][$language['language_id']]) ? $fcpdata['title_popup_found_cheaper'][$language['language_id']]['text'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div> 
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_found_cheaper_info; ?></label>
					<div class="col-sm-3">
						<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><?php if($VERSION < 2.2){?>
								<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
							<?php } else { ?>
								<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
							<?php } ?></span>
								<textarea name="fcpdata[found_cheaper_info_text][<?php echo $language['language_id']; ?>][text]" class="form-control" rows="5"><?php echo isset($fcpdata['found_cheaper_info_text'][$language['language_id']]) ? $fcpdata['found_cheaper_info_text'][$language['language_id']]['text'] : ''; ?></textarea>
							</div>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_found_cheaper_button; ?></label>
					<div class="col-sm-3">
						<?php foreach ($languages as $language) { ?>
							<div class="input-group"><span class="input-group-addon"><?php if($VERSION < 2.2){?>
								<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
							<?php } else { ?>
								<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
							<?php } ?></span>
								<input name="fcpdata[found_cheaper_botton_text][<?php echo $language['language_id']; ?>][text]" class="form-control" value="<?php echo isset($fcpdata['found_cheaper_botton_text'][$language['language_id']]) ? $fcpdata['found_cheaper_botton_text'][$language['language_id']]['text'] : ''; ?>"></input>
							</div>
						<?php } ?>
					</div>
				</div> 				
				<div class="form-group">
					<label class="col-sm-2 control-label"><?php echo $text_found_cheaper_button_icon;?></label>
					<div class="col-sm-10">
						<span class="icon_open" id="found_cheaper_botton_icon" onclick="icon_fontawesome_popup($(this).attr('id'))">
						<?php echo $text_select_icon;?>
						<?php if(isset($fcpdata['found_cheaper_botton_icon'])) { ?><i class="<?php echo $fcpdata['found_cheaper_botton_icon']?>"></i><?php } ?></span>
						<input class="form-control" type="hidden"  name="fcpdata[found_cheaper_botton_icon]" value="<?php echo isset($fcpdata['found_cheaper_botton_icon']) ? $fcpdata['found_cheaper_botton_icon'] : ''; ?>"/>
					</div>
				</div>				
            </div>
			
            <div class="tab-pane" id="tab-style">
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_color_send_button; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="fcpdata[color_send_button]" value="<?php echo $fcpdata['color_send_button']; ?>" placeholder="<?php echo $entry_color_send_button; ?>" class="form-control color" />
                </div>
              </div>             
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_background_send_button; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="fcpdata[background_send_button]" value="<?php echo $fcpdata['background_send_button']; ?>" placeholder="<?php echo $entry_background_send_button; ?>" class="form-control color" />
                </div>
              </div>             
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_background_send_button_hover; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="fcpdata[background_send_button_hover]" value="<?php echo $fcpdata['background_send_button_hover']; ?>" placeholder="<?php echo $entry_background_send_button_hover; ?>" class="form-control color" />
                </div>
              </div>             
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_border_send_button; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="fcpdata[border_send_button]" value="<?php echo $fcpdata['border_send_button']; ?>" placeholder="<?php echo $entry_border_send_button; ?>" class="form-control color" />
                </div>
              </div>            
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_border_send_button_hover; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="fcpdata[border_send_button_hover]" value="<?php echo $fcpdata['border_send_button_hover']; ?>" placeholder="<?php echo $entry_border_found_cheaper_button_hover; ?>" class="form-control color" />
                </div>
              </div>  

				<div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_color_found_cheaper_button; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="fcpdata[color_found_cheaper_button]" value="<?php echo $fcpdata['color_found_cheaper_button']; ?>" placeholder="<?php echo $entry_color_found_cheaper_button; ?>" class="form-control color" />
                </div>
              </div>             
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_background_found_cheaper_button; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="fcpdata[background_found_cheaper_button]" value="<?php echo $fcpdata['background_found_cheaper_button']; ?>" placeholder="<?php echo $entry_background_found_cheaper_button; ?>" class="form-control color" />
                </div>
              </div>             
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_background_found_cheaper_button_hover; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="fcpdata[background_found_cheaper_button_hover]" value="<?php echo $fcpdata['background_found_cheaper_button_hover']; ?>" placeholder="<?php echo $entry_background_found_cheaper_button_hover; ?>" class="form-control color" />
                </div>
              </div>             
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_border_found_cheaper_button; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="fcpdata[border_found_cheaper_button]" value="<?php echo $fcpdata['border_found_cheaper_button']; ?>" placeholder="<?php echo $entry_border_found_cheaper_button; ?>" class="form-control color" />
                </div>
              </div>            
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_border_found_cheaper_button_hover; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="fcpdata[border_found_cheaper_button_hover]" value="<?php echo $fcpdata['border_found_cheaper_button_hover']; ?>" placeholder="<?php echo $entry_border_found_cheaper_button_hover; ?>" class="form-control color" />
                </div>
              </div> 
            </div>
            <div class="tab-pane" id="list-tab">
              <div id="list_applications"></div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
function saveCommentManager(id_found_cheaper) {
	var comment_manager = $('#comment_manager_' + id_found_cheaper).val();
  $.ajax({
    type: 'post',
    url:  'index.php?route=module/found_cheaper_product/saveCommentManager&token=<?php echo $token; ?>&id_found_cheaper=' + id_found_cheaper + '&comment_manager=' + comment_manager,
    dataType: 'json',
    success: function(json) {
      $('#list_applications').load('index.php?route=module/found_cheaper_product/list_applications&token=<?php echo $token; ?>');
    }
  });
}
function update_status() {
  $.ajax({
    type: 'post',
    url:  'index.php?route=module/found_cheaper_product/update_status&token=<?php echo $token; ?>',
    data: $('#list_applications input.checkbox_found_cheaper_selected[type=\'checkbox\']:checked'),
    dataType: 'json',
    success: function(json) {
		$('.alert.alert-danger.update_status, .alert.alert-success.update_status').remove();
		if (json['error']) {
			$('#list_applications').before('<div class="alert alert-danger update_status"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');	
		} 
		if (json['success']) {
			$('#list_applications').load('index.php?route=module/found_cheaper_product/list_applications&token=<?php echo $token; ?>');
			$('#list_applications').before('<div class="alert alert-success update_status"><i class="fa fa-exclamation-circle"></i> ' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');	
		} 
     
    }
  });
}
function del_selected() {
  $.ajax({
    type: 'post',
    url:  'index.php?route=module/found_cheaper_product/del_selected&token=<?php echo $token; ?>',
    data: $('#list_applications input.checkbox_found_cheaper_selected[type=\'checkbox\']:checked'),
    dataType: 'json',
    success: function(json) {
		$('.alert.alert-danger.del_selected, .alert.alert-success.del_selected').remove();
		if (json['error']) {
			$('#list_applications').before('<div class="alert alert-danger del_selected"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');	
		} 
		if (json['success']) {
			$('#list_applications').load('index.php?route=module/found_cheaper_product/list_applications&token=<?php echo $token; ?>');
			$('#list_applications').before('<div class="alert alert-success del_selected"><i class="fa fa-exclamation-circle"></i> ' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');	
		} 
     
    }
  });
}
$('#list_applications').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();
  $('#list_applications').load(this.href);
});
$('#list_applications').load('index.php?route=module/found_cheaper_product/list_applications&token=<?php echo $token; ?>');

</script>
<link href="view/javascript/newstore/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="screen" />
<script src="view/javascript/newstore/popup.js" type="text/javascript"></script>
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
<?php echo $footer; ?>