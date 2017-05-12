<div id="banner<?php echo $module; ?>" class="banner-ns owl-carousel carousel-container">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a class="image-hover-effect" href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
var count_img = $("#banner<?php echo $module; ?> div.item").length;
if(count_img > 1) {
$('#banner<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3500,
	singleItem: true,
	navigation: false,
	pagination: true,
	transitionStyle: 'fade'
});
} else {
	$("#banner<?php echo $module; ?>").removeClass('owl-carousel');
}
--></script>
