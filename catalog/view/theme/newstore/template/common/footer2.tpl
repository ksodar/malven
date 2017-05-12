<footer>
<div class="footer-top">
<div class="container">
<?php if($config_on_off_footer_ribbon =='1') { ?>
		<div class="footer-ribbon">
			<span><?php echo $config_footer_ribbon[$lang_id]['config_footer_ribbon']?></span>
		</div>
	<?php } ?>
	<div class="row banner-footer">	
		<?php foreach($banner_items_footers as $banner_items_footer) { ?>
		<div class="col-sm-6 col-md-3">
			<div class="block-banner-footer  <?php if(($banner_items_footer['popup']=='1') && ($banner_items_footer['link']) || ($banner_items_footer['popup']=='0') && ($banner_items_footer['link'])){ ?>is_a_link<?php } ?>" <?php if(($banner_items_footer['popup']=='1') && ($banner_items_footer['link'])){ ?> onclick="banner_link_open('<?php echo $banner_items_footer['link']?>')"<?php } elseif(($banner_items_footer['popup']=='0') && ($banner_items_footer['link'])) { ?>onclick="location='<?php echo $banner_items_footer['link']; ?>'" <?php } ?>>
					<div class="icon-banner-footer">
					<i class="<?php echo $banner_items_footer['icon_image']?>"></i>
				</div>
				<div class="text-footer-banner">
					<div class="banner-title-footer"><h3><?php echo $banner_items_footer['title'][$lang_id];?></h3></div>
					<span class="banner-description-footer"><?php echo $banner_items_footer['description'][$lang_id];?></span>
				</div>
			</div>
		</div>
		<?php } ?>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-4">
			<h3><?php echo $about_us; ?></h3>
			<div class="description_store_footer"><?php echo html_entity_decode($description_store_footer[$lang_id]['config_description_store_footer'],ENT_QUOTES, 'UTF-8');?></div>
			<?php if($config_social_footer) { ?>
			<div class="social_footer">
				<ul class="list-unstyled">			
						<li>
						<?php foreach($config_social_array_footer as $config_social_footer) { ?>
							<a target="_blank" href="<?php if($config_social_footer['social_link_footer']) { ?><?php echo $config_social_footer['social_link_footer'];?><?php } else { ?> javascript:void(0);<?php } ?>"><img src="<?php echo $config_social_footer['icon_footer_social']; ?>" alt="" title=""></a>
						<?php } ?>
						</li>			
				</ul>
			</div>
			<?php } ?>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-3">
			<?php if(!empty($config_phones_footer) || ($ns_skype_footer_contact) || ($ns_email_footer_contact) || ($ns_schedule_footer[$lang_id]['config_schedule_footer']) || ($ns_store_address[$lang_id]['config_store_address'])) { ?>
		<h3><?php echo $text_contact_footer; ?></h3>
		<?php } ?>
		<ul class="list-unstyled">
			<?php if($config_phones_footer) { ?>
				<?php foreach($config_phones_array_footer as $config_phone_footer) { ?>
					<li><i class="<?php echo $config_phone_footer['icon_footer_phone']; ?> fa-width"></i> <?php echo $config_phone_footer['phone_footer']; ?></li>
				<?php } ?>
			<?php } ?>
			<?php if($ns_skype_footer_contact) { ?>
			<li><i class="fa fa-skype fa-width"></i> <?php echo $ns_skype_footer_contact;?></li>
			<?php } ?>
			<?php if($ns_email_footer_contact) { ?>
			<li><i class="fa fa-envelope fa-width"></i> <?php echo $ns_email_footer_contact;?></li>
			<?php } ?>
			<?php if(!empty($ns_schedule_footer[$lang_id]['config_schedule_footer'])) { ?>
			<li><i class="fa fa-clock-o fa-width"></i> <?php echo html_entity_decode($ns_schedule_footer[$lang_id]['config_schedule_footer'], ENT_QUOTES, 'UTF-8');?></li>
			<?php } ?>
			
		
			<?php if(!empty($ns_store_address[$lang_id]['config_store_address'])) { ?>
			<li><i class="fa fa-globe fa-width"></i> <?php echo html_entity_decode($ns_store_address[$lang_id]['config_store_address'], ENT_QUOTES, 'UTF-8');?></li>
			<?php } ?>
		</ul>
		</div>
		<div class="col-xs-12 col-sm-12 col-md-5">	
			<div id="gmap_footer"></div>	
		</div>
	</div>
