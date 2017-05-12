<?php
class ControllerModuleNewstoreGeneralSetting extends Controller {
	private $error = array();

	public function index() {
		$data['title_disable_button_cart_quickorder'] = $this->language->get('title_disable_button_cart_quickorder');
		$data['text_disable_cart_button'] = $this->language->get('text_disable_cart_button');
		$data['text_disable_fastorder_button'] = $this->language->get('text_disable_fastorder_button');
		$data['entry_ns_themes_custom_bg_mode'] = $this->language->get('entry_ns_themes_custom_bg_mode');
		$data['text_ns_themes_custom_bg_mode_image'] = $this->language->get('text_ns_themes_custom_bg_mode_image');
		$data['text_ns_themes_custom_bg_mode_color'] = $this->language->get('text_ns_themes_custom_bg_mode_color');
		$data['entry_bg_img_preview'] = $this->language->get('entry_bg_img_preview');
		$data['entry_themes_custom_bg_attachment'] = $this->language->get('entry_themes_custom_bg_attachment');
		$data['entry_themes_custom_bg_position'] = $this->language->get('entry_themes_custom_bg_position');
		$data['entry_themes_custom_bg_repeat'] = $this->language->get('entry_themes_custom_bg_repeat');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['text_сaching_system'] = $this->language->get('text_сaching_system');
		$data['text_minify_css'] = $this->language->get('text_minify_css');
		$data['text_minify_js'] = $this->language->get('text_minify_js');
		$data['text_disable_cart_button_out_of_stock'] = $this->language->get('text_disable_cart_button_out_of_stock');
		$data['text_show_stock_status'] = $this->language->get('text_show_stock_status');
		$data['title_setting_options'] = $this->language->get('title_setting_options');
		$data['text_review'] = $this->language->get('text_review');
		$data['entry_fields_dignity'] = $this->language->get('entry_fields_dignity');
		$data['entry_fields_required'] = $this->language->get('entry_fields_required');
		$data['entry_fields_disadvantages'] = $this->language->get('entry_fields_disadvantages');
		
		$data['text_on_off_options_product_module'] = $this->language->get('text_on_off_options_product_module');
		$data['text_options_product_module_description'] = $this->language->get('text_options_product_module_description');
		$data['text_on_off_options_product_page'] = $this->language->get('text_on_off_options_product_page');
		$data['text_options_product_page_description'] = $this->language->get('text_options_product_page_description');
		$data['text_on_off_options_required_module'] = $this->language->get('text_on_off_options_required_module');
		$data['text_on_off_options_required_page'] = $this->language->get('text_on_off_options_required_page');
		$data['text_change_text_cart_button_out_of_stock'] = $this->language->get('text_change_text_cart_button_out_of_stock');
		$data['text_special_timer'] = $this->language->get('text_special_timer');
		$data['text_entry_special_timer_module'] = $this->language->get('text_entry_special_timer_module');
		$data['text_entry_special_timer_module_description'] = $this->language->get('text_entry_special_timer_module_description');
		$data['text_entry_special_timer_page'] = $this->language->get('text_entry_special_timer_page');
		$data['text_entry_special_timer_page_description'] = $this->language->get('text_entry_special_timer_page_description');
		$data['entry_design_special_timer'] = $this->language->get('entry_design_special_timer');
		$data['text_quantity_btn_module'] = $this->language->get('text_quantity_btn_module');
		$data['text_quantity_btn_page'] = $this->language->get('text_quantity_btn_page');
		if (isset($this->request->post['config_design_special_timer'])) {
			$data['config_design_special_timer'] = $this->request->post['config_design_special_timer'];
		} else {
			$data['config_design_special_timer'] = $this->config->get('config_design_special_timer');
		}
		if (isset($this->request->post['config_show_special_timer_module'])) {
			$data['config_show_special_timer_module'] = $this->request->post['config_show_special_timer_module'];
		} else {
			$data['config_show_special_timer_module'] = $this->config->get('config_show_special_timer_module');
		}
		if (isset($this->request->post['config_show_special_timer_page'])) {
			$data['config_show_special_timer_page'] = $this->request->post['config_show_special_timer_page'];
		} else {
			$data['config_show_special_timer_page'] = $this->config->get('config_show_special_timer_page');
		}
		if (isset($this->request->post['config_show_review_plus'])) {
			$data['config_show_review_plus'] = $this->request->post['config_show_review_plus'];
		} else {
			$data['config_show_review_plus'] = $this->config->get('config_show_review_plus');
		}
		if (isset($this->request->post['config_show_review_plus_requared'])) {
			$data['config_show_review_plus_requared'] = $this->request->post['config_show_review_plus_requared'];
		} else {
			$data['config_show_review_plus_requared'] = $this->config->get('config_show_review_plus_requared');
		}
		if (isset($this->request->post['config_show_review_minus'])) {
			$data['config_show_review_minus'] = $this->request->post['config_show_review_minus'];
		} else {
			$data['config_show_review_minus'] = $this->config->get('config_show_review_minus');
		}
		if (isset($this->request->post['config_show_review_minus_requared'])) {
			$data['config_show_review_minus_requared'] = $this->request->post['config_show_review_minus_requared'];
		} else {
			$data['config_show_review_minus_requared'] = $this->config->get('config_show_review_minus_requared');
		}

		if (isset($this->request->post['config_change_text_cart_button_out_of_stock'])) {
			$data['config_change_text_cart_button_out_of_stock'] = $this->request->post['config_change_text_cart_button_out_of_stock'];
		} else {
			$data['config_change_text_cart_button_out_of_stock'] = $this->config->get('config_change_text_cart_button_out_of_stock');
		}
		if (isset($this->request->post['config_show_options_module'])) {
			$data['config_show_options_module'] = $this->request->post['config_show_options_module'];
		} else {
			$data['config_show_options_module'] = $this->config->get('config_show_options_module');
		}
		if (isset($this->request->post['config_show_options_required_module'])) {
			$data['config_show_options_required_module'] = $this->request->post['config_show_options_required_module'];
		} else {
			$data['config_show_options_required_module'] = $this->config->get('config_show_options_required_module');
		}
		
		if (isset($this->request->post['config_show_options_page'])) {
			$data['config_show_options_page'] = $this->request->post['config_show_options_page'];
		} else {
			$data['config_show_options_page'] = $this->config->get('config_show_options_page');
		}
		if (isset($this->request->post['config_show_options_required_page'])) {
			$data['config_show_options_required_page'] = $this->request->post['config_show_options_required_page'];
		} else {
			$data['config_show_options_required_page'] = $this->config->get('config_show_options_required_page');
		}		
		
		$this->load->model('localisation/language');
		$data['languages']= $this->model_localisation_language->getLanguages();
		
		
		if (isset($this->request->post['config_show_stock_status'])) {
			$data['config_show_stock_status'] = $this->request->post['config_show_stock_status'];
		} else {
			$data['config_show_stock_status'] = $this->config->get('config_show_stock_status');
		}
		if (isset($this->request->post['config_disable_cart_button_text'])) {
			$data['config_disable_cart_button_text'] = $this->request->post['config_disable_cart_button_text'];
		} else {
			$data['config_disable_cart_button_text'] = $this->config->get('config_disable_cart_button_text');
		}
		if (isset($this->request->post['config_developer_mode'])) {
			$data['config_developer_mode'] = $this->request->post['config_developer_mode'];
		} else {
			$data['config_developer_mode'] = $this->config->get('config_developer_mode');
		}
		if (isset($this->request->post['config_minify_css'])) {
			$data['config_minify_css'] = $this->request->post['config_minify_css'];
		} else {
			$data['config_minify_css'] = $this->config->get('config_minify_css');
		}
		if (isset($this->request->post['config_minify_js'])) {
			$data['config_minify_js'] = $this->request->post['config_minify_js'];
		} else {
			$data['config_minify_js'] = $this->config->get('config_minify_js');
		}		
		
		if (isset($this->request->post['config_disable_cart_button'])) {
			$data['config_disable_cart_button'] = $this->request->post['config_disable_cart_button'];
		} else {
			$data['config_disable_cart_button'] = $this->config->get('config_disable_cart_button');
		}
		if (isset($this->request->post['config_disable_fastorder_button'])) {
			$data['config_disable_fastorder_button'] = $this->request->post['config_disable_fastorder_button'];
		} else {
			$data['config_disable_fastorder_button'] = $this->config->get('config_disable_fastorder_button');
		}
		if (isset($this->request->post['config_ns_themes_custom_bg_mode'])) {
			$data['config_ns_themes_custom_bg_mode'] = $this->request->post['config_ns_themes_custom_bg_mode'];
		} else {
			$data['config_ns_themes_custom_bg_mode'] = $this->config->get('config_ns_themes_custom_bg_mode');
		}
		$this->load->model('tool/image');
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		if (isset($this->request->post['config_themes_custom_bg_img_preview'])) {
			$data['config_themes_custom_bg_img_preview'] = $this->request->post['config_themes_custom_bg_img_preview'];
		} else {
			$data['config_themes_custom_bg_img_preview'] = $this->config->get('config_themes_custom_bg_img_preview');
		}

		if (isset($this->request->post['config_themes_custom_bg_img_preview']) && is_file(DIR_IMAGE . $this->request->post['config_themes_custom_bg_img_preview'])) {
			$data['bg_img_preview'] = $this->model_tool_image->resize($this->request->post['config_themes_custom_bg_img_preview'], 100, 100);
			$data['bg_img_val'] = $this->config->get('config_themes_custom_bg_img_preview');
		} elseif ($this->config->get('config_themes_custom_bg_img_preview') && is_file(DIR_IMAGE . $this->config->get('config_themes_custom_bg_img_preview'))) {
			$data['bg_img_preview'] = $this->model_tool_image->resize($this->config->get('config_themes_custom_bg_img_preview'), 100, 100);
			$data['bg_img_val'] = $this->config->get('config_themes_custom_bg_img_preview');
		} else {
			$data['bg_img_preview'] = $this->model_tool_image->resize('no_image.png', 100, 100);
			$data['bg_img_val'] = $this->config->get('config_themes_custom_bg_img_preview');
		}
		if (isset($this->request->post['config_themes_custom_bg_attachment'])) {
			$data['config_themes_custom_bg_attachment'] = $this->request->post['config_themes_custom_bg_attachment'];
		} else {
			$data['config_themes_custom_bg_attachment'] = $this->config->get('config_themes_custom_bg_attachment');
		}
		
		if (isset($this->request->post['config_themes_custom_bg_position'])) {
			$data['config_themes_custom_bg_position'] = $this->request->post['config_themes_custom_bg_position'];
		} else {
			$data['config_themes_custom_bg_position'] = $this->config->get('config_themes_custom_bg_position');
		}
		if (isset($this->request->post['config_themes_custom_bg_repeat'])) {
			$data['config_themes_custom_bg_repeat'] = $this->request->post['config_themes_custom_bg_repeat'];
		} else {
			$data['config_themes_custom_bg_repeat'] = $this->config->get('config_themes_custom_bg_repeat');
		}
		
		if (isset($this->request->post['config_ns_themes_custom_bg_mode_color'])) {
			$data['config_ns_themes_custom_bg_mode_color'] = $this->request->post['config_ns_themes_custom_bg_mode_color'];
		} else {
			$data['config_ns_themes_custom_bg_mode_color'] = $this->config->get('config_ns_themes_custom_bg_mode_color');
		}
		
		if (isset($this->request->post['config_additional_settings_newstore'])) {
			$data['config_additional_settings_newstore'] = $this->request->post['config_additional_settings_newstore'];
		} else {
			$data['config_additional_settings_newstore'] = $this->config->get('config_additional_settings_newstore');
		}
		
		return $this->load->view('module/newstore/general_menu.tpl', $data);
	}
}