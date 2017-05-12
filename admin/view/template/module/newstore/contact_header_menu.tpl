<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_header_nav_menu;?></div>
</div>
<table id="items_top_menu" class="table table-bordered table-hover">
	<thead>
		<tr>								
			<td><?php echo $column_banner_icon; ?></td>
			<td><?php echo $column_banner_name; ?></td>
			<td><?php echo $column_banner_link; ?></td>								
			<td><?php echo $text_open_banner_popup; ?></td>								
			<td></td>
		</tr>
	</thead>
	<tbody>
	<?php $item_row_nav_menu = 0; ?>
	<?php foreach ($header_nav_menu_links as $header_nav_menu_link) { ?>
		<tr id="item-row-menu-top<?php echo $item_row_nav_menu; ?>">
			<td class="text-left">	
				<span class="icon_open" id="header_nav_menu_link_icon_<?php echo $item_row_nav_menu; ?>" onclick="icon_fontawesome_popup($(this).attr('id'))">
					<?php echo $text_select_icon;?>
					<?php if(isset($header_nav_menu_link['icon_image'])) { ?><i class="<?php echo $header_nav_menu_link['icon_image']; ?>"></i><?php } ?>
				</span>	
				<input class="form-control" type="hidden" name="header_nav_menu_link[<?php echo $item_row_nav_menu; ?>][icon_image]" value="<?php echo $header_nav_menu_link['icon_image']; ?>" />
			</td>
			<td class="text-left">
				<?php foreach ($languages as $language) { ?>
				<div class="input-group pull-left">
				<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
				<input class="form-control" type="text" name="header_nav_menu_link[<?php echo $item_row_nav_menu; ?>][title][<?php echo $language['language_id']; ?>]" value="<?php echo $header_nav_menu_link['title'][$language['language_id']]; ?>" />
				</div>
				<?php } ?>
			</td>
			<td class="text-left">
				<?php foreach ($languages as $language) { ?>
					<div class="input-group pull-left">
						<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
						<input class="form-control" type="text" name="header_nav_menu_link[<?php echo $item_row_nav_menu; ?>][link][<?php echo $language['language_id']?>]" value="<?php echo isset($header_nav_menu_link['link'][$language['language_id']]) ? $header_nav_menu_link['link'][$language['language_id']] : ''; ?>" />
					</div>
				<?php } ?>		
			</td>
			<td class="text-center">
			<div class="form-group">
					<div class="col-sm-12">
						<div class="radio-group-infinity">	
							<?php if ($header_nav_menu_link['popup']) { ?>
								<input id="header_nav_menu_link_popup_yes_<?php echo $item_row_nav_menu; ?>" class="hide-radio" type="radio" name="header_nav_menu_link[<?php echo $item_row_nav_menu; ?>][popup]" value="1" checked="checked" />
								<label for="header_nav_menu_link_popup_yes_<?php echo $item_row_nav_menu; ?>"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="header_nav_menu_link_popup_yes_<?php echo $item_row_nav_menu; ?>" class="hide-radio" type="radio" name="header_nav_menu_link[<?php echo $item_row_nav_menu; ?>][popup]" value="1" />
								<label for="header_nav_menu_link_popup_yes_<?php echo $item_row_nav_menu; ?>"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$header_nav_menu_link['popup']) { ?>
								<input id="header_nav_menu_link_popup_no_<?php echo $item_row_nav_menu; ?>" class="hide-radio" type="radio" name="header_nav_menu_link[<?php echo $item_row_nav_menu; ?>][popup]" value="0" checked="checked" />							
								<label for="header_nav_menu_link_popup_no_<?php echo $item_row_nav_menu; ?>"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="header_nav_menu_link_popup_no_<?php echo $item_row_nav_menu; ?>" class="hide-radio" type="radio" name="header_nav_menu_link[<?php echo $item_row_nav_menu; ?>][popup]" value="0" />							
								<label for="header_nav_menu_link_popup_no_<?php echo $item_row_nav_menu; ?>"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
			</td>
			<td class="text-right">
				<a class="btn btn-danger" onclick="$('#item-row-menu-top<?php echo $item_row_nav_menu; ?>').remove();" data-toggle="tooltip" title="<?php echo $text_delete; ?>"><i class="fa fa-trash-o"></i></a>
			</td>
		</tr>
		<?php $item_row_nav_menu++; ?>
	<?php } ?>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="4"></td>
			<td class="text-right"><a class="btn btn-primary" onclick="addMenuTop();" data-toggle="tooltip" title="<?php echo $text_add; ?>"><i class="fa fa-plus-circle"></i></a></td>
		</tr>
	</tfoot>
</table>
<script type="text/javascript">
var item_row_nav_menu = <?php echo $item_row_nav_menu; ?>;

function addMenuTop() {
	html  = '<tr id="item-row-menu-top' + item_row_nav_menu + '">';
	html += '<td class="text-left">';
	html += '<span class="icon_open" id="header_nav_menu_link_icon_' + item_row_nav_menu + '" onclick="icon_fontawesome_popup($(this).attr(\'id\'))">';
	html += '<?php echo $text_select_icon;?>';
	html += '</span>';	
	html += '<input class="form-control" type="hidden" name="header_nav_menu_link[' + item_row_nav_menu + '][icon_image]" value="" />';
	html += '</td>';
	html += '<td class="text-left">';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="input-group pull-left"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
	html += '<input class="form-control" type="text" name="header_nav_menu_link[' + item_row_nav_menu + '][title][<?php echo $language['language_id']; ?>]" value="" />';
	html += '</div>';
	<?php } ?>
	html += '</td>';
	html += '<td class="text-left">';	
	html += '	<?php foreach ($languages as $language) { ?>';
	html += '		<div class="input-group pull-left">';
	html += '			<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
	html += '			<input class="form-control"  type="text" name="header_nav_menu_link[' + item_row_nav_menu + '][link][<?php echo $language['language_id']; ?>]" value="" />';
	html += '		</div>';
	html += '	<?php } ?>';		
	html += '</td>';
	html += '<td>';
	html += '<div class="form-group">';
	html += '	<div class="col-sm-12 text-center">';
	html += '	<div class="radio-group-infinity">';
	html += '		<input id="banner_items_footer_yes_' + item_row_nav_menu + '" class="hide-radio" type="radio" name="header_nav_menu_link[' + item_row_nav_menu + '][popup]" value="1"/>';
	html += '		<label for="banner_items_footer_yes_' + item_row_nav_menu + '"><?php echo $text_yes; ?></label>';
	html += '		<input id="banner_items_footer_no_' + item_row_nav_menu + '" class="hide-radio" type="radio" name="header_nav_menu_link[' + item_row_nav_menu + '][popup]" value="0" checked="checked" />';						
	html += '		<label for="banner_items_footer_no_' + item_row_nav_menu + '"><?php echo $text_no; ?></label>';									  
	html += '	</div>';
	html += '	</div>';
	html += '</div>';
	html += '</td>';
	html += '<td class="text-right"><a class="btn btn-danger" onclick="$(\'#item-row-menu-top' + item_row_nav_menu  + '\').remove();" data-toggle="tooltip" title="<?php echo $text_delete; ?>"><i class="fa fa-trash-o"></i></a></td>';
	html += '</tr>'; 
	
	$('#items_top_menu tbody').append(html);;
	
	item_row_nav_menu++;
}
</script>




