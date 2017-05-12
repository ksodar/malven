<?php
class ControllerModuleSlideshowCategory extends Controller {
	public function index($setting) {
		$this->load->model('tool/image');
		if(isset($this->request->get['path'])){
		static $module_row = 0;
		$show_slider_sub_category = $setting['show_slider_sub_category'];
		
		$parts = explode('_', (string)$this->request->get['path']);
		$category_id_sub_category = (int)array_pop($parts);
		if (isset($parts[0])) {
			$category_id_parent = $parts[0];
		} else {
			$category_id_parent = $this->request->get['path'];
		}
		
		
		$this->load->model('localisation/language');
		$data['languages'] 	= $this->model_localisation_language->getLanguages();
		$data['language_id'] = $this->config->get('config_language_id');
		
		if(!empty($setting['category_banner'])) {
			$data['config_banners_category'] = $setting['category_banner'];
		} else {
			$data['config_banners_category'] = array();
		}
		if (!empty($data['config_banners_category'])){
			foreach ($data['config_banners_category'] as $key => $val) {
				$sort_order[$key] = $val['sort_order'];	
			} 
			array_multisort($sort_order, SORT_ASC, $data['config_banners_category']);
		}
		
		$data['config_banners_categorys'] = array();
		
		foreach ($data['config_banners_category'] as $value) {
			if($show_slider_sub_category =='1'){
				if($category_id_parent == $setting['slideshow_category_id']){
					foreach($data['languages'] as $language){
						if (is_file(DIR_IMAGE . $value['image'][$language['language_id']])) {
							$thumb = $this->model_tool_image->resize($value['image'][$language['language_id']], $setting['width'], $setting['height']);
						} else {	
							$thumb = 'no_image.png';
						}
							$thumb_resize[$language['language_id']] = $thumb;
					}
					$data['config_banners_categorys'][] = array(										
						'link' 			=> $value['link'],	
						'description' 	=> $value['description'],	
						'thumb' 		=> $thumb_resize,						
					);					
				}	
			} else {
				if($category_id_sub_category == $setting['slideshow_category_id']){
					foreach($data['languages'] as $language){
						if (is_file(DIR_IMAGE . $value['image'][$language['language_id']])) {
							$thumb = $this->model_tool_image->resize($value['image'][$language['language_id']], $setting['width'], $setting['height']);
						} else {	
							$thumb = 'no_image.png';
						}
							$thumb_resize[$language['language_id']] = $thumb;
					}
					$data['config_banners_categorys'][] = array(										
						'link' 			=> $value['link'],	
						'description' 	=> $value['description'],	
						'thumb' 		=> $thumb_resize,						
					);					
				}
			}
				
		}
		$data['module_row'] = $module_row++;
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/slideshowcategory.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/slideshowcategory.tpl', $data);
		} else {
			return $this->load->view('/template/module/slideshowcategory.tpl', $data);
		}
		}
	}
}