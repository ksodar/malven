<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_footer_design;?></div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label" for="input-status"><?php echo $text_footer_design_entry; ?></label>
	<div class="col-sm-9">
		<select onchange="change_footer_design(this.value);" name="config_footer_design" id="input-footer-design" class="form-control">
			<?php if ($config_footer_design =='2') { ?>
				<option value="1"><?php echo '1'; ?></option>
				<option value="2" selected="selected"><?php echo '2'; ?></option>
			<?php } else { ?>
				<option value="1" selected="selected"><?php echo '1'; ?></option>
				<option value="2"><?php echo '2'; ?></option>
			<?php } ?>
		</select>
	</div>
</div>
<script type="text/javascript">
$(window).load(function(){ 
	var config_footer_design = $('#input-footer-design option:selected').val();							
	if (config_footer_design =='2') {
		$('.menu_always_open_gmap').toggleClass('active');
	} else if (config_footer_design =='1') {
		$('.menu_always_open_gmap').removeClass('active');
	}
})
function change_footer_design(config_footer_design){						
	if (config_footer_design =='2') {
		$('.menu_always_open_gmap').addClass('active');
	} else if (config_footer_design =='1') {
		$('.menu_always_open_gmap').removeClass('active');
	}
}
</script>
		<div class="menu_always_open_gmap">
			<div class="tab-pane-footer-description">
            <ul class="nav nav-tabs" id="language_description_store_footer">
              <?php foreach ($languages as $language) { ?>
              <li><a href="#language_description_store_footer<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
              <?php } ?>
            </ul>
            <div class="tab-content">
              <?php foreach ($languages as $language) { ?>
              <div class="tab-pane" id="language_description_store_footer<?php echo $language['language_id']; ?>">
                <div class="form-group">
                  <label class="col-sm-3 control-label" for="input-description-store-footer<?php echo $language['language_id']; ?>"><?php echo $text_description_store_footer; ?></label>
                  <div class="col-sm-9">
                   <textarea name="config_description_store_footer[<?php echo $language['language_id']; ?>][config_description_store_footer]" id="input-description-store-footer<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($config_description_store_footer[$language['language_id']]['config_description_store_footer']) ? $config_description_store_footer[$language['language_id']]['config_description_store_footer'] : ''; ?></textarea>
                  </div>
                </div>
              </div>
              <?php } ?>
            </div>
          </div>

<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
$('#input-description-store-footer<?php echo $language['language_id']; ?>').summernote({height: 200});
$('#language_description_store_footer<?php echo $language['language_id']; ?> .note-editable').on("blur", function(){
		$('#input-description-store-footer<?php echo $language['language_id']; ?>').html($(this).code());				
	});	
<?php } ?>
//--></script> 
  <script type="text/javascript"><!--
$('#language_description_store_footer a:first').tab('show');
//--></script>
<div class="form-group">
	<label class="col-sm-3 control-label"><?php echo $text_google_api_map_key;?><br>
	<div class="label-description"><?php echo $text_google_api_map_key_description;?></div>
	</label>
	<div class="col-sm-5">
		<input class="form-control" type="text"  name="config_google_api_map_key" value="<?php echo $config_google_api_map_key;?>"/>
	</div>
</div>

