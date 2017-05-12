<?php
class ControllerModuleBannerBlocks extends Controller {
	public function index($setting) {
		$this->load->language('module/banner_blocks');

		$this->load->model('tool/image');
		
		$data['language_id'] = $this->config->get('config_language_id');
		
		$results = $setting['banner_item'];
		
		foreach ($results as $result) {
			if(isset($result['popup'])){
				$result_popup = $result['popup'];
			} else {
				$result_popup = '0';
			}
			$data['blocks'][] = array(
				'image' => $this->model_tool_image->resize($result['image'], 50, 50),
				'title' => $result['title'],
				'description' => $result['description'],
				'link'  => $result['link'],
				'popup'  => $result_popup,
				'sort'  => $result['sort']
			);	
		}
		
		if (!empty($data['blocks'])){
			foreach ($data['blocks'] as $key => $value) {
				$sort[$key] = $value['sort'];
			} 
			array_multisort($sort, SORT_ASC, $data['blocks']);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/banner_blocks.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/banner_blocks.tpl', $data);
		} else {
			return $this->load->view('default/template/module/banner_blocks.tpl', $data);
		}
	}
}