<footer>
<div class="footer-top">
<div class="container">
	<?php if($config_on_off_footer_ribbon =='1') { ?>
		<div class="footer-ribbon">
			<span><?php echo $config_footer_ribbon[$lang_id]['config_footer_ribbon']?></span>
		</div>
	<?php } ?>

	<div class="row">   
		<div class="newsletter">   
			<div class="col-xs-12 col-md-3 text-xs-center-newsletter text-newsletter text-md-right">
				<span><?php echo $text_subcribe;?></span>		
			</div>
			<div class="col-xs-12 col-md-6 text-xs-center-newsletter">	
				<input type="text" class="form-control" id="input-newsletter" placeholder="<?php echo $text_placeholder_subcribe; ?>" value="" >		
				<span id="error-msg"></span>
			</div>
			<div class="col-xs-12 col-md-3 text-xs-center-newsletter text-md-left">
				<button type="button" id="subcribe" class="btn btn-newsletter" value="<?php echo $text_btn_subcribe; ?>"><i class="fa fa-envelope fa-fw"></i><?php echo $text_btn_subcribe; ?></button>
			</div>			
		</div>
	</div>
				
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
    <div class="row" style="font-size: 1.2em">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h3><?php echo $text_information; ?></h3>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
		<h3><?php echo $text_service; ?></h3>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>	  
<!--
	  <h3><?php echo $text_extra; ?></h3>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
-->		
		<?php if($config_social_footer) { ?>
		<h3><?php echo $text_social_link; ?></h3>
        <ul class="list-unstyled">			
				<li>
				<?php foreach($config_social_array_footer as $config_social_footer) { ?>
					<a target="_blank" href="<?php if($config_social_footer['social_link_footer']) { ?><?php echo $config_social_footer['social_link_footer'];?><?php } else { ?> javascript:void(0);<?php } ?>"><img src="<?php echo $config_social_footer['icon_footer_social']; ?>" alt="" title=""></a>
				<?php } ?>
				</li>			
        </ul>
		<?php } ?>
      </div>	  
      <div class="col-sm-3">
        <h3><?php echo $text_account; ?></h3>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
		<?php if($config_payments_footer) { ?>
		<h3><?php echo $text_payments_footer; ?></h3>
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
		<p><?php echo $powered_new; ?></p>
	   </div>
    </div>
  </div>
<div class="container">
	<div class="row">
		<?php echo html_entity_decode($config_ns_footer_counters, ENT_QUOTES, 'UTF-8'); ?>
	</div>
</div>
</div>
<!-- Yandex.Metrika counter -->
<script type="text/javascript">
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter41385769 = new Ya.Metrika({
                    id:41385769,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    webvisor:true,
                    ecommerce:"dataLayer"
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>
<!-- /Yandex.Metrika counter -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-88474524-1', 'auto');
  ga('send', 'pageview');

</script>
<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '773961262755476'); // Insert your pixel ID here.
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=773961262755476&ev=PageView&noscript=1"
/></noscript>
<!-- DO NOT MODIFY -->
<!-- End Facebook Pixel Code -->
<script type="text/javascript">(window.Image ? (new Image()) : document.createElement('img')).src = location.protocol + '//vk.com/rtrg?r=AdV3uMieJeI0QsutrJ9j9R7tyaxiV9I4FcxOZhDr6N5ERa7kMtkF0vIXoOx8*Szr0Wia/9L4uuaPUZxzPmtEEL5pZiE/zugv8gClph6v1X2CuC0FhEkQQgG2TrWHKstXABpxfXhkcL7oJN2zSqsz4gNAAvnXwUQiV8poiL7XwiI-&pixel_id=1000062988';</script>
</footer>

                <script type="text/javascript">
                    
                     function validateEmail($email) {
                        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                        return emailReg.test( $email );
                      }

                    $(document).ready(function(){
                        $('#subcribe').click(function(){
                            var email = $('#input-newsletter').val();
                            
                            if(email == ''){
                                var error = '<?php echo $text_empty_email;?>';
                            }
                            
                            if( !validateEmail(email)) {
                                var error = '<?php echo $text_validate_email;?>';
                            }
                            
                            if(error != null){
                                $('#error-msg').html('');
                                $('#error-msg').append('<b style=\"color:red\">' + error + '</b>');
                            } else {
                              
                                var dataString = 'email='+ email;
                                $.ajax({
                                    url: 'index.php?route=common/footer/addToNewsletter',
                                    type: 'post',
                                    data: dataString,
									dataType: 'json',
                                    success: function(json) {
										if (json['warning']) {
											$('#error-msg').empty('');
											$('#input-newsletter').val('');	
											$('#error-msg').append('<b style=\"color:green\">' + json['warning'] + '</b>');
										}
										if (json['success']) {
											$('#error-msg').empty('');
											$('#input-newsletter').val('');											
											$('#error-msg').append('<b style=\"color:green\">' + json['success'] + '</b>');
										}
										
                                    }
                                    
                                });
                            }
                            
                        })
                    });
                </script>
                

<?php if(isset($callbackpro['status_animate_btn_4'])){ ?>
<div onclick="get_modal_callbacking();" id="animate_btn_4" class="animate_btn_4">
	<div class="ab4-circlephone"></div>
	<div class="ab4-circle-fill"></div>
	<div class="ab4-img-circle"><div class="ab4-img-circleblock"></div></div>
</div>
<?php } ?>
<?php if(isset($callbackpro['status_animate_btn_3'])){ ?>
<div onclick="get_modal_callbacking();" id="animate_btn_3" class="animate_btn_3">
    <div class="ab3-track"></div>
    <div class="ab3-back-circle"></div>
    <div class="ab3-circle">
        <div class="ab3-handset"></div>
    </div>
</div>
<?php } ?>
<?php if(isset($callbackpro['status_animate_btn_2'])){ ?>
<div onclick="get_modal_callbacking();" id="tcb-call">
	<div class="tcb-phone">
		<div class="tcb-phone-img"></div>
	</div>
	<div class="tcb-layout1"></div>
	<div class="tcb-layout2"></div>
	<div class="tcb-layout3"></div>
</div>
<?php } ?>
<?php if(isset($callbackpro['status_animate_btn_1'])){ ?>
<div onclick="get_modal_callbacking();" id="tcb_call_1">
	<div class="tcb_phone_1">
		<div class="tcb_phone_img_1"></div>
	</div>
	<div class="tcb_layout_1"></div>
	<div class="tcb_layout_2"></div>
</div>
<?php } ?>
<?php if(isset($callbackpro['config_right_callback_position_fixed'])){ ?>
<div onclick="get_modal_callbacking();" id="callback"  class="callback-view"><div><img src="image/data/callback.png"/></div></div>
<?php } ?>
<script type="text/javascript">	
function get_modal_callbacking() {		
		$.magnificPopup.open({
            tLoading: loading_masked_img,
            items: {
              src: 'index.php?route=module/callback',
              type: 'ajax'
            },
          });
	}
</script>
			
</body></html>