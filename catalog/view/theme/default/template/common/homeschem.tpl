<?php if ($ns_new_modules_1) { ?>
<div class="container-fluid">
	<div class="row" style="padding:0px 5px;">	
		<?php foreach ($ns_new_modules_1 as $ns_new_module) { ?>
		<?php echo $ns_new_module['module']; ?>
		<?php } ?>	
	</div>
</div>
<?php } ?>
<div class="container">
<?php if ($ns_new_modules_2 || $ns_new_modules_3) { ?>
	<div class="row">
    <?php if ($ns_new_modules_2) { ?>
    <?php $class3 = 'col-sm-6 col-md-6'; ?>
    <?php } else { ?>
    <?php $class3 = 'col-sm-12'; ?>
    <?php } ?>
		<?php if ($ns_new_modules_2) { ?>
		<div class="<?php echo $class3; ?>">
			<?php foreach ($ns_new_modules_2 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
		<?php if ($ns_new_modules_3) { ?>
		<div class="col-sm-6 col-md-6">
			<?php foreach ($ns_new_modules_3 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
	<?php } ?>
	<?php if ($ns_new_modules_4 || $ns_new_modules_5) { ?>
	<div class="row">
    <?php if ($ns_new_modules_4) { ?>
    <?php $class5 = 'col-sm-4 col-md-3'; ?>
    <?php } else { ?>
    <?php $class5 = 'col-sm-12'; ?>
    <?php } ?>
		<?php if ($ns_new_modules_4) { ?>
		<div class="<?php echo $class5;?>">
			<?php foreach ($ns_new_modules_4 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
		<?php if ($ns_new_modules_5) { ?>
		<div class="col-sm-8 col-md-9">
			<?php foreach ($ns_new_modules_5 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
	<?php } ?>
	<?php if ($ns_new_modules_6 || $ns_new_modules_7) { ?>
	<div class="row">
    <?php if ($ns_new_modules_6) { ?>
    <?php $class7 = 'col-sm-8 col-md-9'; ?>
    <?php } else { ?>
    <?php $class7 = 'col-sm-12'; ?>
    <?php } ?>
		<?php if ($ns_new_modules_6) { ?>
		<div class="<?php echo $class7; ?>">
			<?php foreach ($ns_new_modules_6 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
		<?php if ($ns_new_modules_7) { ?>
		<div class="col-sm-4 col-md-3">
			<?php foreach ($ns_new_modules_7 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
	<?php } ?>
	<?php if ($ns_new_modules_8 || $ns_new_modules_9 || $ns_new_modules_10) { ?>
	<div class="row">
	<?php if ($ns_new_modules_8 && $ns_new_modules_9) { ?>
    <?php $class10 = 'col-sm-4 col-md-6'; ?>
    <?php } elseif ($ns_new_modules_8 || $ns_new_modules_9) { ?>
    <?php $class10 = 'col-sm-8 col-md-9'; ?>
    <?php } else { ?>
    <?php $class10 = 'col-sm-12'; ?>
    <?php } ?>
		<?php if ($ns_new_modules_8) { ?>
		<div class="col-sm-4 col-md-3 position-no-owl">
			<?php foreach ($ns_new_modules_8 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
		<?php if ($ns_new_modules_9) { ?>
		<div class="col-sm-4 col-md-3 position-no-owl">
			<?php foreach ($ns_new_modules_9 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
		<?php if ($ns_new_modules_10) { ?>
		<div class="<?php echo $class10; ?> position-no-owl">
			<?php foreach ($ns_new_modules_10 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
	<?php } ?>
	<?php if ($ns_new_modules_11 || $ns_new_modules_12 || $ns_new_modules_13 || $ns_new_modules_14) { ?>
	<div class="row">
		<?php if ($ns_new_modules_11) { ?>
		<div class="col-sm-6 col-md-3 position-no-owl">
			<?php foreach ($ns_new_modules_11 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
		<?php if ($ns_new_modules_12) { ?>
		<div class="col-sm-6 col-md-3 position-no-owl">
			<?php foreach ($ns_new_modules_12 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
		<?php if ($ns_new_modules_13) { ?>
		<div class="col-sm-6 col-md-3 position-no-owl">
			<?php foreach ($ns_new_modules_13 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
		<?php if ($ns_new_modules_14) { ?>
		<div class="col-sm-6 col-md-3 position-no-owl">
			<?php foreach ($ns_new_modules_14 as $ns_new_module) { ?>
			<?php echo $ns_new_module['module']; ?>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
	<?php } ?>
</div>
<div class="container">
<?php if ($ns_new_modules_15) { ?>
	<div class="row">		
		<?php foreach ($ns_new_modules_15 as $ns_new_module) { ?>
		<div class="col-sm-12">	
			<?php echo $ns_new_module['module']; ?>
		</div>	
		<?php } ?>			
	</div>
<?php } ?>
</div>
<?php if ($ns_new_modules_16) { ?>
<div class="container-fluid">
	<div class="row">
		<?php foreach ($ns_new_modules_16 as $ns_new_module) { ?>
			<div class="col-sm-12">
				<?php echo $ns_new_module['module']; ?>
			</div>
		<?php } ?>		
	</div>
</div>
<?php } ?>