<script type="text/javascript" src="//maps.google.com/maps/api/js?key=<?php echo $config_google_api_map_key;?>&libraries=places"></script>
			<div class="form-group">
				<div class="col-sm-12 title-setting"><?php echo "Google Map";?></div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $entry_center_google_map;?></label>
				<div class="col-sm-5">
					<input class="form-control" name="config_center_google_map" value="<?php echo $config_center_google_map;?>"></input>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label"><?php echo $entry_zoom_google_map;?></label>
				<div class="col-sm-5">
					<input class="form-control" name="config_zoom_google_map" value="<?php echo $config_zoom_google_map;?>"></input>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12 title-setting"><?php echo $add_marker_to_map;?></div>
			</div>
			<div id="ns-left-block-menu" class="col-lg-3 col-md-4 vtabs">
					<ul class="nav nav-pills nav-stacked"> 
					<?php $map_row = 1; ?>
						<?php foreach ($gmaps as $gmap) { ?>				
							<li id="gmap-menu-item-<?php echo $map_row; ?>">
								<a data-toggle="tab" class="btn btn-primary menu-tab-link" href="#gmap-tab-menu-item-<?php echo $map_row; ?>" >
									 <?php  echo $gmap['mapname']; ?>
									<i class="fa fa-minus-circle gmap_remove_menu_item" onclick="$('#gmap-menu-item-<?php echo $map_row; ?>').remove(); $('#gmap-tab-menu-item-<?php echo $map_row; ?>').remove(); $('a[href=\'#gmap-tab-menu-item-1\']').trigger('click'); return false;"></i> 
								</a>
							</li>
						<?php $map_row++; ?>
						<?php } ?>
						<li id="module-map-add"><a class="btn btn-primary" onclick="addGMap();" title="<?php echo $text_add; ?>"><?php echo $text_add; ?> <i class="fa fa-plus-circle"></i> </a></li>
					</ul>
				</div>
			<?php $map_row = 1; ?>
			<div id="ns-right-block-menu" class="col-lg-9 col-md-8" style="margin-bottom:50px;padding-bottom:10px; border-bottom:1px solid #ccc;">
			<div class="tab-content map-content">
			<?php foreach ($gmaps as $gmap) { ?>
			<?php $glat = '0'; $glong = '0'; if (!empty($gmap['latlong'])) { $ll = explode(',', $gmap['latlong']); $glat = $ll[0]; $glong = $ll[1]; } ?>
			<div class="tab-pane" id="gmap-tab-menu-item-<?php echo $map_row; ?>">
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $entry_mapid;?></label>
					<div class="col-sm-5">
						<input class="gmaps_mapalias form-control" name="google_maps_module_map[<?php echo $map_row; ?>][mapalias]" value="<?php echo isset($gmap['mapalias']) ? $gmap['mapalias'] : ''; ?>" type="text" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $entry_mapalias;?></label>
					<div class="col-sm-5">
						<input class="gmaps_mapname form-control" name="google_maps_module_map[<?php echo $map_row; ?>][mapname]" value="<?php echo isset($gmap['mapname']) ? $gmap['mapname'] : ''; ?>" type="text" />
					</div>
				</div>				
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $entry_address;?></label>
					<div class="col-sm-5">
						<input size="120" onclick="activateGMap('gmap-location-picker-<?php echo $map_row; ?>', <?php echo $glat; ?>, <?php echo $glong; ?>, <?php echo $map_row; ?>, '<?php echo isset($gmap['address']) ? $gmap['address'] : ''; ?>');" class="gmaps_address form-control" name="google_maps_module_map[<?php echo $map_row; ?>][address]" value="<?php echo isset($gmap['address']) ? $gmap['address'] : ''; ?>" type="text" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"></label>
					<div class="col-sm-9">
						<div id="gmap-location-picker-<?php echo $map_row; ?>" class="gmap-location-picker"><img src="/image/google_maps/activate_map.jpg" style="cursor:pointer;" onclick="activateGMap('gmap-location-picker-<?php echo $map_row; ?>', <?php echo $glat; ?>, <?php echo $glong; ?>, <?php echo $map_row; ?>, '<?php echo isset($gmap['address']) ? $gmap['address'] : ''; ?>');" /></div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $entry_latlong; ?></label>
					<div class="col-sm-9">
						<input class="gmaps_latlong form-control" name="google_maps_module_map[<?php echo $map_row; ?>][latlong]" value="<?php echo isset($gmap['latlong']) ? $gmap['latlong'] : ''; ?>" type="text" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $text_editor_gmap; ?></label>
					<div class="col-sm-9">
					<?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                          <input class="form-control" name="google_maps_module_map[<?php echo $map_row; ?>][onelinetext][<?php echo $language['language_id']; ?>]" value="<?php echo $gmap['onelinetext'][$language['language_id']]; ?>" type="text" />
                        </div>
                        <?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"><?php echo $one_line_html; ?></label>
					<div class="col-sm-9">
					<?php foreach ($languages as $language) { ?>
                        <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                         <textarea class="form-control" id="gmap-jqte-<?php echo $map_row; ?>" class="jqte-textarea" name="google_maps_module_map[<?php echo $map_row; ?>][maptext][<?php echo $language['language_id']; ?>]" id="maptext-<?php echo $map_row; ?>-<?php echo $language['language_id']; ?>"><?php echo $gmap['maptext'][$language['language_id']]; ?></textarea>
                        </div>
                        <?php } ?>
					</div>
				</div>
			</div>
			<?php $map_row++; ?>
			<?php } ?>
			</div>
			</div>

