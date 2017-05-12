<?php
class ControllerModuleWallcategory extends Controller {
	public function index($setting) {
		static $module = 0;
		$this->load->model('tool/image');
		$this->load->model('catalog/category');
		$limit_sub_category = $setting['limit'];
		
		if (isset($setting['wall_category'])) {
			$categories = $setting['wall_category'];
		} else {
			$categories = array();
		}
		if (!empty($categories)){
			foreach ($categories as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
			} 
			array_multisort($sort_order, SORT_ASC, $categories);
		}

		$data['categories'] = array();
		foreach($categories as $category){
            $category_info = $this->model_catalog_category->getCategory($category['category']);

			
			$data['subcategories'] = array();
			$subcategories = $this->model_catalog_category->getCategories($category['category']);
			if($subcategories){
				$subcategories = array_slice($subcategories, 0, $limit_sub_category);
			
				foreach($subcategories as $subcategory){					
					$path = $this->getCategoryPath($subcategory['category_id']);	
					if($path){
						$path = implode("_" , $path);
					}		
					$data['subcategories'][] = array(
						'category_id' 	=> $subcategory['category_id'],
						'name'        	=> $subcategory['name'],
						'href'  	    => $this->url->link('product/category', 'path=' . $path),	
					);
				}
			}
			if ($category['image']) {
				$image_category = $this->model_tool_image->resize($category['image'], 150, 150);
			} else {
				$image_category = $this->model_tool_image->resize('placeholder.png', 150, 150);
			}	
			$path = $this->getCategoryPath($category['category']);	
			if($path){
				$path = implode("_" , $path);
			}
			$data['categories'][] = array(
				'subcategories' => $data['subcategories'],
				'category_id' => $category_info['category_id'],
				'name' 		  => $category_info['name'],						
				'href'  	  => $this->url->link('product/category', 'path=' . $path),			
				'image' 	  => $image_category,				
			);			
               
        }	
		$this->load->model('catalog/manufacturer');
		if (isset($setting['wall_manufactures'])) {
			$wall_manufactures = $setting['wall_manufactures'];
		} else {
			$wall_manufactures = '';
		}
		if (!empty($wall_manufactures)){
			foreach ($wall_manufactures as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
			} 
			array_multisort($sort_order, SORT_ASC, $wall_manufactures);
		}
		$data['manufacturers'] = array();

		if($wall_manufactures) {
			foreach ($wall_manufactures as $manufacturer) {
				$manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($manufacturer['manufacturer_id']);

				if($manufacturer_info) {
					$data['manufacturers'][] = array(
						'manufacturer_id' => $manufacturer_info['manufacturer_id'],
						'name'            => $manufacturer_info['name'],
						'href'            => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $manufacturer_info['manufacturer_id']),
						'thumb'           => $this->model_tool_image->resize(($manufacturer['image']=='' ? 'no_image.jpg' : $manufacturer['image']), 150, 150)
						);
				}
			}
		}
		$data['module'] = $module++;
		$data['lang_id'] = $this->config->get('config_language_id');
		$data['heading_title'] = $setting['title_name'];	
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/wallcategory.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/wallcategory.tpl', $data);
		} else {
			return $this->load->view('default/template/module/wallcategory.tpl', $data);
		}
	}
	public function getCategoryPath($category_id){
		$query = $this->db->query("SELECT path_id FROM " . DB_PREFIX . "category_path WHERE category_id='". (int)$category_id ."' ORDER BY LEVEL");	
		if($query->rows){
			$result=array();
			foreach($query->rows as $row){ 	
				$result[]=$row['path_id'];
			}
			return $result;
		} else {
			return false;
		}
	}
	 
}