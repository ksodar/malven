<?php
class ControllerCommonHeader extends Controller {

		public function login_validate($data = array()) {
	$this->load->language('checkout/checkout');
		
		$json = array();
		$this->load->model('account/customer');
		
		if ($this->customer->isLogged()) {
			$json['islogged'] = true;
		}else if(isset($this->request->post)) {
			if (!$this->customer->login($this->request->post['email'], $this->request->post['password'])) {
				$json['error'] = $this->language->get('error_login');
			}
			$customer_info = $this->model_account_customer->getCustomerByEmail($this->request->post['email']);
			if ($customer_info && !$customer_info['approved']) {
				$json['error'] = $this->language->get('error_approved');
			}
		} else {
			$json['error'] = $this->language->get('error_warning');
		}
		
		if(!$json) {
			$json['success'] = true;
			unset($this->session->data['guest']);
			$this->load->model('account/address');

			if ($this->config->get('config_tax_customer') == 'payment') {
				$this->session->data['payment_address'] = $this->model_account_address->getAddress($this->customer->getAddressId());
			}

			if ($this->config->get('config_tax_customer') == 'shipping') {
				$this->session->data['shipping_address'] = $this->model_account_address->getAddress($this->customer->getAddressId());
			}

			$this->load->model('account/activity');

			$activity_data = array(
				'customer_id' => $this->customer->getId(),
				'name'        => $this->customer->getFirstName() . ' ' . $this->customer->getLastName()
			);

			$this->model_account_activity->addActivity('login', $activity_data);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));		
	}
		
	public function index() {
        
        $data['fcpdata'] = $this->config->get('fcpdata');
      
		// Analytics
		$this->load->model('extension/extension');

		$data['analytics'] = array();

		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('analytics/' . $analytic['code']);
			}
		}

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
		}

		$data['title'] = $this->document->getTitle();

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}


				$data['agreedata'] = $this->config->get('agreedata');
			

		$data['config_fixed_panel_top'] = $this->config->get('config_fixed_panel_top');
		$data['config_main_menu_selection'] = $this->config->get('config_main_menu_selection');		
		$data['config_change_color_icon_sticker_popular'] = $this->config->get('config_change_color_icon_sticker_popular');
		$data['config_change_background_sticker_popular'] = $this->config->get('config_change_background_sticker_popular');
		$data['config_change_color_text_sticker_popular'] = $this->config->get('config_change_color_text_sticker_popular');
		$data['config_change_color_icon_sticker_special'] = $this->config->get('config_change_color_icon_sticker_special');
		$data['config_change_background_sticker_special'] = $this->config->get('config_change_background_sticker_special');
		$data['config_change_color_text_sticker_special'] = $this->config->get('config_change_color_text_sticker_special');
		$data['config_change_color_icon_sticker_topbestseller'] = $this->config->get('config_change_color_icon_sticker_topbestseller');
		$data['config_change_background_sticker_topbestseller'] = $this->config->get('config_change_background_sticker_topbestseller');
		$data['config_change_color_text_sticker_topbestseller'] = $this->config->get('config_change_color_text_sticker_topbestseller');
		$data['config_change_color_icon_sticker_newproduct'] = $this->config->get('config_change_color_icon_sticker_newproduct');
		$data['config_change_background_sticker_newproduct'] = $this->config->get('config_change_background_sticker_newproduct');
		$data['config_change_color_text_sticker_newproduct'] = $this->config->get('config_change_color_text_sticker_newproduct');	
		$data['config_ns_themes_custom_bg_mode'] = $this->config->get('config_ns_themes_custom_bg_mode');
		$data['config_themes_custom_bg_img_preview'] = $this->config->get('config_themes_custom_bg_img_preview');
		$data['config_themes_custom_bg_repeat'] = $this->config->get('config_themes_custom_bg_repeat');
		$data['config_themes_custom_bg_attachment'] = $this->config->get('config_themes_custom_bg_attachment');
		$data['config_ns_themes_custom_bg_mode_color'] = $this->config->get('config_ns_themes_custom_bg_mode_color');
		$data['config_themes_custom_bg_attachment'] = $this->config->get('config_themes_custom_bg_attachment');
		$data['config_themes_custom_bg_position'] = $this->config->get('config_themes_custom_bg_position');
		$data['config_on_off_shopping_cart_hover'] = $this->config->get('config_on_off_shopping_cart_hover');
		$data['custom_style'] = $this->config->get('config_custom_style_newstore');
		$data['color_schem'] = $this->config->get('config_design_template_color_theme');
		$design_fastorder = $this->config->get('config_select_design_fastorder');
		$callbackpro = $this->config->get('callbackpro');
		$design_callback = $callbackpro['select_design_theme_callback'];
		$design_special_timer = $this->config->get('config_design_special_timer');
		
		require_once(DIR_SYSTEM . 'minifyns/startup.php');
		$newstore2 = new Newstore();
		$this->registry->set('newstore', $newstore2);
		$newstore2->utils = new NewstoreUtils($this->registry);
		$newstore2->cache = new NewstoreCache($this->registry);
		$newstore2->minifier = new NewstoreMinifier($newstore2->cache);
		$newstore2->cache->setDeveloperMode($this->config->get('config_developer_mode'));
		$newstore2->minifier->setMinifyCss($this->config->get('config_minify_css'));	
		$newstore2->minifier->addStyle('catalog/view/theme/newstore/stylesheet/edit_product.css');
		$newstore2->minifier->addStyle('catalog/view/javascript/jquery/magnific/magnific-popup.css');
		$newstore2->minifier->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		$newstore2->minifier->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.transitions.css');
		$newstore2->minifier->addStyle('catalog/view/javascript/bootstrap/css/bootstrap-select.css');
		$newstore2->minifier->addStyle('catalog/view/javascript/font-awesome/css/font-awesome.min.css');
		$newstore2->minifier->addStyle('catalog/view/theme/newstore/stylesheet/stylesheet.css');
		$newstore2->minifier->addStyle('catalog/view/theme/newstore/stylesheet/stickers.css');
		$newstore2->minifier->addStyle('catalog/view/theme/newstore/stylesheet/tabs.css');
		$newstore2->minifier->addStyle('catalog/view/theme/newstore/stylesheet/quickview.css');
		$newstore2->minifier->addStyle('catalog/view/theme/newstore/stylesheet/theme_scheme/theme_'. $data['color_schem'] .'.css');
		$newstore2->minifier->addStyle('catalog/view/theme/newstore/stylesheet/csseditor.css');
		$newstore2->minifier->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');
		if($design_special_timer){ 
			$newstore2->minifier->addStyle('catalog/view/theme/newstore/js/productany/js/countdown/jquery.countdown_'. $design_special_timer .'.css');
		} else { 
			$newstore2->minifier->addStyle('catalog/view/theme/newstore/js/productany/js/countdown/jquery.countdown_1.css');
		}
		if($design_fastorder){ 
			$newstore2->minifier->addStyle('catalog/view/theme/newstore/stylesheet/popup-fastorder/fastorder'. $design_fastorder .'.css');
		} else { 
			$newstore2->minifier->addStyle('catalog/view/theme/newstore/stylesheet/popup-fastorder/fastorder1.css');
		}
		if($design_callback=='1'){ 
			$newstore2->minifier->addStyle('catalog/view/theme/newstore/stylesheet/popup-callback/callback.css');
		} else { 
			$newstore2->minifier->addStyle('catalog/view/theme/newstore/stylesheet/popup-callback/callback2.css');
		}
		if ($data['custom_style'] !='') { 
			$newstore2->minifier->addStyle('catalog/view/theme/newstore/stylesheet/'. $data['custom_style'] .'.css');
		}
		$data['cssnewstore'] = $newstore2->minifier->css();
		
		$newstore2->minifier->setMinifyJs($this->config->get('config_minify_js'));
		$newstore2->minifier->addScript('catalog/view/javascript/jquery/jquery-2.1.1.min.js', 'header'); 
		$newstore2->minifier->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js', 'header'); 
		$newstore2->minifier->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.js', 'header'); 
		if(file_exists('catalog/view/javascript/mf/jquery-ui.min.js')) {
			$newstore2->minifier->addScript('catalog/view/javascript/mf/jquery-ui.min.js', 'header'); 
		}
		$newstore2->minifier->addScript('catalog/view/javascript/bootstrap/js/bootstrap.min.js', 'header'); 
		$newstore2->minifier->addScript('catalog/view/javascript/bootstrap/js/bootstrap-select.js', 'header'); 
		$newstore2->minifier->addScript('catalog/view/theme/newstore/js/jquery.menu-aim.js', 'header'); 
		$newstore2->minifier->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js', 'header'); 
		$newstore2->minifier->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js', 'header'); 	
		$newstore2->minifier->addScript('catalog/view/theme/newstore/js/showmore.js', 'header'); 
		$newstore2->minifier->addScript('catalog/view/theme/newstore/js/common.js', 'header'); 
		$newstore2->minifier->addScript('catalog/view/theme/newstore/js//maskedinput.js', 'header'); 
		$newstore2->minifier->addScript('catalog/view/theme/newstore/js/newfastorder.js', 'header'); 
		$newstore2->minifier->addScript('catalog/view/theme/newstore/js/callback_send.js', 'header'); 
		$newstore2->minifier->addScript('catalog/view/theme/newstore/js/popup.js', 'header'); 
		$newstore2->minifier->addScript('catalog/view/theme/newstore/js/productany/js/countdown/jquery.countdown.js', 'header'); 		
		$data['jsnewstore'] = $newstore2->minifier->js('header');
				
		$header_nav_menu_link_array = $this->config->get('header_nav_menu_link');
		if(isset($header_nav_menu_link_array)) {
			$header_nav_menu_link = $this->config->get('header_nav_menu_link');
		} else {
			$header_nav_menu_link = array();
		}
		$data['header_nav_menu_links'] = array();
		
		foreach ($header_nav_menu_link as $result) {				
			$data['header_nav_menu_links'][] = array(
				'icon_image' 	=> $result['icon_image'],
				'title' 		=> $result['title'],
				'link'  		=> $result['link'][$this->config->get('config_language_id')],
				'popup'  		=> $result['popup'],		
			);	
		}
		$data['home_page'] = (isset($this->request->server['HTTPS']) ? HTTPS_SERVER : HTTP_SERVER) . substr($this->request->server['REQUEST_URI'], 1, (strlen($this->request->server['REQUEST_URI'])-1));
			$this->load->model('module/nsmenu');
			$this->load->model('catalog/category');
			$this->load->model('catalog/product');
			$data['hmenu_type'] = $this->config->get('horizontal_menu_width_setting');
			$data['items'] = array();
			$data['additional'] = array();
			$config_menu_item = $this->config->get('config_menu_item');
			if(!empty($config_menu_item)) {
				$menu_items = $this->config->get('config_menu_item');
			} else {
				$menu_items = array();
			}
			if (!empty($menu_items)){
				foreach ($menu_items as $key => $value) {
					$sort_menu[$key] = $value['sort_menu'];
				} 
				array_multisort($sort_menu, SORT_ASC, $menu_items);
			}
		
			if(count($menu_items)){
				foreach($menu_items as $datamenu){
					if($datamenu['menu_type']=="link" && $datamenu['status'] !='0')	{
						$data['items'][]=$this->model_module_nsmenu->MegaMenuTypeLink($datamenu);
					}
					if($datamenu['additional_menu']=="additional" && $datamenu['status'] !='0')	{
						$data['additional'][] = 'additional';
					}
					if($datamenu['menu_type']=="information" && $datamenu['status'] !='0')	{
						$data['items'][]=$this->model_module_nsmenu->MegaMenuTypeInformation($datamenu);
					}
					if($datamenu['menu_type']=="manufacturer" && $datamenu['status'] !='0')	{
						$data['items'][]=$this->model_module_nsmenu->MegaMenuTypeManufacturer($datamenu);
					}
					if($datamenu['menu_type']=="product" && $datamenu['status'] !='0'){
						if(!empty($datamenu['products_list'])){
							$data['items'][]=$this->model_module_nsmenu->MegaMenuTypeProduct($datamenu);
						}
					}
					if($datamenu['menu_type']=="category" && $datamenu['status'] !='0')	{
						$data['items'][] = $this->model_module_nsmenu->MegaMenuTypeCategory($datamenu);
					}
					if($datamenu['menu_type']=="html" && $datamenu['status'] !='0')	{
						$data['items'][]=$this->model_module_nsmenu->MegaMenuTypeHtml($datamenu);
					}				
				}
			}
			$this->load->model('ns/moduleonoff');
			
			$data['on_off_module_callback'] = $this->model_ns_moduleonoff->getCallbackModuleModification();
			$this->load->language('ns/newstorelang');
			$data['days'] = $this->language->get('days');	
			$data['hours'] = $this->language->get('hours');	
			$data['minutes'] = $this->language->get('minutes');	
			$data['sec'] = $this->language->get('sec');	
			$data['text_login'] = $this->language->get('text_login');
			$data['button_login'] = $this->language->get('button_login');
			$data['register'] = $this->url->link('account/register', '', 'SSL');
			$data['forgotten'] = $this->url->link('account/forgotten', '', 'SSL');
			$data['entry_email'] = $this->language->get('entry_email');
			$data['entry_password'] = $this->language->get('entry_password');
			$data['text_forgotten'] = $this->language->get('text_forgotten');
			$data['text_register'] = $this->language->get('text_register');
						
			$data['text_showmore'] = $this->language->get('text_showmore');
			$data['text_callback_header'] = $this->language->get('text_callback_header');
			$data['button_shopping'] = $this->language->get('button_shopping');
			$data['button_checkout'] = $this->language->get('button_checkout');
			$data['newstorecheckout'] = $this->url->link('checkout/newstorecheckout', '', 'SSL');
			$data['general_menu_on_off'] = $this->config->get('config_menu_always_open_on_the_left');
			$this->load->language('product/category');
			$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$data['compare'] = $this->url->link('product/compare');
			$data['main_phone'] = $this->config->get('config_main_phone'); //added
			$data['header_phones'] = $this->config->get('config_phones_header');
			$header_phones = $this->config->get('config_phones_header');
			$data['lang_id'] = $this->config->get('config_language_id');
			$data['config_schedule_header'] = $this->config->get('config_schedule_header'); //added
			$this->load->model('tool/image');
			$data['email_header_contact'] = $this->config->get('config_email_header_contact'); //added
			$data['skype_header_contact'] = $this->config->get('config_skype_header_contact'); //added		
			$data['header_social'] = $this->config->get('config_social');
			$header_social = $this->config->get('config_social');		
			if(!empty($header_social)){
				$data['config_social_array'] = array();				
				foreach ($header_social as $social_header) {
					if (isset($social_header['image']) && is_file(DIR_IMAGE . $social_header['image'])) {
						$data['icon_phone'] = $this->model_tool_image->resize($social_header['image'], 25, 25);
					} else {
						$data['icon_phone'] = '';
					}					
				$data['config_social_array'][] = array(
						'icon_phone'      	=> $data['icon_phone'],
						'social'      		=> $social_header['social'],
					);	
				}				
			}
			if(!empty($header_phones)){
			$data['config_phones_array'] = array();
			foreach ($header_phones as $phone_header) {
				if (isset($phone_header['image']) && is_file(DIR_IMAGE . $phone_header['image'])) {
						$data['icon_phone'] = $this->model_tool_image->resize($phone_header['image'], 25, 25);
					} else {
						$data['icon_phone'] = '';
				}								
				$data['config_phones_array'][] = array(
						'icon_phone'      	=> $data['icon_phone'],
						'phone'      		=> $phone_header['phone'],
					);	
				}
			}	
		
		$this->load->language('common/header');
		$data['og_url'] = (isset($this->request->server['HTTPS']) ? HTTPS_SERVER : HTTP_SERVER) . substr($this->request->server['REQUEST_URI'], 1, (strlen($this->request->server['REQUEST_URI'])-1));
		$data['og_image'] = $this->document->getOgImage();

		$data['text_home'] = $this->language->get('text_home');

		// Wishlist
		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
		} else {
			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		}

		$data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));

		$data['text_account'] = $this->language->get('text_account');
		$data['text_register'] = $this->language->get('text_register');
		$data['text_login'] = $this->language->get('text_login');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_page'] = $this->language->get('text_page');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_all'] = $this->language->get('text_all');

		$data['home'] = $this->url->link('common/home');

			$data['lang_id'] = $this->config->get('config_language_id');
			$data['callbackpro'] = $this->config->get('callbackpro');	
			
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['register'] = $this->url->link('account/register', '', 'SSL');
		$data['login'] = $this->url->link('account/login', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['transaction'] = $this->url->link('account/transaction', '', 'SSL');
		$data['download'] = $this->url->link('account/download', '', 'SSL');
		$data['logout'] = $this->url->link('account/logout', '', 'SSL');
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
		$data['contact'] = $this->url->link('information/contact');
		$data['telephone'] = $this->config->get('config_telephone');

		$status = true;

		if (isset($this->request->server['HTTP_USER_AGENT'])) {
			$robots = explode("\n", str_replace(array("\r\n", "\r"), "\n", trim($this->config->get('config_robots'))));

			foreach ($robots as $robot) {
				if ($robot && strpos($this->request->server['HTTP_USER_AGENT'], trim($robot)) !== false) {
					$status = false;

					break;
				}
			}
		}

		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}

				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}

		$data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		$data['search'] = $this->load->controller('common/search');
		$data['cart'] = $this->load->controller('common/cart');

		// For page specific css
		if (isset($this->request->get['route'])) {
			if (isset($this->request->get['product_id'])) {
				$class = '-' . $this->request->get['product_id'];
			} elseif (isset($this->request->get['path'])) {
				$class = '-' . $this->request->get['path'];
			} elseif (isset($this->request->get['manufacturer_id'])) {
				$class = '-' . $this->request->get['manufacturer_id'];
			} else {
				$class = '';
			}

			$data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
		} else {
			$data['class'] = 'common-home';
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/header.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/header.tpl', $data);
		} else {
			return $this->load->view('default/template/common/header.tpl', $data);
		}
	}
}