<script type="text/javascript">	
$('a[href=\'#gmap-tab-menu-item-1\']').trigger('click');
function activateGMap(id, lat, long, mp_rw, addressVal){
	var map = $('#' + id);
		if ( map.html() == '' || map.html().indexOf('activate_map') > 0 ) {
			map.empty().width(550).height(400).locationpicker({
			location: {latitude: lat, longitude: long},
				radius: 0,
				zoom: 8,
				inputBinding: {
				locationNameInput: $('input[name="google_maps_module_map[' + mp_rw + '][address]"]'),
				latlongInput: $('input[name="google_maps_module_map[' + mp_rw + '][latlong]"]')
				},
				enableAutocomplete: true, enableReverseGeocode: false
			});
			$('input[name="google_maps_module_map[' + mp_rw + '][address]"]').val(addressVal);
		}


	}
var map_row = <?php echo $map_row; ?>;
function addGMap() {
		html  = '<div id="gmap-tab-menu-item-' + map_row + '" class="tab-pane">';	
		html  += '	<div class="tab-content">';
		html  += '		<div class="form-group">';
		html  += '			<label class="col-sm-3 control-label"><?php echo $entry_mapid;?></label>';
		html  += '			<div class="col-sm-5">';
		html  += '				<input class="gmaps_mapalias form-control" name="google_maps_module_map[' + map_row + '][mapalias]" value="" type="text" />';
		html  += '			</div>';
		html  += '		</div>';
		html  += '		<div class="form-group">';
		html  += '			<label class="col-sm-3 control-label"><?php echo $entry_mapalias;?></label>';
		html  += '			<div class="col-sm-5">';
		html  += '				<input class="gmaps_mapname form-control" name="google_maps_module_map[' + map_row + '][mapname]" value="" type="text" />';
		html  += '			</div>';
		html  += '		</div>';
		html  += '		<div class="form-group">';
		html  += '			<label class="col-sm-3 control-label"><?php echo $entry_address;?></label>';
		html  += '			<div class="col-sm-5">';
		html  += '				<input size="120" onclick="activateGMap(\'gmap-location-picker-' + map_row + '\', 0, 0, ' + map_row + ', \'\');" class="gmaps_address form-control" name="google_maps_module_map[' + map_row + '][address]" value="" type="text" />';
		html  += '			</div>';
		html  += '		</div>';
		html  += '		<div class="form-group">';
		html  += '			<label class="col-sm-3 control-label"></label>';
		html  += '			<div class="col-sm-5">';
		html  += '				<div id="gmap-location-picker-' + map_row + '" class="gmap-location-picker"><img src="/image/google_maps/activate_map.jpg" style="cursor:pointer;" onclick="activateGMap(\'gmap-location-picker-' + map_row + '\', 0, 0, ' + map_row + ', \'\');" /></div>';
		html  += '			</div>';
		html  += '		</div>';
		html  += '		<div class="form-group">';
		html  += '			<label class="col-sm-3 control-label"><?php echo $entry_latlong; ?></label>';
		html  += '			<div class="col-sm-5">';
		html  += '				<input class="gmaps_latlong form-control" name="google_maps_module_map[' + map_row + '][latlong]" value="" type="text" />';
		html  += '			</div>';
		html  += '		</div>';
		html  += '		<div class="form-group">';
		html  += '			<label class="col-sm-3 control-label"><?php echo $text_editor_gmap; ?></label>';
		html  += '			<div class="col-sm-9">';
		html  += '			<?php foreach ($languages as $language) { ?>';
        html  += '                <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
        html  += '                  <input class="form-control" name="google_maps_module_map[' + map_row + '][onelinetext][<?php echo $language['language_id']; ?>]" value="" type="text" />';
        html  += '                </div>';
        html  += '                <?php } ?>';
		html  += '			</div>';
		html  += '		</div>';
		html  += '		<div class="form-group">';
		html  += '			<label class="col-sm-3 control-label"><?php echo $one_line_html; ?></label>';
		html  += '			<div class="col-sm-9">';
		html  += '			<?php foreach ($languages as $language) { ?>';
        html  += '                <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
        html  += '                 <textarea class="form-control" id="gmap-jqte-' + map_row + '" class="jqte-textarea" name="google_maps_module_map[' + map_row + '][maptext][<?php echo $language['language_id']; ?>]" id="maptext-' + map_row + '-<?php echo $language['language_id']; ?>"></textarea>';
        html  += '                </div>';
        html  += '                <?php } ?>';
		html  += '			</div>';
		html  += '		</div>';
		html += '</div>';
		html += '</div>';

		$('.map-content').append(html);
				
		$('#module-map-add').before('<li id="gmap-menu-item-' + map_row + '" ><a data-toggle="tab" class="btn btn-primary menu-tab-link" href="#gmap-tab-menu-item-' + map_row + '" > <?php echo $ns_text_menu_name; ?> <i onclick="$(\'#gmap-menu-item-' + map_row + '\').remove(); $(\'#gmap-tab-menu-item-' + map_row + '\').remove(); $(\'a[href=#gmap-tab-menu-item-1]\').trigger(\'click\'); return false;" class="fa fa-minus-circle remove_menu_item"></i></a></li>');
		$('a[href=\'#gmap-tab-menu-item-'+ map_row +'\']').trigger('click');
		
		$('.gmaps_balloonwidth').iInt({disallow:'+-'});
		$('.gmaps_latlong').iNumeric({allow:'-', disallow:'+',comma:true});

		map_row++;
		
	}