<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_phone_setting_header;?></div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label"><?php echo $text_main_phone;?></label>
	<div class="col-sm-5">
		<input class="form-control" type="text"  name="config_main_phone" value="<?php echo $config_main_phone;?>"/>
	</div>
</div>
<div class="form-group">
	<label class="col-sm-12 control-label" style="text-align:left !important;"><?php echo $text_additional_phone; ?></label>
</div>	
<?php if($config_phones_header) { ?>
	<?php $phone_row = 0;?>
	<?php foreach($config_phones_array as $config_phone) { ?>
		<div class="form-group" id="phone_row<?php echo $phone_row;?>">			
			<div class="col-sm-3">
				<a href="" id="thumb-image-phone<?php echo $phone_row;?>" data-toggle="image" class="img-thumbnail">
				<img src="<?php echo $config_phone['icon_phone']; ?>" alt=""/></a>
				<input type="hidden" name="config_phones_header[<?php echo $phone_row; ?>][image]" value="<?php echo $config_phone['image']; ?>" id="input-image-phone-<?php echo $phone_row;?>" />
			</div>
			<div class="col-sm-5">
				<input class="form-control" type="text"  name="config_phones_header[<?php echo $phone_row; ?>][phone]" value="<?php echo $config_phone['phone']; ?>"/>
			</div>
			<div class="col-sm-2">
				<a class="btn btn-danger" onclick="$('#phone_row<?php echo $phone_row;?>').remove();" class="button"><?php echo $text_delete; ?></a>
			</div>				
		</div>
	<?php $phone_row++;?>	
	<?php } ?>
<?php } else { ?>
	<?php $phone_row = 0;?>
<?php } ?>
<div class="form-group" id="phone">
	<div class="col-sm-2">
		<a onclick="addPhone();" class="btn btn-primary"><?php echo $text_add; ?></a></td>
	</div>
