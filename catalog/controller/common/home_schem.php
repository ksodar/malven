<?php
class ControllerCommonHomeSchem extends Controller {
	public function index() {
		$this->load->model('extension/module');
				
				$ns_new_modules_home_page = array();
				$data['ns_new_modules_1'] = array();
				$data['ns_new_modules_2'] = array();
				$data['ns_new_modules_3'] = array();
				$data['ns_new_modules_4'] = array();
				$data['ns_new_modules_5'] = array();
				$data['ns_new_modules_6'] = array();
				$data['ns_new_modules_7'] = array();
				$data['ns_new_modules_8'] = array();
				$data['ns_new_modules_9'] = array();
				$data['ns_new_modules_10'] = array();
				$data['ns_new_modules_11'] = array();
				$data['ns_new_modules_12'] = array();
				$data['ns_new_modules_13'] = array();
				$data['ns_new_modules_14'] = array();
				$data['ns_new_modules_15'] = array();
				$data['ns_new_modules_16'] = array();
				
				
				$ns_theme_home_page_sheme = $this->config->get('ns_new_home_layout_module');
				$ns_theme_home_page_sheme_array = array();
				if (isset($ns_theme_home_page_sheme)) {
					$ns_theme_home_page_sheme_array = $this->config->get('ns_new_home_layout_module');
				} else {
					$ns_theme_home_page_sheme_array = array();
				}
				
				foreach ($ns_theme_home_page_sheme_array as $ns_new_module) {
					if ($ns_new_module['position'] == 'position_1') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_1'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_1'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif ($ns_new_module['position'] == 'position_2') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_2'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_2'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif ($ns_new_module['position'] == 'position_3') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_3'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_3'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif($ns_new_module['position'] == 'position_4') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_4'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_4'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif($ns_new_module['position'] == 'position_5') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_5'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_5'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif($ns_new_module['position'] == 'position_6') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_6'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_6'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif($ns_new_module['position'] == 'position_7') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_7'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_7'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif($ns_new_module['position'] == 'position_8') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_8'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_8'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif($ns_new_module['position'] == 'position_9') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_9'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_9'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif($ns_new_module['position'] == 'position_10') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_10'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_10'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif($ns_new_module['position'] == 'position_11') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_11'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_11'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif($ns_new_module['position'] == 'position_12') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_12'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_12'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif($ns_new_module['position'] == 'position_13') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_13'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_13'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif($ns_new_module['position'] == 'position_14') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_14'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_14'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} elseif($ns_new_module['position'] == 'position_15') {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_15'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_15'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					} else {
						$part = explode('.', $ns_new_module['code']);
						if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
							$data['ns_new_modules_16'][] = array(
								'module'     => $this->load->controller('module/' . $part[0]),
								'sort_order' => $ns_new_module['sort_order']
							);
						}
						if (isset($part[1])) {
							$setting_info = $this->model_extension_module->getModule($part[1]);
							if ($setting_info && $setting_info['status']) {
								$data['ns_new_modules_16'][] = array(
									'module'     => $this->load->controller('module/' . $part[0], $setting_info),
									'sort_order' => $ns_new_module['sort_order']
								);
							}
						}
					}
					if (!empty($data['ns_new_modules_0'])){
						foreach ($data['ns_new_modules_0'] as $key => $value) {
							$sort_ns_new_modules_0[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_0, SORT_ASC, $data['ns_new_modules_0']);
					}
					if (!empty($data['ns_new_modules_1'])){
						foreach ($data['ns_new_modules_1'] as $key => $value) {
							$sort_ns_new_modules_1[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_1, SORT_ASC, $data['ns_new_modules_1']);
					}
					if (!empty($data['ns_new_modules_2'])){
						foreach ($data['ns_new_modules_2'] as $key => $value) {
							$sort_ns_new_modules_2[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_2, SORT_ASC, $data['ns_new_modules_2']);
					}
					if (!empty($data['ns_new_modules_3'])){
						foreach ($data['ns_new_modules_3'] as $key => $value) {
							$sort_ns_new_modules_3[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_3, SORT_ASC, $data['ns_new_modules_3']);
					}
					if (!empty($data['ns_new_modules_4'])){
						foreach ($data['ns_new_modules_4'] as $key => $value) {
							$sort_ns_new_modules_4[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_4, SORT_ASC, $data['ns_new_modules_4']);
					}
					if (!empty($data['ns_new_modules_5'])){
						foreach ($data['ns_new_modules_5'] as $key => $value) {
							$sort_ns_new_modules_5[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_5, SORT_ASC, $data['ns_new_modules_5']);
					}
					if (!empty($data['ns_new_modules_6'])){
						foreach ($data['ns_new_modules_6'] as $key => $value) {
							$sort_ns_new_modules_6[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_6, SORT_ASC, $data['ns_new_modules_6']);
					}
					if (!empty($data['ns_new_modules_7'])){
						foreach ($data['ns_new_modules_7'] as $key => $value) {
							$sort_ns_new_modules_7[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_7, SORT_ASC, $data['ns_new_modules_7']);
					}
					if (!empty($data['ns_new_modules_8'])){
						foreach ($data['ns_new_modules_8'] as $key => $value) {
							$sort_ns_new_modules_8[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_8, SORT_ASC, $data['ns_new_modules_8']);
					}
					if (!empty($data['ns_new_modules_9'])){
						foreach ($data['ns_new_modules_9'] as $key => $value) {
							$sort_ns_new_modules_9[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_9, SORT_ASC, $data['ns_new_modules_9']);
					}
					if (!empty($data['ns_new_modules_10'])){
						foreach ($data['ns_new_modules_10'] as $key => $value) {
							$sort_ns_new_modules_10[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_10, SORT_ASC, $data['ns_new_modules_10']);
					}
					if (!empty($data['ns_new_modules_11'])){
						foreach ($data['ns_new_modules_11'] as $key => $value) {
							$sort_ns_new_modules_11[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_11, SORT_ASC, $data['ns_new_modules_11']);
					}
					if (!empty($data['ns_new_modules_12'])){
						foreach ($data['ns_new_modules_12'] as $key => $value) {
							$sort_ns_new_modules_12[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_12, SORT_ASC, $data['ns_new_modules_12']);
					}
					if (!empty($data['ns_new_modules_13'])){
						foreach ($data['ns_new_modules_13'] as $key => $value) {
							$sort_ns_new_modules_13[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_13, SORT_ASC, $data['ns_new_modules_13']);
					}
					if (!empty($data['ns_new_modules_14'])){
						foreach ($data['ns_new_modules_14'] as $key => $value) {
							$sort_ns_new_modules_14[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_14, SORT_ASC, $data['ns_new_modules_14']);
					}
					if (!empty($data['ns_new_modules_15'])){
						foreach ($data['ns_new_modules_15'] as $key => $value) {
							$sort_ns_new_modules_15[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_15, SORT_ASC, $data['ns_new_modules_15']);
					}
					
					if (!empty($data['ns_new_modules_16'])){
						foreach ($data['ns_new_modules_16'] as $key => $value) {
							$sort_ns_new_modules_16[$key] = $value['sort_order'];
						} 
						array_multisort($sort_ns_new_modules_16, SORT_ASC, $data['ns_new_modules_16']);
					}
					
				}
				
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/homeschem.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/homeschem.tpl', $data);
		} else {
			return $this->load->view('default/template/common/homeschem.tpl', $data);
		}	
	
	}
}