</script>			
</div>

<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_footer_ribbon;?></div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label"><?php echo $text_footer_ribbon_on_off;?></label>
	<div class="col-sm-9">
						<div class="radio-group-infinity">	
							<?php if ($config_on_off_footer_ribbon) { ?>
							<input id="config_on_off_footer_ribbon_yes" class="hide-radio" type="radio" name="config_on_off_footer_ribbon" value="1" checked="checked" />
							<label for="config_on_off_footer_ribbon_yes"><?php echo $text_yes; ?></label>
							<?php } else { ?>
							<input id="config_on_off_footer_ribbon_yes" class="hide-radio" type="radio" name="config_on_off_footer_ribbon" value="1" />
							<label for="config_on_off_footer_ribbon_yes"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$config_on_off_footer_ribbon) { ?>
							<input id="config_on_off_footer_ribbon_no" class="hide-radio" type="radio" name="config_on_off_footer_ribbon" value="0" checked="checked" />							
							<label for="config_on_off_footer_ribbon_no"><?php echo $text_no; ?></label>
							<?php } else { ?>
							<input id="config_on_off_footer_ribbon_no" class="hide-radio" type="radio" name="config_on_off_footer_ribbon" value="0" />							
							<label for="config_on_off_footer_ribbon_no"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label"><?php echo $entry_footer_ribbon_text; ?></label>
	<div class="col-sm-5">
	<?php foreach ($languages as $language) { ?>
        <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
            <input name="config_footer_ribbon[<?php echo $language['language_id']; ?>][config_footer_ribbon]" class="form-control" value="<?php echo isset($config_footer_ribbon[$language['language_id']]) ? $config_footer_ribbon[$language['language_id']]['config_footer_ribbon'] : ''; ?>" />
        </div>
    <?php } ?>
	</div>
</div>	
<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_banner_footer;?></div>
</div>
<table id="items" class="table table-bordered table-hover">
	<thead>
		<tr>								
			<td><?php echo $column_banner_icon; ?></td>
			<td><?php echo $column_banner_name; ?></td>
			<td><?php echo $column_banner_description ?></td>
			<td><?php echo $column_banner_link; ?></td>								
			<td></td>
		</tr>
	</thead>
	<tbody>
	<?php $item_row = 0; ?>
	<?php foreach ($banner_items_footers as $banner_items_footer) { ?>
		<tr id="item-row<?php echo $item_row; ?>">
			<td class="text-left">	
				<span class="icon_open" id="banner_items_footer_<?php echo $item_row; ?>" onclick="icon_fontawesome_popup($(this).attr('id'))">
					<?php echo $text_select_icon;?>
					<?php if(isset($banner_items_footer['icon_image'])) { ?><i class="<?php echo $banner_items_footer['icon_image']; ?>"></i><?php } ?>
				</span>	
				<input class="form-control" type="hidden" name="banner_items_footer[<?php echo $item_row; ?>][icon_image]" value="<?php echo $banner_items_footer['icon_image']; ?>" />
			</td>
			<td class="text-left">
				<?php foreach ($languages as $language) { ?>
				<div class="input-group pull-left">
				<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
				<input class="form-control" type="text" name="banner_items_footer[<?php echo $item_row; ?>][title][<?php echo $language['language_id']; ?>]" value="<?php echo $banner_items_footer['title'][$language['language_id']]; ?>" />
				</div>
				<?php } ?>
			</td>
			<td class="text-left">
				<?php foreach ($languages as $language) { ?>
					<div class="input-group pull-left">
						<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
						<input class="form-control" type="text" name="banner_items_footer[<?php echo $item_row; ?>][description][<?php echo $language['language_id']; ?>]" value="<?php echo $banner_items_footer['description'][$language['language_id']]; ?>" />
					</div>
				<?php } ?>
			</td>
			<td class="text-left">	
				<?php foreach ($languages as $language) { ?>
					<div class="input-group pull-left">
						<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
						<input class="form-control" type="text" name="banner_items_footer[<?php echo $item_row; ?>][link][<?php echo $language['language_id']; ?>]" value="<?php echo isset($banner_items_footer['link'][$language['language_id']]) ? $banner_items_footer['link'][$language['language_id']] : ''; ?>" />
					</div>
				<?php } ?>
				<div class="form-group">
					<label class="col-sm-12 text-center"><?php echo $text_open_banner_popup;?></label>
					<div class="col-sm-12 text-center">
						<div class="radio-group-infinity">	
							<?php if ($banner_items_footer['popup']) { ?>
								<input id="config_banner_items_footer_popup_yes_<?php echo $item_row; ?>" class="hide-radio" type="radio" name="banner_items_footer[<?php echo $item_row; ?>][popup]" value="1" checked="checked" />
								<label for="config_banner_items_footer_popup_yes_<?php echo $item_row; ?>"><?php echo $text_yes; ?></label>
							<?php } else { ?>
								<input id="config_banner_items_footer_popup_yes_<?php echo $item_row; ?>" class="hide-radio" type="radio" name="banner_items_footer[<?php echo $item_row; ?>][popup]" value="1" />
								<label for="config_banner_items_footer_popup_yes_<?php echo $item_row; ?>"><?php echo $text_yes; ?></label>
							<?php } ?>
							<?php if (!$banner_items_footer['popup']) { ?>
								<input id="config_banner_items_footer_popup_no_<?php echo $item_row; ?>" class="hide-radio" type="radio" name="banner_items_footer[<?php echo $item_row; ?>][popup]" value="0" checked="checked" />							
								<label for="config_banner_items_footer_popup_no_<?php echo $item_row; ?>"><?php echo $text_no; ?></label>
							<?php } else { ?>
								<input id="config_banner_items_footer_popup_no_<?php echo $item_row; ?>" class="hide-radio" type="radio" name="banner_items_footer[<?php echo $item_row; ?>][popup]" value="0" />							
								<label for="config_banner_items_footer_popup_no_<?php echo $item_row; ?>"><?php echo $text_no; ?></label>
							<?php } ?>						  
						</div>
					</div>
				</div>
			</td>
			<td class="text-right">
				<a class="btn btn-danger" onclick="$('#item-row<?php echo $item_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $text_delete; ?>"><i class="fa fa-trash-o"></i></a>
			</td>
		</tr>
		<?php $item_row++; ?>
	<?php } ?>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="4"></td>
			<td class="text-right"><a class="btn btn-primary" onclick="addItem();" data-toggle="tooltip" title="<?php echo $text_add; ?>"><i class="fa fa-plus-circle"></i></a></td>
		</tr>
	</tfoot>
</table>
<script type="text/javascript">
var item_row = <?php echo $item_row; ?>;

function addItem() {
	html  = '<tr id="item-row' + item_row + '">';
	html += '<td class="text-left">';
	html += '<span class="icon_open" id="banner_items_footer_' + item_row + '" onclick="icon_fontawesome_popup($(this).attr(\'id\'))">';
	html += '<?php echo $text_select_icon;?>';
	html += '</span>';	
	html += '<input class="form-control" type="hidden" name="banner_items_footer[' + item_row + '][icon_image]" value="" />';
	html += '</td>';
	html += '<td class="text-left">';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="input-group pull-left"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
	html += '<input class="form-control" type="text" name="banner_items_footer[' + item_row + '][title][<?php echo $language['language_id']; ?>]" value="" />';
	html += '</div>';
	<?php } ?>
	html += '</td>';
	html += '<td class="text-left">';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="input-group pull-left"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
	html += '<input class="form-control" type="text" name="banner_items_footer[' + item_row + '][description][<?php echo $language['language_id']; ?>]" value="" />';
	html += '</div>';
	<?php } ?>
	html += '</td>';
	html += '<td class="text-left">';
	html += '	<?php foreach ($languages as $language) { ?>';
	html += '		<div class="input-group pull-left">';
	html += '			<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
	html += '			<input class="form-control"  type="text" name="banner_items_footer[' + item_row + '][link][<?php echo $language['language_id']; ?>]" value="" />';
	html += '		</div>';
	html += '	<?php } ?>';	
	
	html += '<div class="form-group">';
	html += '	<label class="col-sm-12 text-center"><?php echo $text_open_banner_popup;?></label>';
	html += '	<div class="col-sm-12 text-center">';
	html += '	<div class="radio-group-infinity">';
	html += '		<input id="config_banner_items_footer_popup_yes_' + item_row + '" class="hide-radio" type="radio" name="banner_items_footer[' + item_row + '][popup]" value="1"/>';
	html += '		<label for="config_banner_items_footer_popup_yes_' + item_row + '"><?php echo $text_yes; ?></label>';
	html += '		<input id="config_banner_items_footer_popup_no_' + item_row + '" class="hide-radio" type="radio" name="banner_items_footer[' + item_row + '][popup]" value="0" checked="checked" />';						
	html += '		<label for="config_banner_items_footer_popup_no_' + item_row + '"><?php echo $text_no; ?></label>';									  
	html += '	</div>';
	html += '	</div>';
	html += '</div>';
	html += '</td>';
	html += '<td class="text-right"><a class="btn btn-danger" onclick="$(\'#item-row' + item_row  + '\').remove();" data-toggle="tooltip" title="<?php echo $text_delete; ?>"><i class="fa fa-trash-o"></i></a></td>';
	html += '</tr>'; 
	
	$('#items tbody').append(html);;
	
	item_row++;
}
</script>
<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_phone_footer;?></div>
</div>
<?php if($config_phones_footer) { ?>
	<?php $phone_row_footer = 0;?>
		<?php foreach($config_phones_array_footer as $config_phone_footer) { ?>
			<div class="form-group" id="phone_row_footer<?php echo $phone_row_footer;?>">
				<label class="col-sm-2 control-label"><?php echo $icon_fontawesome_footer; ?></label>
				<div class="col-sm-2">
					<input class="form-control" type="text"  name="config_phones_footer[<?php echo $phone_row_footer; ?>][icon_footer_phone]" value="<?php echo $config_phone_footer['icon_footer_phone']; ?>"/>
				</div>
				<label class="col-sm-2 control-label"><?php echo $text_phone_footer; ?></label>
				<div class="col-sm-4">
					<input class="form-control" type="text"  name="config_phones_footer[<?php echo $phone_row_footer; ?>][phone_footer]" value="<?php echo $config_phone_footer['phone_footer']; ?>"/>
				</div>
				<div class="col-sm-2">
					<a class="btn btn-danger" onclick="$('#phone_row_footer<?php echo $phone_row_footer;?>').remove();" class="button"><?php echo $text_delete; ?></a>
				</div>		
			</div>
		<?php $phone_row_footer++;?>	
		<?php } ?>
	<?php } else { ?>
		<?php $phone_row_footer = 0;?>
	<?php } ?>
	<div class="form-group" id="phone_footer">
	<div class="col-sm-2">
		<a onclick="addPhoneFooter();" class="btn btn-primary"><?php echo $text_add; ?></a></td>
	</div>
	</div>
	
