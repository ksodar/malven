<div id="popup-editor-product">
	<div class="title-editor"><?php echo $entry_activation;?></div>
		
		<form class="form-horizontal" enctype="multipart/form-data" id="activation_edit" method="post">
			<div class="row">
				<div class="col-sm-6">
					<div class="panel panel-default">
						<div class="panel-heading">
							<?php echo $add_activation_key;?>
						</div>
						<div class="panel-body">
							<input id="license_key" name="license_key" class="form-control" type="text"/>
						</div>
						<div class="panel-footer text-center">
							<a class="btn-editor btn-save-editor" href="javascript:void(0);" onclick="activation_edit();" ><?php echo $activated_btn;?></a>
						</div>
					</div>
				</div>
			
			
				<div class="col-sm-6">
					<div class="panel panel-default">
						<div class="panel-heading">
							<?php echo $enter_deactivation_key;?>
						</div>
						<div class="panel-body">
							<input id="license_key_deactivation" name="license_key_deactivation" class="form-control" type="text"/>
						</div>
						<div class="panel-footer text-center">
							<a class="btn-editor btn-cancel-editor" href="javascript:void(0);" onclick="deactivation_edit();" ><?php echo $btn_deactivation;?></a>						
						</div>
					</div>
				</div>
			</div>
		</form>
<script type="text/javascript">
function activation_edit() {
	$.ajax({
		url: 'index.php?route=module/editproduct/edit_prod_license/edit_prod_key_form/validateActivation&token=<?php echo $token;?>',
		type: 'post',
		dataType: 'json',
		data: $('#activation_edit input#license_key'),
		success: function(json) {
			$('#popup-editor-product .alert').remove();
			if (json['warning']) {
				$('.title-editor').after('<div class="alert alert-danger"><i class="fa fa-check-circle"></i> ' + json['warning'] + '</div>');	
			}
			if (json['success']) {
				$('.title-editor').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');		
				setTimeout(function(){
					$('#popup-editor-product .alert').remove();	
					location.reload();					
				}, 1000)
			}
		}
	});
}
</script>		
<script type="text/javascript">
function deactivation_edit() {
	var license_key_deactivation = $('#license_key_deactivation').val();
	var success = 'false';
	$.ajax({
			type:'get',
			dataType:'json',
			data:'license_key_deactivation=' + license_key_deactivation,
			url:'index.php?route=module/editproduct/edit_prod_license/edit_prod_key_form/deactivation&token=<?php echo $token; ?>',			
			success: function(json){
			$('#popup-editor-product .alert').remove();
				if (json['error']) {
					$('.title-editor').after('<div class="alert alert-danger"><i class="fa fa-check-circle"></i> ' + json['error'] + '</div>');
				}
				if (json['success']) {
					$('.title-editor').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');		
					setTimeout(function(){
						$('#popup-editor-product .alert').remove();									
					}, 1000)
				}	
			}
	});					
}
</script>
</div>