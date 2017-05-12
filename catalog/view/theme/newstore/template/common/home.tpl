<?php echo $header; ?>
<span itemscope itemtype="http://schema.org/Organization">
<meta itemprop="name" content="<?php echo $name; ?>">
<meta itemprop="logo" content="<?php echo $logo; ?>">
<meta itemprop="url" content="<?php echo $url; ?>">
<span itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
<meta itemprop="addressLocality" content="<?php echo $addresslocality; ?>">
<meta itemprop="streetAddress" content="<?php echo $streetaddress; ?>">
<meta itemprop="addressCountry" content="<?php echo $addresscountry; ?>">
</span>
<meta itemprop="telephone" content="<?php echo $telephone; ?>">
<meta itemprop="email" content="<?php echo $email; ?>">
<meta itemprop="openingHours" content="<?php echo $open; ?>">
</span>
<div class="container">
	<div class="row">
	<?php if(($general_menu_on_off =='1') && ($main_menu =='1')) { ?>
		<div class="col-sm-4 col-md-3 position-no-owl hidden-xs hidden-sm">
			<div id="menu-header-open"></div>
			<?php echo $newstore_pos0; ?>
		</div>
		<script type="text/javascript">
		if(window.matchMedia("(min-width: 992px)").matches){
			$('header #menu-list').addClass("nsmenu-block");
			$(function(){$('#menu-header-open').css({'min-height': $('header #menu-list').outerHeight() - 20});});
		}
		$(window).resize(function() {
			if ($(window).width() > 992) {
				$('header #menu-list').addClass("nsmenu-block");
				$(function(){$('#menu-header-open').css({'min-height': $('header #menu-list').outerHeight() - 20});});
			} else {
				$('header #menu-list').removeClass("nsmenu-block");
			}
		});
		</script>
		<div class="col-md-9"><?php echo $content_top; ?></div>
		<?php if ($newstore_pos17) { ?>
			<div class="col-md-3">
				<?php echo $newstore_pos17;?>	
			</div>
		<?php } ?>
		<?php if ($newstore_pos18) { ?>
			<div class="col-md-3">
				<?php echo $newstore_pos18;?>					
			</div>
		<?php } ?>
		<?php if ($newstore_pos19) { ?>
			<div class="col-md-3">			
				<?php echo $newstore_pos19;?>				
			</div>
		<?php } ?>
		<?php if ($newstore_pos20) { ?>
			<div class="col-md-6">
				<?php echo $newstore_pos20;?>			
			</div>
		<?php } ?>
		<?php if ($newstore_pos21) { ?>
			<div class="col-md-3">			
				<?php echo $newstore_pos21;?>		
			</div>
		<?php } ?>
	<?php } else { ?>
		<div class="col-md-12"><?php echo $content_top; ?></div>
		<?php if ($newstore_pos17) { ?>
			<div class="col-md-4">
				<?php echo $newstore_pos17;?>		
			</div>
		<?php } ?>
		<?php if ($newstore_pos18) { ?>
			<div class="col-md-4">
				<?php echo $newstore_pos18;?>					
			</div>
		<?php } ?>
		<?php if ($newstore_pos19) { ?>
			<div class="col-md-4">			
				<?php echo $newstore_pos19;?>	
			</div>
		<?php } ?>
		<?php if ($newstore_pos20) { ?>
			<div class="col-md-8">
				<?php echo $newstore_pos20;?>				
			</div>
		<?php } ?>
		<?php if ($newstore_pos21) { ?>
			<div class="col-md-4">			
				<?php echo $newstore_pos21;?>	
			</div>
		<?php } ?>
	<?php } ?>
	</div>
	<div class="row">
	<?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-4 col-md-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-8 col-md-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div class="<?php echo $class; ?>">
		<?php echo $content_bottom; ?>
	</div>
    <?php echo $column_right; ?>
	</div>
</div>
<?php echo $newstore_pos1; ?>
<div class="container">
	<?php if ($newstore_pos2 || $newstore_pos3) { ?>
		<div class="row">
			<?php echo $newstore_pos2; ?>
			<?php echo $newstore_pos3; ?>
		</div>
	<?php } ?>
	<?php if ($newstore_pos4 || $newstore_pos5) { ?>
		<div class="row">
			<?php echo $newstore_pos4; ?>
			<?php echo $newstore_pos5; ?>
		</div>
	<?php } ?>
	<?php if ($newstore_pos6 || $newstore_pos7) { ?>
		<div class="row">
			<?php echo $newstore_pos6; ?>
			<?php echo $newstore_pos7; ?>
		</div>
	<?php } ?>
	<?php if ($newstore_pos8 || $newstore_pos9 || $newstore_pos10) { ?>
	<div class="row">
	<?php if ($newstore_pos8 && $newstore_pos9) { ?>
    <?php $class10 = 'col-sm-4 col-md-6'; ?>
    <?php } elseif ($newstore_pos8 || $newstore_pos9) { ?>
    <?php $class10 = 'col-sm-8 col-md-9'; ?>
    <?php } else { ?>
    <?php $class10 = 'col-sm-12'; ?>
    <?php } ?>
		<?php if ($newstore_pos8) { ?>
			<div class="col-sm-4 col-md-3 position-no-owl">
				<?php echo $newstore_pos8; ?>
			</div>
		<?php } ?>
		<?php if ($newstore_pos9) { ?>
			<div class="col-sm-4 col-md-3 position-no-owl">
				<?php echo $newstore_pos9; ?>
			</div>
		<?php } ?>
		<?php if ($newstore_pos10) { ?>
			<div class="<?php echo $class10; ?> position-no-owl">
				<?php echo $newstore_pos10; ?>
			</div>
		<?php } ?>
	</div>
	<?php } ?>
	<?php if ($newstore_pos11 || $newstore_pos12 || $newstore_pos13 || $newstore_pos14) { ?>
		<div class="row">
			<?php echo $newstore_pos11; ?>
			<?php echo $newstore_pos12; ?>
			<?php echo $newstore_pos13; ?>
			<?php echo $newstore_pos14; ?>
		</div>
	<?php } ?>
	<?php echo $newstore_pos15; ?>
</div>
	<?php echo $newstore_pos16; ?>
<?php echo $footer; ?>