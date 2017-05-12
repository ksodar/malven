<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$data['general_menu_on_off'] = $this->config->get('config_menu_always_open_on_the_left');
		$data['main_menu'] = $this->config->get('config_main_menu_selection');
		$data['newstore_pos0'] = $this->load->controller('common/homesheme/newstore_pos0');
		$data['newstore_pos1'] = $this->load->controller('common/homesheme/newstore_pos1');
		$data['newstore_pos2'] = $this->load->controller('common/homesheme/newstore_pos2');
		$data['newstore_pos3'] = $this->load->controller('common/homesheme/newstore_pos3');
		$data['newstore_pos4'] = $this->load->controller('common/homesheme/newstore_pos4');
		$data['newstore_pos5'] = $this->load->controller('common/homesheme/newstore_pos5');
		$data['newstore_pos6'] = $this->load->controller('common/homesheme/newstore_pos6');
		$data['newstore_pos7'] = $this->load->controller('common/homesheme/newstore_pos7');
		$data['newstore_pos8'] = $this->load->controller('common/homesheme/newstore_pos8');
		$data['newstore_pos9'] = $this->load->controller('common/homesheme/newstore_pos9');
		$data['newstore_pos10'] = $this->load->controller('common/homesheme/newstore_pos10');
		$data['newstore_pos11'] = $this->load->controller('common/homesheme/newstore_pos11');
		$data['newstore_pos12'] = $this->load->controller('common/homesheme/newstore_pos12');
		$data['newstore_pos13'] = $this->load->controller('common/homesheme/newstore_pos13');
		$data['newstore_pos14'] = $this->load->controller('common/homesheme/newstore_pos14');		
		$data['newstore_pos15'] = $this->load->controller('common/homesheme/newstore_pos15');
		$data['newstore_pos16'] = $this->load->controller('common/homesheme/newstore_pos16');
		$data['newstore_pos17'] = $this->load->controller('common/homesheme/newstore_pos17');
		$data['newstore_pos18'] = $this->load->controller('common/homesheme/newstore_pos18');
		$data['newstore_pos19'] = $this->load->controller('common/homesheme/newstore_pos19');
		$data['newstore_pos20'] = $this->load->controller('common/homesheme/newstore_pos20');
		$data['newstore_pos21'] = $this->load->controller('common/homesheme/newstore_pos21');
		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}
		$data['name'] = $this->config->get('config_name');
		$data['logo'] = $this->config->get('config_image');
		$data['url'] = $server;				
		$this->load->model('localisation/country');
		$country = $this->model_localisation_country->getCountry($this->config->get('config_country_id'));
		$this->load->model('localisation/zone');
		$zone = $this->model_localisation_zone->getZone($this->config->get('config_zone_id'));
		if(!empty($zone)){
			$data['addresslocality'] = $zone['name'];
		} else {
			$data['addresslocality'] = '';
		}
		$data['streetaddress'] = nl2br($this->config->get('config_address'));
		if(!empty($country)){
			$data['addresscountry'] = $country['name'];
		} else {
			$data['addresscountry'] = '';
		}
		$data['telephone'] = $this->config->get('config_telephone');
		$data['email'] = $this->config->get('config_email');
		$data['open'] = nl2br($this->config->get('config_open'));		
      

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}
	}
}