<?php
class ControllerProductCategory extends Controller {
	public function index() {
			
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
			if (isset($this->request->get['path'])) {
				$seo_parts = explode('_', (string)$this->request->get['path']);
				$data['seo_category_id'] = (int)array_pop($seo_parts);
			}
			$data['token'] = $this->session->data['token'];
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
			
			$data['pge_text_reset'] 				= $this->language->get('pge_text_reset');
			$data['pge_text_select_all_product'] 	= $this->language->get('pge_text_select_all_product');
			$data['pge_text_none_editor'] 			= $this->language->get('pge_text_none_editor');
			$data['pge_text_batch_edit'] 			= $this->language->get('pge_text_batch_edit');
			$data['pge_text_opt_general_data'] 		= $this->language->get('pge_text_opt_general_data');
			$data['pge_text_opt_name_product'] 		= $this->language->get('pge_text_opt_name_product');
			$data['pge_text_opt_decription'] 		= $this->language->get('pge_text_opt_decription');
			$data['pge_text_opt_meta_title'] 		= $this->language->get('pge_text_opt_meta_title');
			$data['pge_text_opt_meta_h1'] 			= $this->language->get('pge_text_opt_meta_h1');
			$data['pge_text_opt_meta_descripton'] 	= $this->language->get('pge_text_opt_meta_descripton');
			$data['pge_text_opt_meta_keyword'] 		= $this->language->get('pge_text_opt_meta_keyword');
			$data['pge_text_opt_tag'] 				= $this->language->get('pge_text_opt_tag');
			$data['pge_text_opt_data'] 				= $this->language->get('pge_text_opt_data');
			$data['pge_text_opt_price'] 			= $this->language->get('pge_text_opt_price');
			$data['pge_text_opt_quantity'] 			= $this->language->get('pge_text_opt_quantity');
			$data['pge_text_opt_minquantity'] 		= $this->language->get('pge_text_opt_minquantity');
			$data['pge_text_opt_mlt'] 				= $this->language->get('pge_text_opt_mlt');
			$data['pge_text_opt_code'] 				= $this->language->get('pge_text_opt_code');
			$data['pge_text_opt_date_status'] 		= $this->language->get('pge_text_opt_date_status');
			$data['pge_text_opt_stockshipping'] 	= $this->language->get('pge_text_opt_stockshipping');
			$data['pge_text_opt_weightdimensions'] 	= $this->language->get('pge_text_opt_weightdimensions');
			$data['pge_text_opt_links'] 			= $this->language->get('pge_text_opt_links');
			$data['pge_text_opt_manufacturer'] 		= $this->language->get('pge_text_opt_manufacturer');
			$data['pge_text_opt_category'] 			= $this->language->get('pge_text_opt_category');
			$data['pge_text_opt_filter'] 			= $this->language->get('pge_text_opt_filter');
			$data['pge_text_opt_related'] 			= $this->language->get('pge_text_opt_related');
			$data['pge_text_opt_attribute_options'] = $this->language->get('pge_text_opt_attribute_options');
			$data['pge_text_opt_attribute'] 		= $this->language->get('pge_text_opt_attribute');
			$data['pge_text_opt_options'] 			= $this->language->get('pge_text_opt_options');
			$data['pge_text_opt_special_discount'] 	= $this->language->get('pge_text_opt_special_discount');
			$data['pge_text_opt_discount'] 			= $this->language->get('pge_text_opt_discount');
			$data['pge_text_opt_special'] 			= $this->language->get('pge_text_opt_special');
			$data['pge_text_opt_url'] 				= $this->language->get('pge_text_opt_url');
			$data['pge_text_select_checkbox'] 		= $this->language->get('pge_text_select_checkbox');
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
				$data['group_editor'] 					= $user_groups_view['group_editor'];
			}			
		}	
			

			$this->language->load('product/product');
			$data['lang_id'] = $this->config->get('config_language_id');
			$data['config_text_open_form_send_order'] = $this->config->get('config_text_open_form_send_order');	
			$data['color_button_open_form_send_order'] = $this->config->get('config_color_button_open_form_send_order');			
			$data['icon_open_form_send_order'] = $this->config->get('config_icon_open_form_send_order');						
			$data['config_on_off_qo_cpage'] = $this->config->get('config_on_off_qo_cpage');						
			
		$this->load->language('product/category');
			
				$data['menu_open_category'] = $this->config->get('config_menu_open_category');
				$data['main_menu'] = $this->config->get('config_main_menu_selection');
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
				$data['ns_on_off_category_page_slider_additional_image_script'] = $this->config->get('config_on_off_category_page_slider_additional_image');
				$this->load->model('ns/moduleonoff');
				$data['ns_on_off_module_quick_order'] = $this->model_ns_moduleonoff->getQuickOrderModuleModification();
				$this->load->language('ns/newstorelang');
				$data['lang_id'] = $this->config->get('config_language_id');
				$data['text_sticker_special'] = $this->config->get('config_change_text_sticker_special'); 
				$data['text_sticker_newproduct'] = $this->config->get('config_change_text_sticker_newproduct'); 
				$data['text_sticker_popular'] = $this->config->get('config_change_text_sticker_popular'); 
				$data['text_sticker_topbestseller'] = $this->config->get('config_change_text_sticker_topbestseller'); 
				$data['ns_on_off_category_page_model_product'] 				= $this->config->get('config_on_off_category_page_model_product'); 
				$data['ns_on_off_category_page_description'] 				= $this->config->get('config_on_off_category_page_description'); 	
				$data['ns_on_off_category_page_slider_additional_image'] 	= $this->config->get('config_on_off_category_page_slider_additional_image'); 	
				$data['ns_select_category_page_additional_animate_method'] 	= $this->config->get('config_select_category_page_additional_animate_method'); 
				$data['ns_on_off_category_page_rating'] 					= $this->config->get('config_on_off_category_page_rating'); 
				$data['ns_on_off_category_page_quantity_reviews'] 			= $this->config->get('config_on_off_category_page_quantity_reviews'); 
				$data['ns_on_off_category_page_fastorder'] 					= $this->config->get('config_on_off_category_page_fastorder'); 
				$data['ns_on_off_category_page_wishlist'] 					= $this->config->get('config_on_off_category_page_wishlist'); 	
				$data['ns_on_off_category_page_compare'] 					= $this->config->get('config_on_off_category_page_compare'); 
				$this->language->load('product/product');
				$data['icon_send_fastorder'] = $this->config->get('config_icon_send_fastorder');
				$data['background_button_send_fastorder'] = $this->config->get('config_background_button_send_fastorder');
				$data['background_button_open_form_send_order_hover'] = $this->config->get('config_background_button_open_form_send_order_hover');
				$data['background_button_send_fastorder_hover'] = $this->config->get('config_background_button_send_fastorder_hover');
				$data['background_button_open_form_send_order'] = $this->config->get('config_background_button_open_form_send_order');
				$data['icon_open_form_send_order'] = $this->config->get('config_icon_open_form_send_order');
				$data['icon_open_form_send_order_size'] = $this->config->get('config_icon_open_form_send_order_size');
				$data['color_button_open_form_send_order'] = $this->config->get('config_color_button_open_form_send_order');
				$data['config_text_open_form_send_order'] = $this->config->get('config_text_open_form_send_order');
				$data['text_reviews_title'] = $this->language->get('text_reviews_title');//added
				$data['button_price'] = $this->language->get('button_price');//added
				$data['config_quickview_btn_name'] = $this->config->get('config_quickview_btn_name');
				$data['config_price_list_view_on_off'] = $this->config->get('config_price_list_view_on_off');
				$data['config_catalog_category_description_dropped'] = $this->config->get('config_catalog_category_description_dropped');
				$data['config_on_off_category_page_quickview'] = $this->config->get('config_on_off_category_page_quickview');
				
				$data['show_stock_status'] = $this->config->get('config_show_stock_status');
				$config_disable_cart_button_text = $this->config->get('config_disable_cart_button_text');
				if(!empty($config_disable_cart_button_text[$this->config->get('config_language_id')]['disable_cart_button_text'])){
					$data['disable_cart_button_text'] = $config_disable_cart_button_text[$this->config->get('config_language_id')]['disable_cart_button_text'];
				} else {
					$data['disable_cart_button_text'] = $this->language->get('disable_cart_button_text');
				}
				$data['newstorecat_pos1'] = $this->load->controller('common/catsheme/newstore_pos1');
				$data['newstorecat_pos2'] = $this->load->controller('common/catsheme/newstore_pos2');
				$data['newstorecat_pos3'] = $this->load->controller('common/catsheme/newstore_pos3');
				$data['newstorecat_pos4'] = $this->load->controller('common/catsheme/newstore_pos4');
				$data['newstorecat_pos5'] = $this->load->controller('common/catsheme/newstore_pos5');
				$data['newstorecat_pos6'] = $this->load->controller('common/catsheme/newstore_pos6');
				$data['newstorecat_pos7'] = $this->load->controller('common/catsheme/newstore_pos7');
				$data['newstorecat_pos8'] = $this->load->controller('common/catsheme/newstore_pos8');
				$data['newstorecat_pos9'] = $this->load->controller('common/catsheme/newstore_pos9');
				$data['newstorecat_pos10'] = $this->load->controller('common/catsheme/newstore_pos10');
				$data['newstorecat_pos11'] = $this->load->controller('common/catsheme/newstore_pos11');
				

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
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

		if (isset($this->request->get['limit'])) {
			$limit = (int)$this->request->get['limit'];
		} else {
			$limit = $this->config->get('config_product_limit');
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['path'])) {
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$path = '';

			$parts = explode('_', (string)$this->request->get['path']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}

				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $path . $url)
					);
				}
			}
		} else {
			$category_id = 0;
		}

		$category_info = $this->model_catalog_category->getCategory($category_id);

		if ($category_info) {

			if ($category_info['meta_title']) {
				$this->document->setTitle($category_info['meta_title']);
			} else {
				$this->document->setTitle($category_info['name']);
			}

			$this->document->setDescription($category_info['meta_description']);
			$this->document->setKeywords($category_info['meta_keyword']);

			if ($category_info['meta_h1']) {
				$data['heading_title'] = $category_info['meta_h1'];
			} else {
				$data['heading_title'] = $category_info['name'];
			}

			$data['text_refine'] = $this->language->get('text_refine');
			$data['text_empty'] = $this->language->get('text_empty');
			$data['text_quantity'] = $this->language->get('text_quantity');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_price'] = $this->language->get('text_price');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$data['text_sort'] = $this->language->get('text_sort');
			$data['text_limit'] = $this->language->get('text_limit');

			$data['button_cart'] = $this->language->get('button_cart');
	
			$data['required_text_option'] = $this->config->get('required_text_option');	
			$data['change_text_cart_button_out_of_stock'] = $this->config->get('config_change_text_cart_button_out_of_stock');	
			$data['show_special_timer_page'] = $this->config->get('config_show_special_timer_page');	
		
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_continue'] = $this->language->get('button_continue');
			$data['button_list'] = $this->language->get('button_list');
			$data['button_grid'] = $this->language->get('button_grid');

			// Set the last category breadcrumb
			$data['breadcrumbs'][] = array(
				'text' => $category_info['name'],
				'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'])
			);

			if ($category_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
				$this->document->setOgImage($data['thumb']);
			} else {
				$data['thumb'] = '';
			}

			$data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
			$data['compare'] = $this->url->link('product/compare');

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['categories'] = array();

			$results = $this->model_catalog_category->getCategories($category_id);

			foreach ($results as $result) {
				$filter_data = array(
					'filter_category_id'  => $result['category_id'],
					'filter_sub_category' => true
				);

				$data['categories'][] = array(

				'thumb' => $this->model_tool_image->resize(($result['image']=='' ? 'no_image.png' : $result['image']), $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height')),
				
					'name' => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
					'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $result['category_id'] . $url)
				);
			}

			$data['products'] = array();

			$filter_data = array(
				'filter_category_id' => $category_id,
				'filter_filter'      => $filter,
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);

			$product_total = $this->model_catalog_product->getTotalProducts($filter_data);

			$results = $this->model_catalog_product->getProducts($filter_data);

			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
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


			$results_img = $this->model_catalog_product->getProductImages($result['product_id']);
			$additional_img = array();
			foreach ($results_img as $result_img) {
				if ($result_img['image']) {	
					$image_additional = $this->model_tool_image->resize($result_img['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_width'));
				} else {
					$image_additional = false;
				}
			$additional_img[] = $image_additional;
			}
			$additional_image_hover = '';
			$additional_image_hover_on_off = $this->config->get('config_on_off_category_page_slider_additional_image');
			if($additional_image_hover_on_off =='2'){
				foreach ($results_img as $key => $result_img) {
					if ($key < 1) {
						$additional_image_hover = $this->model_tool_image->resize($result_img['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));	
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
			$top_bestsellers = $this->model_catalog_product->getTopSeller($result['product_id']);
			
			$data['disable_cart_button'] = $this->config->get('config_disable_cart_button'); //added
			$data['disable_fastorder_button'] = $this->config->get('config_disable_fastorder_button'); //added
			$product_quantity = $result['quantity'];
			$stock_status = $result['stock_status'];
			
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price_no_format = $this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax'));
				} else {
					$price_no_format = false;
				}

				if ((float)$result['special']) {
					$special_no_format = $this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax'));
				} else {
					$special_no_format = false;
				}
				$var_currency = array();
				$var_currency['value'] = $this->currency->getValue();
				$var_currency['symbol_left'] = $this->currency->getSymbolLeft();
				$var_currency['symbol_right'] = $this->currency->getSymbolRight();
				$var_currency['decimals'] = $this->currency->getDecimalPlace();
				$var_currency['decimal_point'] = $this->language->get('decimal_point');
				$var_currency['thousand_point'] = $this->language->get('thousand_point');
				$data['currency'] = $var_currency;
				
	

			$str_timer_1 = substr($result['date_end'],0,strpos($result['date_end'],"-")); 
			$str_timer_2 = substr(str_replace("-","", substr($result['date_end'],strpos($result['date_end'],"-"))),0,2) - 1;
			$str_timer_3 = substr(str_replace("-","", substr($result['date_end'],strpos($result['date_end'],"-"))),2);
			$this->load->model('tool/image');
					if (VERSION <= 2.2) {
						$currency = $this->session->data['currency'];
					} else {
						$currency = '';
					}
					
					$options = array();
					$data['show_options'] = $this->config->get('config_show_options_page');
					$show_options_required_featured = $this->config->get('config_show_options_required_page');
				if ($data['show_options']==1) {
					foreach ($this->model_catalog_product->getProductOptions($result['product_id']) as $option) {
						$product_option_value_data = array();

						foreach ($option['product_option_value'] as $option_value) {
							if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
								if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
									$option_price = $this->currency->format($this->tax->calculate($option_value['price'], $result['tax_class_id'], $this->config->get('config_tax') ? 'P' : false), $currency);
								} else {
									$option_price = false;
								}

								$product_option_value_data[] = array(
									'product_option_value_id' => $option_value['product_option_value_id'],
									'option_value_id'         => $option_value['option_value_id'],
									'name'                    => $option_value['name'],
									'color'                   => $option_value['color'],
									'image'                   => $this->model_tool_image->resize($option_value['image'], 50, 50),
									'price'                   => $option_price,
									'price_prefix'            => $option_value['price_prefix']
								);
							}
						}
						if($show_options_required_featured ==1) {
							if($option['required']) {
								$options[] = array(
									'product_option_id'    => $option['product_option_id'],
									'product_option_value' => $product_option_value_data,
									'option_id'            => $option['option_id'],
									'name'                 => $option['name'],
									'type'                 => $option['type'],
									'status_color_type'    => $option['status_color_type'],
									'value'                => $option['value'],
									'required'             => $option['required']
								);
							}
						} else {
							$options[] = array(
								'product_option_id'    => $option['product_option_id'],
								'product_option_value' => $product_option_value_data,
								'option_id'            => $option['option_id'],
								'name'                 => $option['name'],
								'type'                 => $option['type'],
								'status_color_type'    => $option['status_color_type'],
								'value'                => $option['value'],
								'required'             => $option['required']
							);
						}
					}
				}
		
				$data['products'][] = array(

			'options'	  => $options,
			'str_timer_1'	  	=> $str_timer_1,
			'str_timer_2'	  	=> $str_timer_2,
			'str_timer_3'	  	=> $str_timer_3,
		
	
			/* MICRODATA */
				'currency'	   			=> $this->currency->getCode(),
				'availability' 			=> $result['quantity'] ? true : false,
				'reviews'      			=> (int) $result['reviews'],
			/* MICRODATA */
			'price_no_format' 			=> $price_no_format,
			'special_no_format' 		=> $special_no_format,			
			'product_quantity' 			=> $product_quantity,
			'stock_status' 				=> $stock_status,
			'additional_img' 			=> $additional_img,
			'additional_image_hover' 	=> $additional_image_hover,
			'reviews'    				=> sprintf((int)$result['reviews']),
			'skidka'     				=> $skidka,
			'model'     				=> $result['model'],
			'date_available'			=> $result['date_available'],//added
			'viewed'	 				=> $result['viewed'], //added
			'top_bestsellers'	 		=> $top_bestsellers['total'], //added
	
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $result['rating'],
					'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['sorts'] = array();

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.sort_order&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=DESC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=DESC' . $url)
			);

			if ($this->config->get('config_review_status')) {
				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=DESC' . $url)
				);

				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=ASC' . $url)
				);
			}

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=DESC' . $url)
			);

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			$data['limits'] = array();

			$limits = array_unique(array($this->config->get('config_product_limit'), 25, 50, 75, 100));

			sort($limits);

			foreach($limits as $value) {
				$data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=' . $value)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$pagination = new Pagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');

			$data['pagination'] = $pagination->render();

			$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

			// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
			if ($page == 1) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], 'SSL'), 'canonical');
			} elseif ($page == 2) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], 'SSL'), 'prev');
			} else {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page - 1), 'SSL'), 'prev');
			}

			if ($limit && ceil($product_total / $limit) > $page) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page + 1), 'SSL'), 'next');
			}

			$data['sort'] = $sort;
			$data['order'] = $order;
			$data['limit'] = $limit;

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/category.tpl')) {
				
            $template = $this->config->get('config_template') . '/template/product/category.tpl';

            // Custom template module
            $this->load->model('setting/setting');

            $custom_template_module = $this->model_setting_setting->getSetting('custom_template_module');

            $customer_group_id = $this->customer->getGroupId();

            if(!empty($custom_template_module['custom_template_module'])){
                foreach ($custom_template_module['custom_template_module'] as $key => $module) {
                    if (($module['type'] == 0) && !empty($module['categories'])) {
                        if ((isset($module['customer_groups']) && in_array($customer_group_id, $module['customer_groups'])) || !isset($module['customer_groups']) || empty($module['customer_groups'])){

                            if (in_array($category_id, $module['categories'])) {
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
				$this->response->setOutput($this->load->view('default/template/product/category.tpl', $data));
			}
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
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
				'href' => $this->url->link('product/category', $url)
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
}
