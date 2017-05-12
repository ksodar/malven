<div class="content-carousel-<?php echo $module; ?> container-module carousel-mod">
<div class="title-module"><span><?php echo $heading_title;?></span></div>
<div id="carousel<?php echo $module; ?>" class="owl-carousel">
  <?php foreach ($banners as $banner) { ?>
  <div class="item text-center">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img data-src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive img-center lazyOwl" /></a>
    <?php } else { ?>
    <img data-src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive img-center lazyOwl" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
</div>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 7000,
	lazyLoad: true,
	navigation: true,
	navigationText: ['<div class="btn btn-carousel-module next-prod"><i class="fa fa-angle-left arrow"></i></div>', '<div class="btn btn-carousel-module prev-prod"><i class="fa fa-angle-right arrow"></i></div>'],
	pagination: false
});
--></script>