<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_schedule_footer;?></div>
</div>
<div class="form-group">
	<label class="col-sm-2 control-label"><?php echo $text_schedule_footer; ?></label>
	<div class="col-sm-5">
		<tr>
			<td class="text-left">
			<?php foreach ($languages as $language) { ?>
                <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                    <textarea name="config_schedule_footer[<?php echo $language['language_id']; ?>][config_schedule_footer]" rows="5" placeholder="" class="form-control"><?php echo isset($config_schedule_footer[$language['language_id']]) ? $config_schedule_footer[$language['language_id']]['config_schedule_footer'] : ''; ?></textarea>
                </div>
            <?php } ?>
			</td>
		</tr>
	</div>
</div>
<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_store_address;?></div>
</div>
<div class="form-group">
	<label class="col-sm-2 control-label"><?php echo $text_store_address; ?></label>
	<div class="col-sm-5">
		<tr>
			<td class="text-left">
				<?php foreach ($languages as $language) { ?>
                <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                    <textarea name="config_store_address[<?php echo $language['language_id']; ?>][config_store_address]" rows="5" placeholder="" class="form-control"><?php echo isset($config_store_address[$language['language_id']]) ? $config_store_address[$language['language_id']]['config_store_address'] : ''; ?></textarea>
                </div>
                <?php } ?>
			</td>
		</tr>
	</div>
