<?php
class ControllerModuleEditproduct extends Controller {
	private $error = array(); 
	public function index() {   
		$this->load->language('module/editproduct');
		
		$this->document->setTitle($this->language->get('heading_title'));
		$this->document->addStyle('view/stylesheet/editprod/style.css');				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->load->model('module/editproduct');
			
			$this->model_module_editproduct->editSettingEditprod($this->request->post);			
			
			if (isset($this->request->post['user_groups_prod'])) {
				$user_groups_prod = $this->request->post['user_groups_prod'];
			} else {
				$user_groups_prod = '';
			}
			
			
			$this->model_module_editproduct->updateUsergroupEditProdView($user_groups_prod);
			
			$this->session->data['success'] = $this->language->get('text_success');
			
			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		$this->load->model('module/editproduct');
		$this->model_module_editproduct->modificationTableUserGroup();
		$getUserGroups = $this->model_module_editproduct->getUserGroups();
		
		
		foreach ($getUserGroups as $result) {	
		
			$data['user_groups'][] = array(
				'user_group_id' => $result['user_group_id'],
				'name'          => $result['name'],
			);
			
			$data['user_groups_edit_prod'][] = array(
				'user_group_id' 				=> $result['user_group_id'],
				'name'          				=> $result['name'],
				'description_edit'          	=> $result['editor_permission']['description_edit'],
				'category_edit'          		=> $result['editor_permission']['category_edit'],
				'image_edit'          			=> $result['editor_permission']['image_edit'],
				'image_url_edit'          		=> $result['editor_permission']['image_url_edit'],
				'image_google_edit'          	=> $result['editor_permission']['image_google_edit'],
				'price_edit'          			=> $result['editor_permission']['price_edit'],
				'manual_price_edit'          	=> $result['editor_permission']['manual_price_edit'],
				'bprice_edit'          			=> $result['editor_permission']['bprice_edit'],
				'special_edit'          		=> $result['editor_permission']['special_edit'],
				'related_edit'          		=> $result['editor_permission']['related_edit'],
				'code_edit'          			=> $result['editor_permission']['code_edit'],
				'attribute_edit'          		=> $result['editor_permission']['attribute_edit'],
				'option_edit'          			=> $result['editor_permission']['option_edit'],
				'link_product_admin'          	=> $result['editor_permission']['link_product_admin'],
				'link_module_edit_admin'        => $result['editor_permission']['link_module_edit_admin'],
				'group_editor'        			=> $result['editor_permission']['group_editor'],
			);
		}
		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();
		
		$data['heading_title'] = $this->language->get('heading_title');		
		$data['text_display_settings_editor'] = $this->language->get('text_display_settings_editor');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['text_on_off_seo_template'] = $this->language->get('text_on_off_seo_template');
		$data['text_seo_template'] = $this->language->get('text_seo_template');
		$data['text_seo_prod_meta_title'] = $this->language->get('text_seo_prod_meta_title');
		$data['text_seo_prod_meta_h1'] = $this->language->get('text_seo_prod_meta_h1');
		$data['text_seo_prod_meta_description'] = $this->language->get('text_seo_prod_meta_description');
		$data['text_seo_prod_meta_keyword'] = $this->language->get('text_seo_prod_meta_keyword');
		$data['text_seo_prod_meta_tag'] = $this->language->get('text_seo_prod_meta_tag');
		$data['text_seo_designations'] = $this->language->get('text_seo_designations');
		$data['text_seo_product_name'] = $this->language->get('text_seo_product_name');
		$data['text_seo_price'] = $this->language->get('text_seo_price');
		$data['text_seo_model'] = $this->language->get('text_seo_model');
		$data['text_seo_sku'] = $this->language->get('text_seo_sku');
		$data['text_seo_category'] = $this->language->get('text_seo_category');
		$data['text_seo_manufacturer'] = $this->language->get('text_seo_manufacturer');
		$data['text_seo_random_text'] = $this->language->get('text_seo_random_text');
		$data['text_group_editor'] = $this->language->get('text_group_editor');
		$data['text_groups_name'] = $this->language->get('text_groups_name');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');	
		$data['entry_user_group_edit'] = $this->language->get('entry_user_group_edit');
		$data['entry_button_generate_url_keyword'] = $this->language->get('entry_button_generate_url_keyword');
		$data['text_id_keyword'] = $this->language->get('text_id_keyword');
		$data['text_model_keyword'] = $this->language->get('text_model_keyword');	
		$data['text_description'] = $this->language->get('text_description');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_image'] = $this->language->get('text_image');
		$data['text_image_url'] = $this->language->get('text_image_url');
		$data['text_image_google'] = $this->language->get('text_image_google');
		$data['text_price'] = $this->language->get('text_price');
		$data['text_manual_price'] = $this->language->get('text_manual_price');
		$data['text_bprice'] = $this->language->get('text_bprice');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_related'] = $this->language->get('text_related');
		$data['text_code'] = $this->language->get('text_code');
		$data['text_attribute'] = $this->language->get('text_attribute');
		$data['text_option'] = $this->language->get('text_option');
		$data['text_link_module_admin'] = $this->language->get('text_link_module_admin');
		$data['text_product_admin'] = $this->language->get('text_product_admin');
		$data['cx_key'] = $this->language->get('cx_key');
		$data['cx_text'] = $this->language->get('cx_text');
		$data['cx_link'] = $this->language->get('cx_link');
		$data['api_key'] = $this->language->get('api_key');
		$data['api_link'] = $this->language->get('api_link');
		if (isset($this->request->post['seo_prod'])) {
			$data['seo_prod'] = $this->request->post['seo_prod'];
		} else {
			$data['seo_prod'] = $this->config->get('seo_prod');
		}
		if (isset($this->request->post['cx_key_ediprod'])) {
			$data['cx_key_ediprod'] = $this->request->post['cx_key_ediprod'];
		} else {
			$data['cx_key_ediprod'] = $this->config->get('cx_key_ediprod');
		}
		if (isset($this->request->post['api_key_ediprod'])) {
			$data['api_key_ediprod'] = $this->request->post['api_key_ediprod'];
		} else {
			$data['api_key_ediprod'] = $this->config->get('api_key_ediprod');
		}
		
		if (isset($this->request->post['config_button_generate_url_keyword'])) {
			$data['config_button_generate_url_keyword'] = $this->request->post['config_button_generate_url_keyword'];
		} else {
			$data['config_button_generate_url_keyword'] = $this->config->get('config_button_generate_url_keyword');
		}
		
 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
				
  		$data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/featured', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$data['action'] = $this->url->link('module/editproduct', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		$data['token'] = $this->session->data['token'];
				
		$this->load->model('design/layout');
		
		$data['layouts'] = $this->model_design_layout->getLayouts();
		$data['VERSION'] = VERSION;	
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/editproduct.tpl', $data));
			
	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/editproduct')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
				
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
	public function install() {   
		$this->load->model('module/editproduct');
		$this->model_module_editproduct->installDB();    
		$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
	}
	public function uninstall() {
		$this->load->model('extension/extension');
		$this->load->model('setting/setting');
		$this->load->model('module/editproduct');
		$this->model_module_editproduct->uninstallDB();
		$this->model_extension_extension->uninstall('module', 'editproduct');
	}
}
?>