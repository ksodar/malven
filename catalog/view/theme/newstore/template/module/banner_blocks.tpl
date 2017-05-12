<?php $gen_carousel_module = rand(10000, 50000);?>
<div class="row banner-blocks-container banner-block-<?php echo $gen_carousel_module;?>">
	<?php foreach ($blocks as $block) { ?>
	<div class="col-sm-12 col-sm-4">
		<div class="banner-item <?php if(($block['popup']=='1') && ($block['link'][$language_id]!='') || ($block['popup']=='0') && ($block['link'][$language_id]!='')){ ?>is_a_link<?php } ?>" <?php if(($block['popup']=='1') && ($block['link'][$language_id]!='')) { ?> onclick="banner_link_open('<?php echo $block['link'][$language_id]?>')"<?php } elseif(($block['popup']=='0') && ($block['link'][$language_id]!='')) { ?> onclick="location='<?php echo $block['link'][$language_id]; ?>'"<?php } ?>>
				<div class="banner-image">
					<img src="<?php echo $block['image']; ?>" alt="<?php echo $block['title'][$language_id]; ?>"/>
				</div>
				<div class="banner-info">
					<div class="banner-title"><?php echo $block['title'][$language_id]; ?></div>
					<div class="banner-description"><?php echo $block['description'][$language_id]; ?></div>
				</div>			
		</div>
	</div>
	<?php } ?>
<script>
$(document).ready(function() {
	banner_cols = $('#column-right, #column-left,.position-no-owl').length;
	if ($(".banner-block-<?php echo $gen_carousel_module;?>").parents("#column-left, #column-right, .position-no-owl").length) {
		$('.banner-block-<?php echo $gen_carousel_module;?> > div').addClass("col-md-12");
	} else {
		$('.banner-block-<?php echo $gen_carousel_module;?> > div').addClass("col-md-4");
	}
});
</script>
</div>

