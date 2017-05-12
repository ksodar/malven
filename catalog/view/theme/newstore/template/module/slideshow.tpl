<div id="slideshow<?php echo $module; ?>" class="owl-carousel carousel-container" style="opacity: 1;">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img data-src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive lazyOwl" /></a>
    <?php } else { ?>
    <img data-src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive lazyOwl" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 7000,
	lazyLoad: true,
	singleItem: true,
	navigation: true,
	navigationText: ['<span class="slideshow-btn-prev"></span>', '<span class="slideshow-btn-next"></span>'],
	pagination: true,
	transitionStyle: 'fadeUp'
});
--></script>