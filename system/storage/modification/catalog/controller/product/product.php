<?php
class ControllerProductProduct extends Controller {
	private $error = array();

	public function index() {
       
        $data['fcpdata'] = $this->config->get('fcpdata');
      

			if (VERSION < 2.2) {
				require_once(DIR_SYSTEM . 'library/user.php');
				$this->registry->set('user', new User($this->registry));
				if ($this->user->isLogged()){ 
				$editorusergroupid = $this->user->getGroupId();
					$data['user_logged'] = true;
				} else {
					$data['user_logged'] = false;
				}
			} else {
				$this->registry->set('user', new Cart\User($this->registry));				
				if ($this->user->isLogged()){ 
				$editorusergroupid = $this->user->getGroupId();
					$data['user_logged'] = true;
				} else {
					$data['user_logged'] = false;
				}
			}	
		if($data['user_logged']) { 
			$this->load->model('catalog/product_quick');
			$this->language->load('module/groupeditor/btngroupeditor');		
			$data['pge_text_admin_setting'] 		= $this->language->get('pge_text_admin_setting');
			$data['pge_text_description'] 			= $this->language->get('pge_text_description');
			$data['pge_text_categories'] 			= $this->language->get('pge_text_categories');
			$data['pge_text_images_product'] 		= $this->language->get('pge_text_images_product');
			$data['pge_text_images_product_url'] 	= $this->language->get('pge_text_images_product_url');
			$data['pge_text_price'] 				= $this->language->get('pge_text_price');
			$data['pge_text_special'] 				= $this->language->get('pge_text_special');
			$data['pge_text_catalog_prod_edit'] 	= $this->language->get('pge_text_catalog_prod_edit');
			$data['pge_text_images_product_google'] = $this->language->get('pge_text_images_product_google');
			$data['pge_text_price_setting'] 		= $this->language->get('pge_text_price_setting');
			$data['pge_text_related'] 				= $this->language->get('pge_text_related');
			$data['pge_text_code'] 					= $this->language->get('pge_text_code');
			$data['pge_text_attribute'] 			= $this->language->get('pge_text_attribute');
			$data['pge_text_option'] 				= $this->language->get('pge_text_option');
			$data['pge_text_discount_title'] 		= $this->language->get('pge_text_discount_title');
			$data['token'] = $this->session->data['token'];	
			if(!empty($editorusergroupid)){
				$user_groups_view = $this->model_catalog_product_quick->getUserGroupsEditView($editorusergroupid);
				$data['view_open_description_edit'] 	= $user_groups_view['description_edit'];
				$data['view_open_category_edit'] 		= $user_groups_view['category_edit'];
				$data['view_open_image_edit'] 			= $user_groups_view['image_edit'];
				$data['view_open_image_url_edit'] 		= $user_groups_view['image_url_edit'];
				$data['view_open_image_google_edit'] 	= $user_groups_view['image_google_edit'];
				$data['view_open_price_edit'] 			= $user_groups_view['price_edit'];
				$data['view_open_special_edit'] 		= $user_groups_view['special_edit'];
				$data['view_open_related_edit'] 		= $user_groups_view['related_edit'];
				$data['view_open_code_edit'] 			= $user_groups_view['code_edit'];
				$data['view_open_attribute_edit'] 		= $user_groups_view['attribute_edit'];
				$data['view_open_option_edit'] 			= $user_groups_view['option_edit'];
				$data['link_module_edit_admin'] 		= $user_groups_view['link_module_edit_admin'];
				$data['link_product_admin'] 			= $user_groups_view['link_product_admin'];
			}			
		}
			
		$this->load->language('product/product');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$this->load->model('catalog/category');

		if (isset($this->request->get['path'])) {
			$path = '';

			$parts = explode('_', (string)$this->request->get['path']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = $path_id;
				} else {
					$path .= '_' . $path_id;
				}

				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $path)
					);
				}
			}

			// Set the last category breadcrumb
			$category_info = $this->model_catalog_category->getCategory($category_id);

			if ($category_info) {
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

				if (isset($this->request->get['limit'])) {
					$url .= '&limit=' . $this->request->get['limit'];
				}

				$data['breadcrumbs'][] = array(
					'text' => $category_info['name'],
					'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url)
				);
			}
		}

		$this->load->model('catalog/manufacturer');

		if (isset($this->request->get['manufacturer_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_brand'),
				'href' => $this->url->link('product/manufacturer')
			);

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

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($this->request->get['manufacturer_id']);

			if ($manufacturer_info) {
				$data['breadcrumbs'][] = array(
					'text' => $manufacturer_info['name'],
					'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . $url)
				);
			}
		}

		if (isset($this->request->get['search']) || isset($this->request->get['tag'])) {
			$url = '';

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
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

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_search'),
				'href' => $this->url->link('product/search', $url)
			);
		}

		if (isset($this->request->get['product_id'])) {
			$product_id = (int)$this->request->get['product_id'];
		} else {
			$product_id = 0;
		}

		$this->load->model('catalog/product');

		$product_info = $this->model_catalog_product->getProduct($product_id);

		if ($product_info) {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['manufacturer_id'])) {
				$url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
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

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $product_info['name'],
				'href' => $this->url->link('product/product', $url . '&product_id=' . $this->request->get['product_id'])
			);

			if ($product_info['meta_title']) {
				$this->document->setTitle($product_info['meta_title']);
			} else {
				$this->document->setTitle($product_info['name']);
			}

			$this->document->setDescription($product_info['meta_description']);
			$this->document->setKeywords($product_info['meta_keyword']);
			$this->document->addLink($this->url->link('product/product', 'product_id=' . $this->request->get['product_id']), 'canonical');
			$this->document->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js');
			$this->document->addStyle('catalog/view/javascript/jquery/magnific/magnific-popup.css');
			$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
			$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/locale/'.$this->session->data['language'].'.js');
			$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
			$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

			if ($product_info['meta_h1']) {
				$data['heading_title'] = $product_info['meta_h1'];
			} else {
				$data['heading_title'] = $product_info['name'];
			}


			$data['lang_id'] = $this->config->get('config_language_id');
			$data['config_text_open_form_send_order'] = $this->config->get('config_text_open_form_send_order');	
			$data['color_button_open_form_send_order'] = $this->config->get('config_color_button_open_form_send_order');			
			$data['icon_open_form_send_order'] = $this->config->get('config_icon_open_form_send_order');										
			$data['config_on_off_qo_product_page'] = $this->config->get('config_on_off_qo_product_page');					
		
			$data['text_select'] = $this->language->get('text_select');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_reward'] = $this->language->get('text_reward');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_stock'] = $this->language->get('text_stock');
			$data['text_discount'] = $this->language->get('text_discount');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_option'] = $this->language->get('text_option');
			$data['text_minimum'] = sprintf($this->language->get('text_minimum'), $product_info['minimum']);
			$data['text_write'] = $this->language->get('text_write');
			$data['text_login'] = sprintf($this->language->get('text_login'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
			$data['text_note'] = $this->language->get('text_note');
			$data['text_tags'] = $this->language->get('text_tags');
			$data['text_related'] = $this->language->get('text_related');
			$data['text_payment_recurring'] = $this->language->get('text_payment_recurring');
			$data['text_loading'] = $this->language->get('text_loading');

			$data['entry_qty'] = $this->language->get('entry_qty');
			$data['entry_name'] = $this->language->get('entry_name');
			$data['entry_review'] = $this->language->get('entry_review');
			$data['entry_rating'] = $this->language->get('entry_rating');
			$data['entry_good'] = $this->language->get('entry_good');
			$data['entry_bad'] = $this->language->get('entry_bad');

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_upload'] = $this->language->get('button_upload');
			$data['button_continue'] = $this->language->get('button_continue');

			$this->load->model('catalog/review');

			$data['tab_description'] = $this->language->get('tab_description');
			$data['tab_attribute'] = $this->language->get('tab_attribute');
			$data['tab_review'] = sprintf($this->language->get('tab_review'), $product_info['reviews']);

			$data['product_id'] = (int)$this->request->get['product_id'];
			$data['manufacturer'] = $product_info['manufacturer'];
			$data['manufacturers'] = $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $product_info['manufacturer_id']);
			$data['model'] = $product_info['model'];
			$data['reward'] = $product_info['reward'];
			$data['points'] = $product_info['points'];
			$data['description'] = html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8');


        $tabs_product_on_off = $this->config->get('tabs_product_on_off');
        $data['product_additional_tabs'] = array();

        if (isset($tabs_product_on_off['status']) && $tabs_product_on_off['status']) {
          $this->load->model('catalog/product_tabs');

          $product_additional_tabs = $this->model_catalog_product_tabs->getTabs($product_id);

          if ($product_additional_tabs) {            
            foreach ($product_additional_tabs as $result) {
              $data['product_additional_tabs'][] = array(
					'title' 		=> $result['title'],
					'text'  		=> html_entity_decode($result['text'], ENT_QUOTES, 'UTF-8'),
					'icon_tabs'  	=> $result['icon_tabs']
              );
            }
          }
        }
      
			if ($product_info['quantity'] <= 0) {
				$data['stock'] = $product_info['stock_status'];
			} elseif ($this->config->get('config_stock_display')) {
				$data['stock'] = $product_info['quantity'];
			} else {
				$data['stock'] = $this->language->get('text_instock');
			}

			$this->load->model('tool/image');

			$data['str_timer_1'] = substr($product_info['date_end'],0,strpos($product_info['date_end'],"-")); 
			$data['str_timer_2'] = substr(str_replace("-","", substr($product_info['date_end'],strpos($product_info['date_end'],"-"))),0,2) - 1;
			$data['str_timer_3'] = substr(str_replace("-","", substr($product_info['date_end'],strpos($product_info['date_end'],"-"))),2);
	
			$data['show_special_timer_module'] = $this->config->get('config_show_special_timer_module');
			$data['on_off_sticker_special'] = $this->config->get('on_off_sticker_special');
			$data['config_change_icon_sticker_special'] = $this->config->get('config_change_icon_sticker_special');
			$data['on_off_sticker_topbestseller'] = $this->config->get('on_off_sticker_topbestseller');
			$data['config_limit_order_product_topbestseller'] = $this->config->get('config_limit_order_product_topbestseller');
			$data['config_change_icon_sticker_topbestseller'] = $this->config->get('config_change_icon_sticker_topbestseller');
			$data['on_off_sticker_popular'] = $this->config->get('on_off_sticker_popular');
			$data['config_min_quantity_popular'] = $this->config->get('config_min_quantity_popular');
			$data['config_change_icon_sticker_popular'] = $this->config->get('config_change_icon_sticker_popular');
			$data['on_off_sticker_newproduct'] = $this->config->get('on_off_sticker_newproduct');
			$data['config_limit_day_newproduct'] = $this->config->get('config_limit_day_newproduct');
			$data['config_change_icon_sticker_newproduct'] = $this->config->get('config_change_icon_sticker_newproduct');
			
			
			$data['show_review_plus'] = $this->config->get('config_show_review_plus');
			$data['show_review_plus_requared'] = $this->config->get('config_show_review_plus_requared');
			$data['show_review_minus'] = $this->config->get('config_show_review_minus');
			$data['show_review_minus_requared'] = $this->config->get('config_show_review_minus_requared');
			
			$data['change_text_cart_button_out_of_stock'] = $this->config->get('config_change_text_cart_button_out_of_stock');	
			$data['show_nsproduct_btn_fastorder'] = $this->config->get('config_show_nsproduct_btn_fastorder');	
			$data['show_nsproduct_btn_wishlist'] = $this->config->get('config_show_nsproduct_btn_wishlist');	
			$data['show_nsproduct_btn_compare'] = $this->config->get('config_show_nsproduct_btn_compare');	
			$this->load->model('ns/moduleonoff');
			$data['ns_on_off_module_quick_order'] = $this->model_ns_moduleonoff->getQuickOrderModuleModification();
			$this->load->language('ns/newstorelang');
			$data['required_text_option'] = $this->language->get('required_text_option');
			$data['entry_plus'] = $this->language->get('entry_plus');
			$data['entry_minus'] = $this->language->get('entry_minus');
			$data['btn_add_new_review'] = $this->language->get('btn_add_new_review');
			$data['days'] = $this->language->get('days');
			$data['hours'] = $this->language->get('hours');
			$data['minutes'] = $this->language->get('minutes');
			$data['sec'] = $this->language->get('sec');
			$data['text_find_cheap'] = $this->language->get('text_find_cheap');
			$data['ns_on_off_countdown_product'] = $this->config->get('config_on_off_countdown_product');
			$data['ns_on_off_product_sharing_facebock'] = $this->config->get('config_on_off_product_sharing_facebock');
			$data['ns_on_off_product_sharing_twitter'] = $this->config->get('config_on_off_product_sharing_twitter');
			$data['ns_on_off_product_sharing_googleplus'] = $this->config->get('config_on_off_product_sharing_googleplus');
			$data['ns_on_off_product_sharing_mailru'] = $this->config->get('config_on_off_product_sharing_mailru');
			$data['ns_on_off_product_sharing_vk'] = $this->config->get('config_on_off_product_sharing_vk');
			$data['ns_on_off_product_sharing_ok'] = $this->config->get('config_on_off_product_sharing_ok');
			$data['ns_options_hidden_count'] = $this->config->get('config_options_hidden_count');
			
			$data['date_end'] = $product_info['date_end'];
			$data['special_countdown_final'] = $this->language->get('special_countdown_final');
			$data['text_special_hurry_quantity'] = $this->language->get('text_special_hurry_quantity');
			$data['special_countdown_pcs'] = $this->language->get('special_countdown_pcs');
			$data['text_facebook'] = $this->language->get('text_facebook');
			$data['text_twitter'] = $this->language->get('text_twitter');
			$data['text_facebook'] = $this->language->get('text_facebook');
			$data['text_googleplus'] = $this->language->get('text_googleplus');
			$data['text_mailru'] = $this->language->get('text_mailru');
			$data['text_vk'] = $this->language->get('text_vk');
			$data['text_ok'] = $this->language->get('text_ok');
			
			$data['lang_id'] = $this->config->get('config_language_id');
			$data['text_sticker_special'] = $this->config->get('config_change_text_sticker_special'); //added
			$data['text_sticker_newproduct'] = $this->config->get('config_change_text_sticker_newproduct'); //added
			$data['text_sticker_popular'] = $this->config->get('config_change_text_sticker_popular'); //added
			$data['text_sticker_topbestseller'] = $this->config->get('config_change_text_sticker_topbestseller'); //added
			$top_best = $this->model_catalog_product->getTopSeller($this->request->get['product_id']);
			$data['top_bestsellers'] = $top_best['total'];
			$data['viewed'] = $product_info['viewed'];
			$data['date_available'] = $product_info['date_available'];
			$data['stock_quantity_count'] = $product_info['quantity'];
			if ($this->config->get('config_stock_display')) {
				$data['stock_quantity'] = $product_info['quantity'];
			} else {
				$data['stock_quantity'] = 'not_display';
			}

        $tabs_product_on_off = $this->config->get('tabs_product_on_off');
        $data['product_additional_tabs'] = array();

        if (isset($tabs_product_on_off['status']) && $tabs_product_on_off['status']) {
          $this->load->model('catalog/product_tabs');

          $product_additional_tabs = $this->model_catalog_product_tabs->getTabs($product_id);

          if ($product_additional_tabs) {            
            foreach ($product_additional_tabs as $result) {
              $data['product_additional_tabs'][] = array(
					'title' 		=> $result['title'],
					'text'  		=> html_entity_decode($result['text'], ENT_QUOTES, 'UTF-8'),
					'icon_tabs'  	=> $result['icon_tabs']
              );
            }
          }
        }
      
			if ($product_info['quantity'] <= 0) {
				$data['stock_status'] = $product_info['stock_status'];
			} else {
				$data['stock_status'] = $this->language->get('text_instock');
			}
			$data['disable_cart_button'] = $this->config->get('config_disable_cart_button'); //added
			$data['disable_fastorder_button'] = $this->config->get('config_disable_fastorder_button'); //added
			$data['product_quantity'] = $product_info['quantity'];
			$data['config_status_zoom_image'] = $this->config->get('config_status_zoom_image');
			$data['config_status_delivery_options'] = $this->config->get('config_status_delivery_options');
			$data['config_delivery_options_title'] = $this->config->get('config_delivery_options_title');
			$banner_delivery_option_items = $this->config->get('banner_delivery_option');
			if(isset($banner_delivery_option_items)){
				$banner_delivery_option = $this->config->get('banner_delivery_option');
			} else {
				$banner_delivery_option = array();
			}
			$data['banner_delivery_block'] = array();
			foreach ($banner_delivery_option as $result) {
				if(isset($result['popup'])){
					$result_popup = $result['popup'];
				} else {
					$result_popup = '0';
				}
				$data['banner_delivery_block'][] = array(
					'image' 		=> $this->model_tool_image->resize($result['image'], 50, 50),
					'title' 		=> $result['title'],
					'description' 	=> $result['description'],
					'link'  		=> $result['link'],
					'popup'  		=> $result_popup,
					'sort'  		=> $result['sort']
				);	
			}
			
			if (!empty($data['banner_delivery_block'])){
				foreach ($data['banner_delivery_block'] as $key => $value) {
					$sort[$key] = $value['sort'];
				} 
				array_multisort($sort, SORT_ASC, $data['banner_delivery_block']);
			}
			
			$data['show_stock_status'] = $this->config->get('config_show_stock_status');
				$config_disable_cart_button_text = $this->config->get('config_disable_cart_button_text');
				if(!empty($config_disable_cart_button_text[$this->config->get('config_language_id')]['disable_cart_button_text'])){
					$data['disable_cart_button_text'] = $config_disable_cart_button_text[$this->config->get('config_language_id')]['disable_cart_button_text'];
				} else {
					$data['disable_cart_button_text'] = $this->language->get('disable_cart_button_text');
				}
			

			if ($product_info['image']) {
				$data['popup'] = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'));
			} else {
				$data['popup'] = $this->model_tool_image->resize('no_image.png', $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'));;
			}

			if ($product_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height'));
				$this->document->setOgImage($data['thumb']);
			} else {
				$data['thumb'] = $this->model_tool_image->resize('no_image.png', $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height'));
			}

			$data['images'] = array();

			$results = $this->model_catalog_product->getProductImages($this->request->get['product_id']);

			foreach ($results as $result) {
				$data['images'][] = array(

			'thumb_hover' => $this->model_tool_image->resize($result['image'], $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_width')),
			
					'popup' => $this->model_tool_image->resize($result['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height')),
					'thumb' => $this->model_tool_image->resize($result['image'], $this->config->get('config_image_additional_width'), $this->config->get('config_image_additional_height'))
				);
			}

			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$data['price'] = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$data['price'] = false;
			}

			if ((float)$product_info['special']) {
				$data['special'] = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$data['special'] = false;
			}

			if ($this->config->get('config_tax')) {
				$data['tax'] = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price']);
			} else {
				$data['tax'] = false;
			}

			$discounts = $this->model_catalog_product->getProductDiscounts($this->request->get['product_id']);

			$data['discounts'] = array();

			foreach ($discounts as $discount) {
				$data['discounts'][] = array(
					'quantity' => $discount['quantity'],
					'price'    => $this->currency->format($this->tax->calculate($discount['price'], $product_info['tax_class_id'], $this->config->get('config_tax')))
				);
			}


          $data['price_value'] = $product_info['price'];
          $data['special_value'] = $product_info['special'];
          $data['tax_value'] = (float)$product_info['special'] ? $product_info['special'] : $product_info['price'];
          
          $var_currency = array();
          $var_currency['value'] = $this->currency->getValue();
          $var_currency['symbol_left'] = $this->currency->getSymbolLeft();
          $var_currency['symbol_right'] = $this->currency->getSymbolRight();
          $var_currency['decimals'] = $this->currency->getDecimalPlace();
          $var_currency['decimal_point'] = $this->language->get('decimal_point');
          $var_currency['thousand_point'] = $this->language->get('thousand_point');
          $data['currency'] = $var_currency;
          
          $data['dicounts_unf'] = $discounts;

          $data['tax_class_id'] = $product_info['tax_class_id'];
          $data['tax_rates'] = $this->tax->getRates(0, $product_info['tax_class_id']);
        

          if ((float)$product_info['special']) {
				$price2 = $this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax'));
				$special2 = $this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax'));
				$skidka = $special2/($price2/100)-100;
			} else {
				$skidka = "";
			}
			$data['skidka'] = $skidka;
        

          if ($data['price']) {
              $data['price'] = '<span class=\'autocalc-product-price\'>' . $data['price'] . '</span>';
          }
          if ($data['special']) {
              $data['special'] = '<span class=\'autocalc-product-special\'>' . $data['special'] . '</span>';
          }
          if ($data['points']) {
              $data['points'] = '<span class=\'autocalc-product-points\'>' . $data['points'] . '</span>';
          }
          
          $data['price_value'] = $product_info['price'];
          $data['special_value'] = $product_info['special'];
          $data['tax_value'] = (float)$product_info['special'] ? $product_info['special'] : $product_info['price'];
          $data['points_value'] = $product_info['points'];
          
          $var_currency_autocalc = array();
          $currency_code_autocalc = $this->currency->getValue();
          $var_currency_autocalc['value'] = $this->currency->getValue();
          $var_currency_autocalc['symbol_left'] = $this->currency->getSymbolLeft();
          $var_currency_autocalc['symbol_right'] = $this->currency->getSymbolRight();
          $var_currency_autocalc['decimals'] = $this->currency->getDecimalPlace();
          $var_currency_autocalc['decimal_point'] = $this->language->get('decimal_point');
          $var_currency_autocalc['thousand_point'] = $this->language->get('thousand_point');
          $data['currency_autocalc'] = $var_currency_autocalc;
          
          $data['dicounts_unf_autocalc'] = $discounts;

          $data['tax_class_id'] = $product_info['tax_class_id'];
          $data['tax_rates'] = $this->tax->getRates(0, $product_info['tax_class_id']);
      
			$data['options'] = array();

			foreach ($this->model_catalog_product->getProductOptions($this->request->get['product_id']) as $option) {
				$product_option_value_data = array();

				foreach ($option['product_option_value'] as $option_value) {
					if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
						if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
							$price = $this->currency->format($this->tax->calculate($option_value['price'], $product_info['tax_class_id'], $this->config->get('config_tax') ? 'P' : false));
						} else {
							$price = false;
						}

						$product_option_value_data[] = array(

          'price_value'                   => $option_value['price'],
          'points_value'                  => intval($option_value['points_prefix'].$option_value['points']),
      

			'color'    => $option_value['color'],
			'image_click' => $this->model_tool_image->resize($option_value['image'], $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height')),
			'image_zoom' => $this->model_tool_image->resize($option_value['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height')),
			'image_thumb' => $this->model_tool_image->resize($option_value['image'], $this->config->get('config_image_additional_width'), $this->config->get('config_image_additional_height')),
			

          'price_value'                   => $option_value['price'],
          'points_value'                  => intval($option_value['points_prefix'].$option_value['points']),
        
							'product_option_value_id' => $option_value['product_option_value_id'],
							'option_value_id'         => $option_value['option_value_id'],
							'name'                    => $option_value['name'],
							'image'                   => $this->model_tool_image->resize($option_value['image'], 50, 50),
							'price'                   => $price,
							'price_prefix'            => $option_value['price_prefix']
						);
					}
				}

				$data['options'][] = array(

			'status_color_type'    => $option['status_color_type'],
			
					'product_option_id'    => $option['product_option_id'],
					'product_option_value' => $product_option_value_data,
					'option_id'            => $option['option_id'],
					'name'                 => $option['name'],
					'type'                 => $option['type'],
					'value'                => $option['value'],
					'required'             => $option['required']
				);
			}

			if ($product_info['minimum']) {
				$data['minimum'] = $product_info['minimum'];
			} else {
				$data['minimum'] = 1;
			}

			$data['review_status'] = $this->config->get('config_review_status');

			if ($this->config->get('config_review_guest') || $this->customer->isLogged()) {
				$data['review_guest'] = true;
			} else {
				$data['review_guest'] = false;
			}

			if ($this->customer->isLogged()) {
				$data['customer_name'] = $this->customer->getFirstName() . '&nbsp;' . $this->customer->getLastName();
			} else {
				$data['customer_name'] = '';
			}

			$data['reviews'] = sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']);
			$data['rating'] = (int)$product_info['rating'];

			// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$data['captcha'] = $this->load->controller('captcha/' . $this->config->get('config_captcha'));
			} else {
				$data['captcha'] = '';
			}

			$data['attribute_groups'] = $this->model_catalog_product->getProductAttributes($this->request->get['product_id']);

			$data['products'] = array();

			$results = $this->model_catalog_product->getProductRelated($this->request->get['product_id']);

			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}


			$top_bestsellers = $this->model_catalog_product->getTopSeller($result['product_id']);
			$results_img = $this->model_catalog_product->getProductImages($result['product_id']);
			$additional_image_hover = '';
			$additional_image_hover_on_off = $this->config->get('config_on_off_latest_slider_additional_image');
			if($additional_image_hover_on_off =='2'){
				foreach ($results_img as $key => $result_img) {
					if ($key < 1) {
						$additional_image_hover = $this->model_tool_image->resize($result_img['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));	
					}
				}
			}
			if ((float)$result['special']) {
				$price2 = $this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax'));
				$special2 = $this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax'));
				$skidka = $special2/($price2/100)-100;
			} else {
				$skidka = "";
			}
			$product_quantity = $result['quantity'];
			$stock_status = $result['stock_status'];
			$str_timer_1 = substr($result['date_end'],0,strpos($result['date_end'],"-")); 
			$str_timer_2 = substr(str_replace("-","", substr($result['date_end'],strpos($result['date_end'],"-"))),0,2) - 1;
			$str_timer_3 = substr(str_replace("-","", substr($result['date_end'],strpos($result['date_end'],"-"))),2);
	
			
				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,

			'str_timer_1'	  			=> $str_timer_1,
			'str_timer_2'	  			=> $str_timer_2,
			'str_timer_3'	  			=> $str_timer_3,
			'product_quantity' 			=> $product_quantity,
			'stock_status' 				=> $stock_status,
			'additional_image_hover' 	=> $additional_image_hover,
			'skidka'     				=> $skidka,
			'model'     				=> $result['model'],
			'date_available'			=> $result['date_available'],//added
			'viewed'	 				=> $result['viewed'], //added
			'top_bestsellers'	 		=> $top_bestsellers['total'], //added
			/* MICRODATA */
			'currency'	   				=> $this->currency->getCode(),
			'availability' 				=> $result['quantity'] ? true : false,
			'reviews'      				=> (int)$result['reviews'],
			/* MICRODATA */
			
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}


			if ($product_info['image']) {
				$data['thumb_min'] = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_additional_width'), $this->config->get('config_image_additional_width'));
			} else {				
				$data['thumb_min'] = '';
			}
				/* *** MICRODATA *** */
				$data['currency_microdata'] = $this->currency->getCode();
				$data['availability'] = $product_info['quantity'] ? true : false;
				$data['reviewCount']  = (int) $product_info['reviews'];
				$data['ratingValue']  = $product_info['rating'];
				/* *** MICRODATA *** */
			
			$data['tags'] = array();

			if ($product_info['tag']) {
				$tags = explode(',', $product_info['tag']);

				foreach ($tags as $tag) {
					$data['tags'][] = array(
						'tag'  => trim($tag),
						'href' => $this->url->link('product/search', 'tag=' . trim($tag))
					);
				}
			}

			$data['recurrings'] = $this->model_catalog_product->getProfiles($this->request->get['product_id']);

			$this->model_catalog_product->updateViewed($this->request->get['product_id']);

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');


		if (isset($this->request->get['route']) && $this->request->get['route'] == 'product/product') {
			if (!isset($this->session->data['productviewed'])) {
  				$this->session->data['productviewed'] = array();
				$this->session->data['productviewed'][] = $this->request->get['product_id'];
  			} else {
  				$this->session->data['productviewed'][] = $this->request->get['product_id'];
  			}
		}
		/*QUICK VIEW*/
			if(isset($this->request->post['quickview29'])) {
			$this->model_catalog_product->updateViewed($this->request->post['quickview29']);
			if (!isset($this->session->data['productviewed'])) {
  				$this->session->data['productviewed'] = array();
  			} else {
  				$this->session->data['productviewed'][] = $this->request->post['quickview29'];
  			}
			$this->load->language('module/quickviewpro');
			$data['button_review'] = $this->language->get('button_review');
			$data['tab_general_quickview'] = $this->language->get('tab_general_quickview');
			$data['quantity_prod'] = $product_info['quantity'];
			$data['on_off_quickview_additional_image'] = $this->config->get('config_quickview_additional_image');
			$data['on_off_quickview_addtocart'] = $this->config->get('config_quickview_addtocart');
			$data['on_off_quickview_wishlist'] = $this->config->get('config_quickview_wishlist');
			$data['on_off_quickview_compare'] = $this->config->get('config_quickview_compare');
			$data['on_off_quickview_tab_description'] = $this->config->get('config_quickview_tab_description');
			$data['on_off_quickview_tab_specification'] = $this->config->get('config_quickview_tab_specification');
			$data['on_off_quickview_tab_review_quickview'] = $this->config->get('config_quickview_tab_review_quickview');
			$data['on_off_quickview_options_count'] = $this->config->get('config_quickview_options_count');
			$data['on_off_quickview_manufacturer'] = $this->config->get('config_quickview_manufacturer');
			$data['on_off_quickview_model'] = $this->config->get('config_quickview_model');
			$data['on_off_quickview_quantity'] = $this->config->get('config_quickview_quantity');
			
			
			$data['config_quickview_background_btnaddtocart'] = $this->config->get('config_quickview_background_btnaddtocart');
			$data['config_quickview_textcolor_btnaddtocart'] = $this->config->get('config_quickview_textcolor_btnaddtocart');
			$data['config_quickview_background_btnwishlist'] = $this->config->get('config_quickview_background_btnwishlist');
			$data['config_quickview_textcolor_btnwishlist'] = $this->config->get('config_quickview_textcolor_btnwishlist');
			$data['config_quickview_background_btncompare'] = $this->config->get('config_quickview_background_btncompare');
			$data['config_quickview_textcolor_btncompare'] = $this->config->get('config_quickview_textcolor_btncompare');
			
			$data['config_quickview_background_btnaddtocart_hover'] = $this->config->get('config_quickview_background_btnaddtocart_hover');
			$data['config_quickview_textcolor_btnaddtocart_hover'] = $this->config->get('config_quickview_textcolor_btnaddtocart_hover');
			$data['config_quickview_background_btnwishlist_hover'] = $this->config->get('config_quickview_background_btnwishlist_hover');
			$data['config_quickview_textcolor_btnwishlist_hover'] = $this->config->get('config_quickview_textcolor_btnwishlist_hover');
			$data['config_quickview_background_btncompare_hover'] = $this->config->get('config_quickview_background_btncompare_hover');
			$data['config_quickview_textcolor_btncompare_hover'] = $this->config->get('config_quickview_textcolor_btncompare_hover');
			}
			
			if(isset($this->request->post['quickview29'])) {
				$data['qucikviewmodule'] = $this->load->view($this->config->get('config_template') . '/template/module/quickviewpro.tpl', $data);
			} else {
				$data['qucikviewmodule'] = '';
			}
			/*------------*/
		
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/product.tpl')) {
				
            $template = $this->config->get('config_template') . '/template/product/product.tpl';

            // Custom template module
            $this->load->model('setting/setting');

            $custom_template_module = $this->model_setting_setting->getSetting('custom_template_module');

            $customer_group_id = $this->customer->getGroupId();

            if(!empty($custom_template_module['custom_template_module'])){
                if(isset($this->request->get['path'])){
                    foreach ($custom_template_module['custom_template_module'] as $key => $module) {
                        if (($module['type'] == 4) && !empty($module['product_categories'])) {
                            if ((isset($module['customer_groups']) && in_array($customer_group_id, $module['customer_groups'])) || !isset($module['customer_groups']) || empty($module['customer_groups'])){

                                $category_id = explode('_', $this->request->get['path']);
                                $category_id = (int)end($category_id);
                                if (in_array($category_id, $module['product_categories'])) {
                                    if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/' . $module['template_name'] . '.tpl')) {
                                        $template = $this->config->get('config_template') . '/template/' . $module['template_name'] . '.tpl';
                                    }
                                }

                            } // customer groups

                        }
                    }
                }

                foreach ($custom_template_module['custom_template_module'] as $key => $module) {
                    if (($module['type'] == 5) && !empty($module['product_manufacturers'])) {

                        if ((isset($module['customer_groups']) && in_array($customer_group_id, $module['customer_groups'])) || !isset($module['customer_groups']) || empty($module['customer_groups'])){

                            $manufacturer_id = $product_info['manufacturer_id'];
                            if (in_array($manufacturer_id, $module['product_manufacturers'])) {
                                if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/' . $module['template_name'] . '.tpl')) {
                                    $template = $this->config->get('config_template') . '/template/' . $module['template_name'] . '.tpl';
                                }
                            }

                        } // customer groups

                    }
                }

                foreach ($custom_template_module['custom_template_module'] as $key => $module) {
                    if (($module['type'] == 1) && !empty($module['products'])) {
                        if ((isset($module['customer_groups']) && in_array($customer_group_id, $module['customer_groups'])) || !isset($module['customer_groups']) || empty($module['customer_groups'])){

                            $products = explode(',', $module['products']);
                            if (in_array($product_id, $products)) {
                                if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/' . $module['template_name'] . '.tpl')) {
                                    $template = $this->config->get('config_template') . '/template/' . $module['template_name'] . '.tpl';
                                }
                            }

                        } // customer groups

                    }
                }
            }
            $this->response->setOutput($this->load->view($template, $data));
            // Custom template module
            
			} else {
				$this->response->setOutput($this->load->view('default/template/product/product.tpl', $data));
			}
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['manufacturer_id'])) {
				$url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
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

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('product/product', $url . '&product_id=' . $product_id)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/error/not_found.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/error/not_found.tpl', $data));
			}
		}
	}

	public function review() {

			$this->language->load('ns/newstorelang');	
			$data['text_admin_reply'] = $this->language->get('text_admin_reply');
			$data['text_plus'] = $this->language->get('text_plus');
			$data['text_purchased'] = $this->language->get('text_purchased');
			$data['text_minus'] = $this->language->get('text_minus');
			$data['text_comment'] = $this->language->get('text_comment');
			
			$data['show_review_plus'] = $this->config->get('config_show_review_plus');
			$data['show_review_plus_requared'] = $this->config->get('config_show_review_plus_requared');
			$data['show_review_minus'] = $this->config->get('config_show_review_minus');
			$data['show_review_minus_requared'] = $this->config->get('config_show_review_minus_requared');
			
		$this->load->language('product/product');

		$this->load->model('catalog/review');

		$data['text_no_reviews'] = $this->language->get('text_no_reviews');

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$data['reviews'] = array();

		$review_total = $this->model_catalog_review->getTotalReviewsByProductId($this->request->get['product_id']);

		$results = $this->model_catalog_review->getReviewsByProductId($this->request->get['product_id'], ($page - 1) * 5, 5);

		foreach ($results as $result) {
			$data['reviews'][] = array(
				'author'     => $result['author'],
				'text'       => nl2br($result['text']),

			'purchased'     => nl2br($result['purchased']),
			'plus'      	=> nl2br($result['plus']),
			'minus'       	=> nl2br($result['minus']),
			'admin_reply'	=> nl2br($result['admin_reply']),
				'rating'     => (int)$result['rating'],
				'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
			);
		}

		$pagination = new Pagination();
		$pagination->total = $review_total;
		$pagination->page = $page;
		$pagination->limit = 5;
		$pagination->url = $this->url->link('product/product/review', 'product_id=' . $this->request->get['product_id'] . '&page={page}');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($review_total) ? (($page - 1) * 5) + 1 : 0, ((($page - 1) * 5) > ($review_total - 5)) ? $review_total : ((($page - 1) * 5) + 5), $review_total, ceil($review_total / 5));

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/review.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/review.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/product/review.tpl', $data));
		}
	}

	public function write() {
		$this->load->language('product/product');

		$json = array();

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 25)) {
				$json['error'] = $this->language->get('error_name');
			}


			$this->language->load('ns/newstorelang');		
			$show_review_plus = $this->config->get('config_show_review_plus');
			$show_review_plus_requared = $this->config->get('config_show_review_plus_requared');
			$show_review_minus = $this->config->get('config_show_review_minus');
			$show_review_minus_requared = $this->config->get('config_show_review_minus_requared');
			
			if(($show_review_plus =='1') && ($show_review_plus_requared =='1')){
				if ((utf8_strlen($this->request->post['plus']) < 3) || (utf8_strlen($this->request->post['plus']) > 1000)) {
					$json['error'] = $this->language->get('error_plus');
				}
			}
			if(($show_review_minus =='1') && ($show_review_minus_requared =='1')){
				if ((utf8_strlen($this->request->post['minus']) < 3) || (utf8_strlen($this->request->post['minus']) > 1000)) {
					$json['error'] = $this->language->get('error_minus');
				}
			}
			
			
			if ((utf8_strlen($this->request->post['text']) < 25) || (utf8_strlen($this->request->post['text']) > 1000)) {
				$json['error'] = $this->language->get('error_text');
			}

			if (empty($this->request->post['rating']) || $this->request->post['rating'] < 0 || $this->request->post['rating'] > 5) {
				$json['error'] = $this->language->get('error_rating');
			}

			// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$captcha = $this->load->controller('captcha/' . $this->config->get('config_captcha') . '/validate');

				if ($captcha) {
					$json['error'] = $captcha;
				}
			}

			if (!isset($json['error'])) {
				$this->load->model('catalog/review');

				$this->model_catalog_review->addReview($this->request->get['product_id'], $this->request->post);

				$json['success'] = $this->language->get('text_success');
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function getRecurringDescription() {
		$this->language->load('product/product');
		$this->load->model('catalog/product');

		if (isset($this->request->post['product_id'])) {
			$product_id = $this->request->post['product_id'];
		} else {
			$product_id = 0;
		}

		if (isset($this->request->post['recurring_id'])) {
			$recurring_id = $this->request->post['recurring_id'];
		} else {
			$recurring_id = 0;
		}

		if (isset($this->request->post['quantity'])) {
			$quantity = $this->request->post['quantity'];
		} else {
			$quantity = 1;
		}

		$product_info = $this->model_catalog_product->getProduct($product_id);
		$recurring_info = $this->model_catalog_product->getProfile($product_id, $recurring_id);

		$json = array();

		if ($product_info && $recurring_info) {
			if (!$json) {
				$frequencies = array(
					'day'        => $this->language->get('text_day'),
					'week'       => $this->language->get('text_week'),
					'semi_month' => $this->language->get('text_semi_month'),
					'month'      => $this->language->get('text_month'),
					'year'       => $this->language->get('text_year'),
				);

				if ($recurring_info['trial_status'] == 1) {
					$price = $this->currency->format($this->tax->calculate($recurring_info['trial_price'] * $quantity, $product_info['tax_class_id'], $this->config->get('config_tax')));
					$trial_text = sprintf($this->language->get('text_trial_description'), $price, $recurring_info['trial_cycle'], $frequencies[$recurring_info['trial_frequency']], $recurring_info['trial_duration']) . ' ';
				} else {
					$trial_text = '';
				}

				$price = $this->currency->format($this->tax->calculate($recurring_info['price'] * $quantity, $product_info['tax_class_id'], $this->config->get('config_tax')));

				if ($recurring_info['duration']) {
					$text = $trial_text . sprintf($this->language->get('text_payment_description'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
				} else {
					$text = $trial_text . sprintf($this->language->get('text_payment_cancel'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
				}

				$json['success'] = $text;
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
