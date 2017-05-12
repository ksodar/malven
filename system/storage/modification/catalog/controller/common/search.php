<?php
class ControllerCommonSearch extends Controller {
	public function index() {
		$this->load->language('common/search');

		$data['text_search'] = $this->language->get('text_search');

		if (isset($this->request->get['search'])) {
			$data['search'] = $this->request->get['search'];
		} else {
			$data['search'] = '';
		}


		$this->load->language('ns/newstorelang');
		$data['text_autosearch_model'] 			= $this->language->get('text_autosearch_model');
		$data['text_autosearch_manufacturer'] 	= $this->language->get('text_autosearch_manufacturer');
		$data['text_autosearch_stock_status'] 	= $this->language->get('text_autosearch_stock_status');
		$data['on_off_search'] = $this->config->get('autosearch_on_off');
		$data['text_autosearch_view_all'] = $this->language->get('text_autosearch_view_all');
		if (isset($this->request->get['filter_category_id'])) {
			$data['filter_category_id'] = $this->request->get['filter_category_id'];
		} else {
			$data['filter_category_id'] = 0;
		}
		$data['text_search_everywhere'] = $this->language->get('text_search_everywhere');
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		$data['categories'] = array();
		$categories = $this->model_catalog_category->getCategories(0);
		foreach ($categories as $category) {			
				// Level 2
				$children_data = array();
				$children = $this->model_catalog_category->getCategories($category['category_id']);
				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);
					$children_data[] = array(
						'name'  => $child['name'],
						'category_id'  => $child['category_id'],
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}
				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					'category_id'  => $category['category_id'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);			
		}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/search.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/search.tpl', $data);
		} else {
			return $this->load->view('default/template/common/search.tpl', $data);
		}
	}
}