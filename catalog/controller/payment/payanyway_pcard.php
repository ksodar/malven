<?php
class ControllerPaymentPayanywayPCard extends Controller {
	public function index() {
    	$data['button_confirm'] = $this->language->get('button_confirm');

		$data['continue'] = $this->url->link('checkout/success');

		$this->load->model('checkout/order');
		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

        $mnt_id = $this->config->get('payanyway_mnt_id');
        $order_id = $this->session->data['order_id'];
        $currency = $this->config->get('payanyway_mnt_currency_code');
        $mnt_test_mode = $this->config->get('payanyway_mnt_test_mode');
        $mnt_dataintegrity_code = $this->config->get('payanyway_mnt_dataintegrity_code');
		
        $amount = $this->currency->format($order_info['total'], $currency, '', false);
		$amount = number_format($amount, 2, '.', '');
        $signature = md5("{$mnt_id}{$order_id}{$amount}{$currency}{$mnt_test_mode}{$mnt_dataintegrity_code}");

		$data['action'] = "https://{$this->config->get('payanyway_mnt_server')}/assistant.htm";
		$data['mnt_id'] = $mnt_id;
		$data['order_id'] = $order_id;
		$data['currency'] = $currency;
		$data['amount'] = $amount;
		$data['mnt_signature'] = $signature;
		$data['mnt_test_mode'] = $mnt_test_mode;
		$data['paymentSystemUnitId'] = 'card';
		$data['mnt_success_url'] = $this->url->link('payment/payanyway/success');
		$data['mnt_fail_url'] = $this->url->link('checkout/checkout', '', 'SSL');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/payanyway_pcard.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/payment/payanyway_pcard.tpl', $data);
		} else {
			return $this->load->view('default/template/payment/payanyway_pcard.tpl', $data);
		}
	}
	
}
?>