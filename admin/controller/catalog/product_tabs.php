<?php
class ControllerCatalogProductTabs extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('catalog/product_tabs');

		$this->document->setTitle(strip_tags($this->language->get('heading_title')));

		$this->load->model('catalog/product_tabs');

		$this->getList();
	}

	public function add() {
		$this->load->language('catalog/product_tabs');

		$this->document->setTitle(strip_tags($this->language->get('heading_title')));

		$this->load->model('catalog/product_tabs');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			
			$this->model_catalog_product_tabs->addTab($this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('catalog/product_tabs', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}

	public function edit() {
		$this->load->language('catalog/product_tabs');

		$this->document->setTitle(strip_tags($this->language->get('heading_title')));

		$this->load->model('catalog/product_tabs');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_product_tabs->editTab($this->request->get['tabs_ns_id'], $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('catalog/product_tabs', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}

	public function delete() {
		$this->load->language('catalog/product_tabs');

		$this->document->setTitle(strip_tags($this->language->get('heading_title')));

		$this->load->model('catalog/product_tabs');

		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $tabs_ns_id) {
				$this->model_catalog_product_tabs->delTab($tabs_ns_id);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('catalog/product_tabs', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getList();
	}

	protected function getList() {
		$this->document->addScript('view/javascript/product_tabs/js/bootstrap-select.js');
		$this->document->addStyle('view/javascript/product_tabs/css/bootstrap-select.css');
		if (isset($this->request->get['filter_name'])) {
			$filter_name = $this->request->get['filter_name'];
		} else {
			$filter_name = null;
		}
		if (isset($this->request->get['filter_show_empty'])) {
			$filter_show_empty = $this->request->get['filter_show_empty'];
		} else {
			$filter_show_empty = null;
		}
		if (isset($this->request->get['filter_status'])) {
			$filter_status = $this->request->get['filter_status'];
		} else {
			$filter_status = null;
		}
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'id.title';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$url = '';
		if (isset($this->request->get['filter_name'])) {
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
			}
		if (isset($this->request->get['filter_show_empty'])) {
			$url .= '&filter_show_empty=' . urlencode(html_entity_decode($this->request->get['filter_show_empty'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_status'])) {
			$url .= '&filter_status=' . urlencode(html_entity_decode($this->request->get['filter_status'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('catalog/product_tabs', 'token=' . $this->session->data['token'] . $url, 'SSL')
		);

		$data['add'] = $this->url->link('catalog/product_tabs/add', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$data['delete'] = $this->url->link('catalog/product_tabs/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');

		$data['product_tabs'] = array();

		$filter_data = array(
			'filter_name'	  		=> $filter_name,
			'filter_show_empty'	  	=> $filter_show_empty,
			'filter_status'	  		=> $filter_status,
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit' => $this->config->get('config_limit_admin')
		);

		$product_tabs_total = $this->model_catalog_product_tabs->getTotalTabs();

		$results = $this->model_catalog_product_tabs->getTabs($filter_data);

		foreach ($results as $result) {
			$data['product_tabs'][] = array(
				'tabs_ns_id'     	=> $result['tabs_ns_id'],
				'title'       		=> $result['title'],
				'sort_order'  		=> $result['sort_order'],
				'status'     		=> ($result['status']) ? $this->language->get('text_enabled_quickproducttabs') : $this->language->get('text_disabled_quickproducttabs'),
				'show_empty_tab'  	=> ($result['show_empty_tab']) ? $this->language->get('text_enabled_quickproducttabs') : $this->language->get('text_disabled_quickproducttabs'),
				'edit'        		=> $this->url->link('catalog/product_tabs/edit', 'token=' . $this->session->data['token'] . '&tabs_ns_id=' . $result['tabs_ns_id'] . $url, 'SSL')
			);
		}
		$this->load->language('catalog/product_tabs');
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_list'] = $this->language->get('text_list');
		$data['text_no_results'] = $this->language->get('text_no_results');
		$data['text_confirm'] = $this->language->get('text_confirm');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['entry_filter_name'] = $this->language->get('entry_filter_name');
		$data['entry_filter_show_empty'] = $this->language->get('entry_filter_show_empty');
		$data['entry_filter_status'] = $this->language->get('entry_filter_status');

		$data['column_title'] = $this->language->get('column_title');
		$data['column_sort_order'] = $this->language->get('column_sort_order');
		$data['column_action'] = $this->language->get('column_action');
		$data['column_status'] = $this->language->get('column_status');
		$data['column_show_empty'] = $this->language->get('column_show_empty');

		$data['button_add'] = $this->language->get('button_add');
		$data['button_edit'] = $this->language->get('button_edit');
		$data['button_delete'] = $this->language->get('button_delete');
		$data['button_filter'] = $this->language->get('button_filter');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = array();
		}

		$url = '';
		if (isset($this->request->get['filter_name'])) {
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_show_empty'])) {
			$url .= '&filter_show_empty=' . urlencode(html_entity_decode($this->request->get['filter_show_empty'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_status'])) {
			$url .= '&filter_status=' . urlencode(html_entity_decode($this->request->get['filter_status'], ENT_QUOTES, 'UTF-8'));
		}

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['sort_title'] = $this->url->link('catalog/product_tabs', 'token=' . $this->session->data['token'] . '&sort=id.title' . $url, 'SSL');
		$data['sort_sort_order'] = $this->url->link('catalog/product_tabs', 'token=' . $this->session->data['token'] . '&sort=i.sort_order' . $url, 'SSL');

		$url = '';
		if (isset($this->request->get['filter_name'])) {
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
		}
		if (isset($this->request->get['filter_show_empty'])) {
			$url .= '&filter_show_empty=' . urlencode(html_entity_decode($this->request->get['filter_show_empty'], ENT_QUOTES, 'UTF-8'));
		}	
		if (isset($this->request->get['filter_status'])) {
			$url .= '&filter_status=' . urlencode(html_entity_decode($this->request->get['filter_status'], ENT_QUOTES, 'UTF-8'));
		}	
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $product_tabs_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('catalog/product_tabs', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		$data['pagination'] = $pagination->render();
		$data['token'] = $this->session->data['token'];
		$data['results'] = sprintf($this->language->get('text_pagination'), ($product_tabs_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($product_tabs_total - $this->config->get('config_limit_admin'))) ? $product_tabs_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $product_tabs_total, ceil($product_tabs_total / $this->config->get('config_limit_admin')));
		$data['filter_name'] = $filter_name;
		$data['filter_show_empty'] = $filter_show_empty;
		$data['filter_status'] = $filter_status;
		$data['sort'] = $sort;
		$data['order'] = $order;

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('catalog/product_tabs_list.tpl', $data));
	}

	protected function getForm() {
		$this->load->language('catalog/product_tabs');
		$data['heading_title'] = $this->language->get('heading_title');
		$this->document->setTitle(strip_tags($this->language->get('heading_title')));

		$data['text_form'] = !isset($this->request->get['tabs_ns_id']) ? $this->language->get('text_add') : $this->language->get('text_edit');
		$data['text_default'] = $this->language->get('text_default');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_select_icon'] = $this->language->get('text_select_icon');

		$data['entry_title'] = $this->language->get('entry_title');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_show_empty_tab'] = $this->language->get('entry_show_empty_tab');
		$data['entry_icon'] = $this->language->get('entry_icon');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		$data['tab_general'] = $this->language->get('tab_general');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['title'])) {
			$data['error_title'] = $this->error['title'];
		} else {
			$data['error_title'] = array();
		}

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('catalog/product_tabs', 'token=' . $this->session->data['token'] . $url, 'SSL')
		);

		if (!isset($this->request->get['tabs_ns_id'])) {
			$data['action'] = $this->url->link('catalog/product_tabs/add', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else {
			$data['action'] = $this->url->link('catalog/product_tabs/edit', 'token=' . $this->session->data['token'] . '&tabs_ns_id=' . $this->request->get['tabs_ns_id'] . $url, 'SSL');
		}

		$data['cancel'] = $this->url->link('catalog/product_tabs', 'token=' . $this->session->data['token'] . $url, 'SSL');

		if (isset($this->request->get['tabs_ns_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$tabs_info = $this->model_catalog_product_tabs->getTab($this->request->get['tabs_ns_id']);
		}

		$data['token'] = $this->session->data['token'];

		$this->load->model('localisation/language');

		$data['languages'] = $this->model_localisation_language->getLanguages();

		if (isset($this->request->post['product_tabs_description'])) {
			$data['product_tabs_description'] = $this->request->post['product_tabs_description'];
		} elseif (isset($this->request->get['tabs_ns_id'])) {
			$data['product_tabs_description'] = $this->model_catalog_product_tabs->getTabsDescriptions($this->request->get['tabs_ns_id']);
		} else {
			$data['product_tabs_description'] = array();
		}

		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($tabs_info)) {
			$data['status'] = $tabs_info['status'];
		} else {
			$data['status'] = true;
		}
		if (isset($this->request->post['show_empty_tab'])) {
			$data['show_empty_tab'] = $this->request->post['show_empty_tab'];
		} elseif (!empty($tabs_info)) {
			$data['show_empty_tab'] = $tabs_info['show_empty_tab'];
		} else {
			$data['show_empty_tab'] = false;
		}
		if (isset($this->request->post['icon_tabs'])) {
			$data['icon_tabs'] = $this->request->post['icon_tabs'];
		} elseif (!empty($tabs_info)) {
			$data['icon_tabs'] = $tabs_info['icon_tabs'];
		} else {
			$data['icon_tabs'] = false;
		}

		if (isset($this->request->post['sort_order'])) {
			$data['sort_order'] = $this->request->post['sort_order'];
		} elseif (!empty($tabs_info)) {
			$data['sort_order'] = $tabs_info['sort_order'];
		} else {
			$data['sort_order'] = '';
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('catalog/product_tabs_form.tpl', $data));
	}

	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'catalog/product_tabs')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		foreach ($this->request->post['product_tabs_description'] as $language_id => $value) {
			if (empty($value['title'])) {
				$this->error['title'][$language_id] = $this->language->get('error_title');
			}
		}

		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}

		return !$this->error;
	}

	protected function validateDelete() {
		if (!$this->user->hasPermission('modify', 'catalog/product_tabs')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
	public function changeProductTabsStatus() {
		$data['token'] = $this->session->data['token'];
		$this->load->model('catalog/product_tabs');
		$this->load->language('catalog/product_tabs');				
			$output='';
			if(isset($this->request->get['object_id'])){
				$get_request = explode('-',$this->request->get['object_id']);
					if(count($get_request)==2){
						$column_name = $get_request[0];
						$tabs_ns_id = $get_request[1];				
						$result = $this->model_catalog_product_tabs->getTab($tabs_ns_id);
						if($result[$column_name]){
							$this->model_catalog_product_tabs->changePrTabsStatus($tabs_ns_id, 0);
						} else {
							$this->model_catalog_product_tabs->changePrTabsStatus($tabs_ns_id, 1);
						}				
						$result = $this->model_catalog_product_tabs->getTab($tabs_ns_id);
						$output = $result[$column_name] ? $this->language->get('text_enabled_quickproducttabs') : $this->language->get('text_disabled_quickproducttabs');
					}
				}			
				return $this->response->setOutput($output);
	}
	public function changeProductTabsShowEmpty() {
		$data['token'] = $this->session->data['token'];
		$this->load->model('catalog/product_tabs');
		$this->load->language('catalog/product_tabs');				
			$output='';
			if(isset($this->request->get['object_id'])){
				$get_request = explode('-',$this->request->get['object_id']);
					if(count($get_request)==2){
						$column_name = $get_request[0];
						$tabs_ns_id = $get_request[1];				
						$result = $this->model_catalog_product_tabs->getTab($tabs_ns_id);
						if($result[$column_name]){
							$this->model_catalog_product_tabs->changePrTabsShowEmpty($tabs_ns_id, 0);
						} else {
							$this->model_catalog_product_tabs->changePrTabsShowEmpty($tabs_ns_id, 1);
						}				
						$result = $this->model_catalog_product_tabs->getTab($tabs_ns_id);
						$output = $result[$column_name] ? $this->language->get('text_enabled_quickproducttabs') : $this->language->get('text_disabled_quickproducttabs');
					}
				}			
				return $this->response->setOutput($output);
	}
	public function productTabsGroupAdd() {
		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();		
		$data['token'] = $this->session->data['token'];
		$this->load->model('catalog/product_tabs');
		$this->load->language('catalog/product_tabs');
		$data['languages'] = $this->model_localisation_language->getLanguages();		
		
		$data['button_save'] = $this->language->get('button_save');
		$data['entry_description_poduct_tab'] = $this->language->get('entry_description_poduct_tab');
		$data['entry_product'] = $this->language->get('entry_product');
		
		$this->load->model('catalog/product');

		$data['products'] = array();
		if(isset($this->request->get['tabs_ns_id'])) {
			$data['tabs_ns_id'] = $this->request->get['tabs_ns_id'];
		} else {
			$data['tabs_ns_id'] = '0';
		}
		$module_info = $this->model_catalog_product_tabs->getProductExtraTabs($data['tabs_ns_id']);
		if (!empty($module_info)) {
			$products = $module_info;
		} else {
			$products = array();
		}

		foreach ($products as $product_id) {
			$product_info = $this->model_catalog_product->getProduct($product_id);

			if ($product_info) {
				$data['products'][] = array(
					'product_id' => $product_info['product_id'],
					'name'       => $product_info['name']
				);
			}
		}
		
			
		$this->response->setOutput($this->load->view('catalog/product_tabs_group_add.tpl', $data));	
	}
	public function changeProductTabsDescriptionGroup(){
		$this->load->model('catalog/product_tabs');
		$this->load->language('catalog/product_tabs');
		
			if (isset($this->request->post['product'])) {
				$json = array();
				foreach ($this->request->post['product'] as $product_id) {
					$this->model_catalog_product_tabs->changePrDescription($this->request->post,$product_id);
				}
								
				$json['success'] = $this->language->get('text_success_edit');
				return $this->response->setOutput(json_encode($json));
			} else {
				$json = array();
				$json['warning'] = $this->language->get('text_error_edit');
				return $this->response->setOutput(json_encode($json));
			}
	}
	
	
	public function autocomplete() {
		$json = array();

		if (isset($this->request->get['filter_name'])) {
			$this->load->model('catalog/product_tabs');

			$filter_data = array(
				'filter_name' => $this->request->get['filter_name'],
				'start'       => 0,
				'limit'       => 10
			);

			$results = $this->model_catalog_product_tabs->getTabs($filter_data);

			foreach ($results as $result) {
				$json[] = array(
					'tabs_ns_id' => $result['tabs_ns_id'],
					'title' => strip_tags(html_entity_decode($result['title'], ENT_QUOTES, 'UTF-8'))
				);
			}
		}

		$sort_order = array();

		foreach ($json as $key => $value) {
			$sort_order[$key] = $value['title'];
		}

		array_multisort($sort_order, SORT_ASC, $json);

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}