</div>
</div>
<div class="footer-center">
<div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-6 col-md-3">
        <h3><?php echo $text_information; ?></h3>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
		
      </div>
      <?php } ?>
      <div class="col-sm-6 col-md-3">
        <h3><?php echo $text_extra; ?></h3>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
		
      </div>
      <div class="col-sm-6 col-md-3">
        <h3><?php echo $text_account; ?></h3>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
		<div class="col-sm-6 col-md-3">
		<h3><?php echo $text_service; ?></h3>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
		</div>
    </div>
  </div>
  </div>
<div class="footer-bottom">
<div class="container">
	<div class="row">
		<div class="col-sm-9">
			<?php if($config_payments_footer) { ?>
			<ul class="list-unstyled">			
					<li>
					<?php foreach($config_payments_array_footer as $config_payments_footer) { ?>
						<a target="_blank" href="<?php if($config_payments_footer['payments_link_footer']) { ?><?php echo $config_payments_footer['payments_link_footer']?><?php } else { ?> javascript:void(0);<?php } ?>"><img src="<?php echo $config_payments_footer['icon_footer_payments']; ?>" alt="" title=""></a>
					<?php } ?>
					</li>			
			</ul>
			<?php } ?>
		</div>
		<div class="col-sm-3">
			<p><?php echo $powered_new; ?></p>
		</div>
		<?php echo html_entity_decode($config_ns_footer_counters, ENT_QUOTES, 'UTF-8'); ?>
	</div>
</div>
</div>
<script type="text/javascript" src="//maps.google.com/maps/api/js?key=<?php echo $google_api_map_key;?>"></script>
<script async src="catalog/view/theme/newstore/js/markerclusterer.js" type="text/javascript"></script>
<script async src="catalog/view/theme/newstore/js/FullScreenControl.js" type="text/javascript"></script>
<script type="text/javascript">
function initialize() {     
	var myLatlng = new google.maps.LatLng(<?php echo $center_google_map;?>);
	var myOptions = {
		zoom: <?php echo $zoom_google_map;?>,
		center: myLatlng,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	}
	var map = new google.maps.Map(document.getElementById("gmap_footer"), myOptions); 
	map.controls[google.maps.ControlPosition.TOP_RIGHT].push(FullScreenControl(map, '<span class="open-full-screen"><?php echo $gmap_full_screen;?></span>','<span class="normal-screen"><?php echo $gmap_normal_screen;?></span>'));
	var markers = []; 
	myPlaces = [];
	<?php foreach($gmap_setting as $gmap_new) { ?>
		myPlaces.push(new Place('<?php echo html_entity_decode($gmap_new['onelinetext'][$lang_id], ENT_QUOTES, 'UTF-8');?>', <?php echo $gmap_new['latlong'];?>, '<?php echo html_entity_decode($gmap_new['maptext'][$lang_id], ENT_QUOTES, 'UTF-8');?>'));
	<?php } ?>
for (var i = 0, n = myPlaces.length; i < n; i++) {
	var marker = new google.maps.Marker({    
    position: new google.maps.LatLng(myPlaces[i].latitude, myPlaces[i].longitude),
    map: map,
	title: myPlaces[i].name
});
	//Добавим попап, который будет появляться при клике на маркер
    var infowindow = new google.maps.InfoWindow({
        content: '<div class="title_popap_marker">' + myPlaces[i].name + '</div><div class="description_popap_marker">' + myPlaces[i].description + '</div>'
    });
    //привязываем попап к маркеру на карте
    makeInfoWindowEvent(map, infowindow, marker);	
  	
markers.push(marker);

    }	
markerClusterer = new MarkerClusterer(map, markers, { 
	maxZoom: 14,
	gridSize: 50,
	styles: null 
});    	
	

}
function makeInfoWindowEvent(map, infowindow, marker) {
    google.maps.event.addListener(marker, 'click', function() {
        infowindow.open(map, marker);
    });
}
function Place(name, latitude, longitude, description){
    this.name = name;
    this.latitude = latitude;  
    this.longitude = longitude;  
    this.description = description; 
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
</footer>
</body></html>