</div>
<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_email_footer;?></div>
</div>
<div class="form-group">
	<label class="col-sm-2 control-label"><?php echo $text_email_footer_contact;?></label>
	<div class="col-sm-5">
		<input class="form-control" type="text"  name="config_email_footer_contact" value="<?php echo $config_email_footer_contact;?>"/>
	</div>
</div>
<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_skype_footer;?></div>
</div>
<div class="form-group">
	<label class="col-sm-2 control-label"><?php echo $text_skype_footer_contact;?></label>
	<div class="col-sm-5">
		<input class="form-control" type="text"  name="config_skype_footer_contact" value="<?php echo $config_skype_footer_contact;?>"/>
	</div>
</div>
<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_social_link_header;?></div>
</div>
<?php if($config_social_footer) { ?>
	<?php $social_row_footer = 0;?>
	<?php foreach($config_social_array_footer as $config_social_footer) { ?>
		<div class="form-group" id="social_row_footer<?php echo $social_row_footer;?>">		
			<div class="col-sm-3">
				<a href="" id="thumb-image-social-footer<?php echo $social_row_footer;?>" data-toggle="image" class="img-thumbnail">
				<img src="<?php echo $config_social_footer['icon_footer_social']; ?>" alt=""/></a>
				<input type="hidden" name="config_social_footer[<?php echo $social_row_footer; ?>][image_footer_social]" value="<?php echo $config_social_footer['image_footer_social']; ?>" id="input-image-social-footer<?php echo $social_row_footer;?>" />
			</div>
			<label class="col-sm-1 control-label"><?php echo $text_link_social; ?></label>
			<div class="col-sm-5">
				<input class="form-control" type="text"  name="config_social_footer[<?php echo $social_row_footer; ?>][social_link_footer]" value="<?php echo $config_social_footer['social_link_footer']; ?>"/>
			</div>
			<div class="col-sm-2">
				<a class="btn btn-danger" onclick="$('#social_row_footer<?php echo $social_row_footer;?>').remove();" class="button"><?php echo $text_delete; ?></a>
			</div>
		</div>
		<?php $social_row_footer++;?>	
	<?php } ?>
	<?php } else { ?>
		<?php $social_row_footer = 0;?>
	<?php } ?>
