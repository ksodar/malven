<?php
class ControllerCommonHomeshemeNewstorePos20 extends Controller {
	public function index() {
		$this->load->model('design/layout');

		if (isset($this->request->get['route'])) {
			$route = (string)$this->request->get['route'];
		} else {
			$route = 'common/home';
		}

		$layout_id = 0;

		if ($route == 'product/category' && isset($this->request->get['path'])) {
			$this->load->model('catalog/category');

			$path = explode('_', (string)$this->request->get['path']);

			$layout_id = $this->model_catalog_category->getCategoryLayoutId(end($path));
		}

		if ($route == 'product/product' && isset($this->request->get['product_id'])) {
			$this->load->model('catalog/product');

			$layout_id = $this->model_catalog_product->getProductLayoutId($this->request->get['product_id']);
		}

		if ($route == 'information/information' && isset($this->request->get['information_id'])) {
			$this->load->model('catalog/information');

			$layout_id = $this->model_catalog_information->getInformationLayoutId($this->request->get['information_id']);
		}

		if (!$layout_id) {
			$layout_id = $this->model_design_layout->getLayout($route);
		}

		if (!$layout_id) {
			$layout_id = $this->config->get('config_layout_id');
		}
		$this->load->model('extension/module');
		$data['modules'] = array();		
		$modules = $this->model_design_layout->getLayoutModules($layout_id, 'position_20');
		
		foreach ($modules as $module) {
			$part = explode('.', $module['code']);

			if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
				$data['modules'][] = $this->load->controller('module/' . $part[0]);
			}

			if (isset($part[1])) {
				$setting_info = $this->model_extension_module->getModule($part[1]);

				if ($setting_info && $setting_info['status']) {
					$data['modules'][] = $this->load->controller('module/' . $part[0], $setting_info);
				}
			}
		}
		
		$ns_theme_home_page_sheme = $this->config->get('ns_new_home_layout_module');
		$modules_newstore = array();
		if (isset($ns_theme_home_page_sheme)) {
			$modules_newstore = $this->config->get('ns_new_home_layout_module');
		} else {
			$modules_newstore = array();
		}
		if (!empty($modules_newstore)){
			foreach ($modules_newstore as $key => $value) {
				$sort_modules[$key] = $value['sort_order'];
			} 
			array_multisort($sort_modules, SORT_ASC, $modules_newstore);
		}
		foreach ($modules_newstore as $module) {
			if($module['position'] == 'position_20') {
				$part = explode('.', $module['code']);
				if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
					$data['modules'][] = $this->load->controller('module/' . $part[0]);
				}
				if (isset($part[1])) {
					$setting_info = $this->model_extension_module->getModule($part[1]);

					if ($setting_info && $setting_info['status']) {
						$data['modules'][] = $this->load->controller('module/' . $part[0], $setting_info);
					}
				}
			}							
		}
		
		return $this->load->view($this->config->get('config_template') . '/template/common/homesheme/newstore_pos20.tpl', $data);
		
	}
}