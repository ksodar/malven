<div class="categorywall-container categorywall-<?php echo $module; ?>">	
<?php if(!empty($heading_title[$lang_id]['title_name'])) { ?>
<div class="title-module"><span><?php echo $heading_title[$lang_id]['title_name'];?></span></div>
<?php } ?>
<script src="catalog/view/theme/newstore/js/jquery.scrollpanel-0.5.0.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/newstore/js/jquery.mousewheel-3.1.3.js" type="text/javascript"></script>
	<div class="wall-category-box">
		<?php foreach ($categories as $category) { ?>
			<div class="box-item col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="item-category <?php if ($category['subcategories']) { ?> parent_category <?php } ?>">
					<a href="<?php echo $category['href']; ?>" >
						<div class="wall-cat-image"><img src="<?php echo $category['image']; ?>" alt="<?php echo $category['name']; ?>"></div>
						<div class="wall-cat-name"><div class="display-table"><div class="display-table-cell"><?php echo $category['name']; ?></div></div></div>
					</a>
						<?php if ($category['subcategories']) { ?>
						<div class="item-sub-category">
							<?php foreach ($category['subcategories'] as $subcategory) { ?>
								<div class="subcategory-name"><a href="<?php echo $subcategory['href']; ?>"><?php echo $subcategory['name']; ?></a></div>
							<?php } ?>
						</div>		
						<?php } ?>
				</div>		  
			</div>
      <?php } ?>
	   <?php foreach ($manufacturers as $manufacturer) { ?>
			<div class="box-item col-xs-12 col-sm-6 col-md-4 col-lg-3">
				<div class="item-category">
					<a href="<?php echo $manufacturer['href']; ?>" >
						<div class="wall-cat-image"><img src="<?php echo $manufacturer['thumb']; ?>" alt="<?php echo $manufacturer['name']; ?>"></div>
						<div class="wall-cat-name"><div class="display-table"><div class="display-table-cell"><?php echo $manufacturer['name']; ?></div></div></div>
					</a>
				</div>
			</div>
      <?php } ?>
    </div>
</div>	
<script type="text/javascript">
$('.item-sub-category').scrollpanel({
    prefix: 'nswc-'
});
$(document).ready(function() {
	if ($(".categorywall-<?php echo $module; ?>").parents("#column-left, #column-right").length) {
		$('.categorywall-<?php echo $module; ?> .box-item').removeClass("col-sm-6 col-md-4 col-lg-3");
		$('.categorywall-<?php echo $module; ?> .box-item').addClass("col-sm-12 col-md-12 col-lg-12");
	}
});
</script>