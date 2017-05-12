<?php
class ControllerModuleFoundCheaperProduct extends Controller {
	private $error = array();
	public function index() {
		$this->load->language('module/found_cheaper_product');
		$this->document->setTitle(strip_tags($this->language->get('heading_title')));
		$this->document->addScript('view/javascript/newstore/jscolor/jscolor.js');	
		$this->document->addStyle('view/stylesheet/found_cheaper_product/style.css');
		$this->load->model('setting/setting');
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('fcpdata', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();		
		$data['heading_title'] = $this->language->get('heading_title');		
		$data['tab_form_field'] = $this->language->get('tab_form_field');
		$data['tab_general_setting'] = $this->language->get('tab_general_setting');
		$data['tab_list'] = $this->language->get('tab_list');
		$data['tab_style'] = $this->language->get('tab_style');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['text_field_name'] = $this->language->get('text_field_name');
		$data['text_field_email'] = $this->language->get('text_field_email');
		$data['text_field_telephone'] = $this->language->get('text_field_telephone');
		$data['text_telephone_mask_fields'] = $this->language->get('text_telephone_mask_fields');
		$data['text_field_commen'] = $this->language->get('text_field_commen');
		$data['text_field_link'] = $this->language->get('text_field_link');
		$data['text_status_fields'] = $this->language->get('text_status_fields');
		$data['text_requared_fields'] = $this->language->get('text_requared_fields');
		$data['text_placeholder_fields'] = $this->language->get('text_placeholder_fields');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_title_popup_found_cheaper'] = $this->language->get('text_title_popup_found_cheaper');
		$data['text_found_cheaper_info'] = $this->language->get('text_found_cheaper_info');
		$data['text_found_cheaper_button'] = $this->language->get('text_found_cheaper_button');
		$data['text_found_cheaper_button_icon'] = $this->language->get('text_found_cheaper_button_icon');
		$data['text_select_icon'] = $this->language->get('text_select_icon');		
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_send_email_status'] = $this->language->get('entry_send_email_status');
		$data['entry_email'] = $this->language->get('entry_email');
		$data['entry_color_send_button']	= $this->language->get('entry_color_send_button');
		$data['entry_background_send_button']	= $this->language->get('entry_background_send_button');		
		$data['entry_background_send_button_hover']	= $this->language->get('entry_background_send_button_hover');
		$data['entry_border_send_button']	= $this->language->get('entry_border_send_button');
		$data['entry_border_send_button_hover']	= $this->language->get('entry_border_send_button_hover');	
		$data['entry_color_found_cheaper_button']	= $this->language->get('entry_color_found_cheaper_button');
		$data['entry_background_found_cheaper_button']	= $this->language->get('entry_background_found_cheaper_button');		
		$data['entry_background_found_cheaper_button_hover']	= $this->language->get('entry_background_found_cheaper_button_hover');
		$data['entry_border_found_cheaper_button']	= $this->language->get('entry_border_found_cheaper_button');
		$data['entry_border_found_cheaper_button_hover']	= $this->language->get('entry_border_found_cheaper_button_hover');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		$data['token'] = $this->session->data['token'];

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['error_email_found_cheaper'])) {
			$data['error_email_found_cheaper'] = $this->error['error_email_found_cheaper'];
		} else {
			$data['error_email_found_cheaper'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('module/found_cheaper_product', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['action'] = $this->url->link('module/found_cheaper_product', 'token=' . $this->session->data['token'], 'SSL');

		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->post['fcpdata'])) {
			$data['fcpdata'] = $this->request->post['fcpdata'];
		} else {
			$data['fcpdata'] = $this->config->get('fcpdata');
		}
		$data['VERSION'] = VERSION;	
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/found_cheaper_product.tpl', $data));
	}
	