<div class="form-group" id="social_footer_icon_link">
	<div class="col-sm-2">
		<a onclick="addsocialFooter();" class="btn btn-primary"><?php echo $text_add; ?></a></td>
	</div>
</div>
<div class="form-group">
	<div class="col-sm-12 title-setting"><?php echo $text_payments_method;?></div>
</div>
<?php if($config_payments_footer) { ?>
	<?php $payments_row_footer = 0;?>
	<?php foreach($config_payments_array_footer as $config_payments_footer) { ?>
		<div class="form-group" id="payments_row_footer<?php echo $payments_row_footer;?>">
			<div class="col-sm-3">
				<a href="" id="thumb-image-payments-footer<?php echo $payments_row_footer;?>" data-toggle="image" class="img-thumbnail">
				<img src="<?php echo $config_payments_footer['icon_footer_payments']; ?>" alt=""/></a>
				<input type="hidden" name="config_payments_footer[<?php echo $payments_row_footer; ?>][image_footer_payments]" value="<?php echo $config_payments_footer['image_footer_payments']; ?>" id="input-image-payments-footer<?php echo $social_row_footer;?>" />
			</div>
			<label class="col-sm-1 control-label"><?php echo $text_link_payments; ?></label>
			<div class="col-sm-5">
				<input class="form-control" type="text"  name="config_payments_footer[<?php echo $payments_row_footer; ?>][payments_link_footer]" value="<?php echo $config_payments_footer['payments_link_footer']; ?>"/>
			</div>
			<div class="col-sm-2">
				<a class="btn btn-danger" onclick="$('#payments_row_footer<?php echo $payments_row_footer;?>').remove();" class="button"><?php echo $text_delete; ?></a>
			</div>
		</div>
		<?php $payments_row_footer++;?>	
	<?php } ?>
<?php } else { ?>
	<?php $payments_row_footer = 0;?>
<?php } ?>
<div class="form-group" id="payments_footer_icon_link">
	<div class="col-sm-2">
		<a onclick="addPaymentsFooter();" class="btn btn-primary"><?php echo $text_add; ?></a></td>
	</div>
