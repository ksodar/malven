<div class="container-module">
<?php $gen_reviews = rand(10000, 50000);?>
<?php if ($module_header) { ?>
<div class="title-module"><span><?php echo $module_header; ?></span></div>
<?php } ?>	
	<div class="product-slider">
		<div class="container-modules reviews carousel_reviews<?php echo $gen_reviews;?> owl-carousel">
			<?php foreach ($reviews as $review) { ?>
			<div class="item">
				<div class="product-thumb transition">
					<div class="image">
						<a href="<?php echo $review['prod_href']; ?>"><img src="<?php echo $review['prod_thumb']; ?>" alt="<?php echo $review['prod_name']; ?>" title="<?php echo $review['prod_name']; ?>" class="img-responsive" /></a>
					</div>
					<div class="caption">
					 <div class="product-name"><h4><a href="<?php echo $review['prod_href']; ?>"><?php echo $review['prod_name']; ?></a></h4></div>
						<div class="product-description"><?php echo $review['description']; ?></div>
						<div class="rating">
							<span class="rating-box">
								<?php for ($i = 1; $i <= 5; $i++) { ?>
									<?php if ($review['rating'] < $i) { ?>
									<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<?php } else { ?>
									<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
									<?php } ?>
								<?php } ?>
							</span>
						</div>
						<div class="reviews-sign row">
							<div class="reviews-author col-xs-6 text-left"><i class="fa fa-user" aria-hidden="true"></i>  <?php echo $review['author']; ?></div>
							<div class="reviews-date col-xs-6 text-right"><?php echo $review['date_added']; ?></div>
						</div>
				   <?php if ($show_all_button) { ?>
					<div class="button-more">
						<button class="btn btn-more" type="button" onclick="window.location.href='<?php echo $link_all_reviews; ?>'"><?php echo $text_all_reviews ?></button>
					</div>
				<?php } ?>
					</div>
				</div>
			</div>
			<?php } ?>	
		</div>
	</div>
<script type="text/javascript">
$('.carousel_reviews<?php echo $gen_reviews;?>').owlCarousel({
	responsiveBaseWidth: ".carousel_reviews<?php echo $gen_reviews;?>",
	itemsCustom: [[0, 1], [500, 2], [750, 3], [1000,4]],
	slideSpeed: 200,
	paginationSpeed: 300,
	navigation: true,
	stopOnHover: true,		
	mouseDrag: false,
	pagination: false,
	autoPlay: false,
	navigationText: ['<div class="btn btn-carousel-module next-prod"><i class="fa fa-angle-left arrow"></i></div>', '<div class="btn btn-carousel-module prev-prod"><i class="fa fa-angle-right arrow"></i></div>'],	
});
</script>
</div>