	public function list_applications() {
		$data = array();
		$this->load->model('catalog/product');
		$this->load->model('module/found_cheaper_product');
		$this->language->load('module/found_cheaper_product');
		$data['btn_change_status'] = $this->language->get('btn_change_status');
		$data['btn_del'] = $this->language->get('btn_del');
		$data['btn_change_comment_manager'] = $this->language->get('btn_change_comment_manager');
		$data['column_buyer'] = $this->language->get('column_buyer');
		$data['column_product'] = $this->language->get('column_product');
		$data['column_comment_manager'] = $this->language->get('column_comment_manager');
		$data['column_status'] = $this->language->get('column_status');
		$data['column_date_added'] = $this->language->get('column_date_added');
		$data['column_date_modified'] = $this->language->get('column_date_modified');
		$data['text_sku_product'] = $this->language->get('text_sku_product');
		$data['text_model_product'] = $this->language->get('text_model_product');
		$data['text_no_results'] = $this->language->get('text_no_results');
		$page = (isset($this->request->get['page'])) ? $this->request->get['page']: 1;
		$data['token'] = $this->session->data['token'];

    $data['foundcheaper_data'] = array();

    $filter_data = array(
      'start' => ($page - 1) * 10,
      'limit' => 10,
    );

    $results = $this->model_module_found_cheaper_product->getFoundCheapers($filter_data);
	$this->load->model('tool/image');

    foreach ($results as $result) {
		if ($result['status_id'] == '0'){
			$status = $this->language->get('status_wait');
		}else{
			$status = $this->language->get('status_done');
		}
		$product_info = $this->model_catalog_product->getProduct($result['fcp_product_id']);
		
		if ($product_info) {
			if ($product_info['image']) {
				$image = $this->model_tool_image->resize($product_info['image'], 50, 50);
			} else {
				$image = $this->model_tool_image->resize('placeholder.png',50, 50);
			}
			$data['products'] = array(
				'product_id' => $product_info['product_id'],
				'thumb'      => $image,
				'name'       => $product_info['name'],
				'sku'        => $product_info['sku'],
				'model'      => $product_info['model'],
			);
		}
		$data['foundcheaper_data'][] = array(
			'id_found_cheaper' 		=> $result['id_found_cheaper'],
			'name_field'			=> $result['name_field'],
			'telephone_field'		=> $result['telephone_field'],
			'link_field'			=> $result['link_field'],
			'comment_field'			=> $result['comment_field'],
			'email_field'			=> $result['email_field'],
			'comment_manager'		=> $result['comment_manager'],
			'product'         		=> $data['products'],
			'status'         		=> $status,
			'status_id'         	=> $result['status_id'],
			'date_added' 			=> $result['date_added'],
			'date_modified' 		=> $result['date_modified']
		);
    }
	
    $foundcheaper_total = $this->model_module_found_cheaper_product->getTotalFoundCheaper();

    $pagination = new Pagination();
    $pagination->total = $foundcheaper_total;
    $pagination->page = $page;
    $pagination->limit = 10;
    $pagination->url = $this->url->link('module/found_cheaper_product/list_applications', 'token='.$this->session->data['token'].'&page={page}', 'SSL');

    $data['pagination'] = $pagination->render();

    $data['results'] = sprintf($this->language->get('text_pagination'), ($foundcheaper_total) ? (($page - 1) * 10) + 1 : 0, ((($page - 1) * 10) > ($foundcheaper_total - 10)) ? $foundcheaper_total : ((($page - 1) * 10) + 10), $foundcheaper_total, ceil($foundcheaper_total / 10));

    $this->response->setOutput($this->load->view('module/found_cheaper_product_history.tpl', $data));
  }

 
	public function update_status() {
		$json = array();
		 $this->language->load('module/found_cheaper_product');
		$this->load->model('module/found_cheaper_product');
		if (isset($this->request->request['selected_id_found_cheaper'])) {
		  foreach ($this->request->request['selected_id_found_cheaper'] as $request_id) {
			  $this->model_module_found_cheaper_product->ChangeStatusFoundCheaper((int)$request_id);
		  }
		  $json['success'] = $this->language->get('success_update_status');
		} else {
			$json['error'] = $this->language->get('error_selected_id');
		}

    $this->response->addHeader('Content-Type: application/json');
    $this->response->setOutput(json_encode($json));
  }
  public function saveCommentManager() {
    $json = array();
    $this->load->model('module/found_cheaper_product');
	$this->language->load('module/found_cheaper_product');
		
	$this->model_module_found_cheaper_product->saveCommentManager((int)$this->request->get['id_found_cheaper'], $this->request->get['comment_manager']);
	
    $this->response->addHeader('Content-Type: application/json');
    $this->response->setOutput(json_encode($json));
  }
  public function del_selected() {
    $json = array();
    $this->load->model('module/found_cheaper_product');
	$this->language->load('module/found_cheaper_product');
		if (isset($this->request->request['selected_id_found_cheaper'])) {
		foreach ($this->request->request['selected_id_found_cheaper'] as $id_found_cheaper) {
			$this->model_module_found_cheaper_product->delSelectId((int)$id_found_cheaper);
		}
		$json['success'] = $this->language->get('success_del_selected');
		} else {
			$json['error'] = $this->language->get('error_del_selected');
		}

    $this->response->addHeader('Content-Type: application/json');
    $this->response->setOutput(json_encode($json));
  }
  

	public function install() {   
		$this->load->model('module/found_cheaper_product');
		$this->model_module_found_cheaper_product->installDB();    
		$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
	}

  public function uninstall() {
    $this->load->model('extension/extension');
    $this->load->model('setting/setting');
    $this->load->model('module/found_cheaper_product');
    $this->model_module_found_cheaper_product->uninstallDB();
    $this->model_extension_extension->uninstall('module', 'found_cheaper_product');
    $this->model_setting_setting->deleteSetting('fcpdata');
  }

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/found_cheaper_product')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		if (isset($this->request->post['fcpdata']['email_found_cheaper']) && $this->request->post['fcpdata']['send_email_status'] == 1) {
			if(!preg_match("/^([a-z0-9_\.-]+)@([a-z0-9_\.-]+)\.([a-z\.]{2,6})$/", $this->request->post['fcpdata']['email_found_cheaper'])){
				$this->error['error_email_found_cheaper'] = $this->language->get('error_email_found_cheaper');	
			}
        
		}
		return !$this->error;
	}
}