<?php
class ControllerModuleAgreePopup extends Controller {
	public function index() {
		$data['lang_id'] = $this->config->get('config_language_id');
		$data['agreedata'] = $this->config->get('agreedata');	
		if (VERSION < 2.2) {	
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/agree_popup.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/module/agree_popup.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/module/agree_popup.tpl', $data));
			}
		} else {
			$this->response->setOutput($this->load->view('module/agree_popup', $data));			
		}
	}
	public function saveAgreeCookie() {
		$agreedata = $this->config->get('agreedata');
		$cookie_day = $agreedata['cookie_day'] ? $agreedata['cookie_day'] : '1';
		if (isset($this->request->get['saveAgreeCookie'])) {
			setcookie('PopupAgree', 1, time() + (60*60*24*$cookie_day), "/");
		}
	}
}