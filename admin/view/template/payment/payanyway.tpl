<?php echo $header; ?><?php echo $column_left; ?>

<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-payanyway" data-toggle="tooltip" title="<?php echo $button_save; ?>"
                        class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>"
                   class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>

    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
            </div>
            <div class="panel-body">
                <form id="form-payanyway"action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form"
                      class="form-horizontal">


                    <div class="form-group required">
                        <label class="col-sm-2 control-label"
                               for="input-mnt-server"><?php echo $entry_mnt_server; ?></label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="payanyway[payanyway_mnt_server]"
                                   value="<?php echo $payanyway_mnt_server; ?>"
                                   placeholder="<?php echo $entry_mnt_server; ?>" id="input-mnt-server" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="input-order-status"><?php echo $entry_order_status; ?></label>

                        <div class="col-sm-10">
                            <select class="form-control" name="payanyway[payanyway_order_status_id]" id="input-order-status">
                                <?php foreach ($order_statuses as $order_status) { ?>
                                <?php if ($order_status['order_status_id'] == $payanyway_order_status_id) { ?>
                                <option value="<?php echo $order_status['order_status_id']; ?>"
                                        selected="selected"><?php echo $order_status['name']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="input-payed-order-status"><?php echo $entry_payed_order_status; ?></label>

                        <div class="col-sm-10">
                            <select class="form-control" name="payanyway[payanyway_payed_order_status_id]" id="input-payed-order-status">
                                <?php foreach ($order_statuses as $order_status) { ?>
                                <?php if ($order_status['order_status_id'] == $payanyway_payed_order_status_id) { ?>
                                <option value="<?php echo $order_status['order_status_id']; ?>"
                                        selected="selected"><?php echo $order_status['name']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-mnt-id"><?php echo $entry_mnt_id; ?></label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="payanyway[payanyway_mnt_id]"
                                   value="<?php echo $payanyway_mnt_id; ?>" placeholder="<?php echo $entry_mnt_id; ?>"
                                   id="input-mnt-id" />
                        </div>
                    </div>

                    <div class="form-group required">
                        <label class="col-sm-2 control-label"
                               for="input-dataintegrity-code"><?php echo $entry_mnt_dataintegrity_code; ?></label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="payanyway[payanyway_mnt_dataintegrity_code]"
                                   value="<?php echo $payanyway_mnt_dataintegrity_code; ?>"
                                   placeholder="<?php echo $entry_mnt_dataintegrity_code; ?>"
                                   id="input-dataintegrity-code"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="input-currency-code"><?php echo $entry_mnt_currency_code; ?></label>

                        <div class="col-sm-10">
                            <select class="form-control" name="payanyway[payanyway_mnt_currency_code]" id="input-currency-code">
                                <?php foreach ($currencies as $currecy) { ?>
                                <?php if ($currecy['code'] == $payanyway_mnt_currency_code) { ?>
                                <option value="<?php echo $currecy['code']; ?>"
                                        selected="selected"><?php echo $currecy['code']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $currecy['code']; ?>"><?php echo $currecy['code']; ?></option>
                                <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="input-test-mode"><?php echo $entry_mnt_test_mode; ?></label>

                        <div class="col-sm-10">
                            <select class="form-control" name="payanyway[payanyway_mnt_test_mode]" id="input-test-mode">
                                <?php if ($payanyway_mnt_test_mode) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>

                        <div class="col-sm-10">
                            <select class="form-control" name="payanyway[payanyway_status]" id="input-status" >
                                <?php if ($payanyway_status) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="input-sort-order"><?php echo $entry_sort_order; ?></label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="payanyway[payanyway_sort_order]"
                                   value="<?php echo $payanyway_sort_order; ?>"
                                   placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="input-payanyway-username"><?php echo $entry_username; ?></label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="moneta[moneta_username]"
                                   value="<?php echo $moneta_username; ?>"
                                   placeholder="<?php echo $entry_username; ?>" id="input-payanyway-username"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="input-payanyway-password"><?php echo $entry_password; ?></label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="moneta[moneta_password]"
                                   value="<?php echo $moneta_password; ?>"
                                   placeholder="<?php echo $entry_password; ?>" id="input-payanyway-password"/>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>

<?php echo $footer; ?> 