</div>
<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_schedule;?></div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label"><?php echo $text_schedule_header; ?></label>
	<div class="col-sm-5">
		<tr>
			<td class="text-left">
			<?php foreach ($languages as $language) { ?>
                <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                    <textarea name="config_schedule_header[<?php echo $language['language_id']; ?>][config_schedule_header]" rows="5" placeholder="" class="form-control"><?php echo isset($config_schedule_header[$language['language_id']]) ? $config_schedule_header[$language['language_id']]['config_schedule_header'] : ''; ?></textarea>
                </div>
			<?php } ?>
			</td>
		</tr>
	</div>
</div>
<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_email_header;?></div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label"><?php echo $text_email_header_contact;?></label>
	<div class="col-sm-5">
		<input class="form-control" type="text"  name="config_email_header_contact" value="<?php echo $config_email_header_contact;?>"/>
	</div>
</div>
<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_skype_header;?></div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label"><?php echo $text_skype_header_contact;?></label>
	<div class="col-sm-5">
		<input class="form-control" type="text"  name="config_skype_header_contact" value="<?php echo $config_skype_header_contact;?>"/>
	</div>
</div>
<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_social_link_header;?></div>
</div>
<?php if($config_social) { ?>
	<?php $social_row = 0;?>
		<?php foreach($config_social_array as $config_social) { ?>
			<div class="form-group" id="social_row<?php echo $social_row;?>">	
				<div class="col-sm-3">
					<a href="" id="thumb-image-social<?php echo $social_row;?>" data-toggle="image" class="img-thumbnail">
					<img src="<?php echo $config_social['icon_phone']; ?>" alt=""/></a>
					<input type="hidden" name="config_social[<?php echo $social_row; ?>][image]" value="<?php echo $config_social['image']; ?>" id="input-image-social-<?php echo $social_row;?>" />
				</div>
				<div class="col-sm-5">
					<input class="form-control" type="text"  name="config_social[<?php echo $social_row; ?>][social]" value="<?php echo $config_social['social']; ?>"/>
				</div>
				<div class="col-sm-2">
					<a class="btn btn-danger" onclick="$('#social_row<?php echo $social_row;?>').remove();" class="button"><?php echo $text_delete; ?></a>
				</div>
			</div>
		<?php $social_row++;?>	
		<?php } ?>
<?php } else { ?>
	<?php $social_row = 0;?>
<?php } ?>
<div class="form-group" id="social">
	<div class="col-sm-2">
		<a onclick="addsocial();" class="btn btn-primary"><?php echo $text_add; ?></a></td>
	</div>
</div>
<script type="text/javascript"><!--			
var social_row = <?php echo $social_row;?>;
function addsocial() {
	html  = '<div class="form-group" id="social_row' + social_row + '">';
	html += '  <div class="col-sm-2">';
	html += '  		<a href="" id="thumb-image-social'+ social_row +'" data-toggle="image" class="img-thumbnail">';
	html += '  		<img src="<?php echo $no_image_phone;?>" alt=""/></a>';
	html += '  <input type="hidden" name="config_social['+ social_row +'][image]" value="" id="input-image-social-'+ social_row +'" />';
	html += '  </div>';
	html += '  <div class="col-sm-5">';
	html += '  <input class="form-control" type="text"  name="config_social['+ social_row +'][social]" value=""/>';
	html += '  </div>';
	html += '  <div class="col-sm-2">';
	html += ' <a class="btn btn-danger" onclick="$(\'#social_row' + social_row + '\').remove();" class="button"><?php echo $text_delete; ?></a>';
	html += '  </div>';
	html += '</div>';	
	$('#social').before(html);	
	social_row++;
}
//--></script> 
 <script type="text/javascript"><!--			
var phone_row = <?php echo $phone_row;?>;
function addPhone() {
	html  = '<div class="form-group" id="phone_row' + phone_row + '">';
	html += '  <div class="col-sm-2">';
	html += '  		<a href="" id="thumb-image-phone'+ phone_row +'" data-toggle="image" class="img-thumbnail">';
	html += '  		<img src="<?php echo $no_image_phone;?>" alt=""/></a>';
	html += '  <input type="hidden" name="config_phones_header['+ phone_row +'][image]" value="" id="input-image-phone-'+ phone_row +'" />';
	html += '  </div>';
	html += '  <div class="col-sm-5">';
	html += '  <input class="form-control" type="text"  name="config_phones_header['+ phone_row +'][phone]" value=""/>';
	html += '  </div>';
	html += '  <div class="col-sm-2">';
	html += ' <a class="btn btn-danger" onclick="$(\'#phone_row' + phone_row + '\').remove();" class="button"><?php echo $text_delete; ?></a>';
	html += '  </div>';
	html += '</div>';	
	$('#phone').before(html);	
	phone_row++;
}
//--></script> 
 	