</div>
<div class="form-group">
	<label class="col-sm-3 control-label"><?php echo $text_counters_footer;?></label>
	<div class="col-sm-7">
		<textarea class="form-control" type="text"  name="config_ns_footer_counters" rows="10"><?php echo $config_ns_footer_counters;?></textarea>
	</div>
</div>
<script type="text/javascript"><!--			
var phone_row_footer = <?php echo $phone_row_footer;?>;
function addPhoneFooter() {
	html  = '<div class="form-group" id="phone_row_footer' + phone_row_footer + '">';
	html += '  <label class="col-sm-2 control-label"><?php echo $icon_fontawesome_footer; ?></label>';
	html += '  <div class="col-sm-2">';
	html += '  <input class="form-control" type="text"  name="config_phones_footer['+ phone_row_footer +'][icon_footer_phone]" value=""/>';
	html += '  </div>';
	html += '  <label class="col-sm-2 control-label"><?php echo $text_phone_footer; ?></label>';
	html += '  <div class="col-sm-4">';
	html += '  <input class="form-control" type="text"  name="config_phones_footer['+ phone_row_footer +'][phone_footer]" value=""/>';
	html += '  </div>';
	html += '  <div class="col-sm-2">';
	html += ' <a class="btn btn-danger" onclick="$(\'#phone_row_footer' + phone_row_footer + '\').remove();" class="button"><?php echo $text_delete; ?></a>';
	html += '  </div>';
	html += '</div>';	
	$('#phone_footer').before(html);	
	phone_row_footer++;
}
//--></script> 
   <script type="text/javascript"><!--			
var social_row_footer = <?php echo $social_row_footer;?>;
function addsocialFooter() {
	html  = '<div class="form-group" id="social_row_footer' + social_row_footer + '">';
	html += '  <div class="col-sm-3">';
	html += '  		<a href="" id="thumb-image-social-footer'+ social_row_footer +'" data-toggle="image" class="img-thumbnail">';
	html += '  		<img src="<?php echo $no_image_phone;?>" alt=""/></a>';
	html += '  <input type="hidden" name="config_social_footer['+ social_row_footer +'][image_footer_social]" value="" id="input-image-social-footer'+ social_row_footer +'" />';
	html += '  </div>';
	html += '  <label class="col-sm-1 control-label"><?php echo $text_link_social; ?></label>';
	html += '  <div class="col-sm-5">';
	html += '  <input class="form-control" type="text"  name="config_social_footer['+ social_row_footer +'][social_link_footer]" value=""/>';
	html += '  </div>';
	html += '  <div class="col-sm-2">';
	html += ' <a class="btn btn-danger" onclick="$(\'#social_row_footer' + social_row_footer + '\').remove();" class="button"><?php echo $text_delete; ?></a>';
	html += '  </div>';
	html += '</div>';	
	$('#social_footer_icon_link').before(html);	
	social_row_footer++;
}
//--></script> 	
<script type="text/javascript"><!--			
var payments_row_footer = <?php echo $payments_row_footer;?>;
function addPaymentsFooter() {
	html  = '<div class="form-group" id="payments_row_footer' + payments_row_footer + '">';
	html += '  <div class="col-sm-3">';
	html += '  		<a href="" id="thumb-image-payments-footer'+ payments_row_footer +'" data-toggle="image" class="img-thumbnail">';
	html += '  		<img src="<?php echo $no_image_phone;?>" alt=""/></a>';
	html += '  <input type="hidden" name="config_payments_footer['+ payments_row_footer +'][image_footer_payments]" value="" id="input-image-payments-footer'+ payments_row_footer +'" />';
	html += '  </div>';
	html += '  <label class="col-sm-1 control-label"><?php echo $text_link_payments; ?></label>';
	html += '  <div class="col-sm-5">';
	html += '  <input class="form-control" type="text"  name="config_payments_footer['+ payments_row_footer +'][payments_link_footer]" value=""/>';
	html += '  </div>';
	html += '  <div class="col-sm-2">';
	html += ' <a class="btn btn-danger" onclick="$(\'#payments_row_footer' + payments_row_footer + '\').remove();" class="button"><?php echo $text_delete; ?></a>';
	html += '  </div>';
	html += '</div>';	
	$('#payments_footer_icon_link').before(html);	
	payments_row_footer++;
}
//--></script>