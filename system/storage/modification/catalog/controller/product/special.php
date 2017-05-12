<?php
class ControllerProductSpecial extends Controller {
	public function index() {
		$this->load->language('product/special');

			$data['menu_open_special'] = $this->config->get('config_menu_open_special');
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
			$data['config_ns_on_off_special_page_slider_additional_image'] = $this->config->get('config_ns_on_off_special_page_slider_additional_image'); 
			$this->load->model('ns/moduleonoff');
			$data['ns_on_off_module_quick_order'] = $this->model_ns_moduleonoff->getQuickOrderModuleModification();
			$this->load->language('ns/newstorelang');
			$data['lang_id'] = $this->config->get('config_language_id');
			$data['text_sticker_special'] = $this->config->get('config_change_text_sticker_special'); //added
			$data['text_sticker_newproduct'] = $this->config->get('config_change_text_sticker_newproduct'); //added
			$data['text_sticker_popular'] = $this->config->get('config_change_text_sticker_popular'); //added
			$data['text_sticker_topbestseller'] = $this->config->get('config_change_text_sticker_topbestseller'); //added
			/*on_off*/
			$data['ns_on_off_special_page_model_product'] 				= $this->config->get('config_on_off_special_page_model_product'); //added	
			$data['ns_on_off_special_page_description'] 				= $this->config->get('config_on_off_special_page_description'); //added	
			$data['ns_on_off_special_page_slider_additional_image'] 	= $this->config->get('config_on_off_special_page_slider_additional_image'); //added	
			$data['ns_select_special_page_additional_animate_method'] 	= $this->config->get('config_select_special_page_additional_animate_method'); //added	
			$data['ns_on_off_special_page_rating'] 						= $this->config->get('config_on_off_special_page_rating'); //added	
			$data['ns_on_off_special_page_quantity_reviews'] 			= $this->config->get('config_on_off_special_page_quantity_reviews'); //added	
			$data['ns_on_off_special_page_fastorder'] 					= $this->config->get('config_on_off_special_page_fastorder'); //added	
			$data['ns_on_off_special_page_wishlist'] 					= $this->config->get('config_on_off_special_page_wishlist'); //added	
			$data['ns_on_off_special_page_compare'] 					= $this->config->get('config_on_off_special_page_compare'); //added	
			/*-----*/
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
			$data['lang_id'] = $this->config->get('config_language_id');
			$data['text_reviews_title'] = $this->language->get('text_reviews_title');//added
			$data['config_quickview_btn_name'] = $this->config->get('config_quickview_btn_name');
			$data['config_price_list_view_on_off_special_page'] = $this->config->get('config_price_list_view_on_off_special_page');
			$data['button_price'] = $this->language->get('button_price');//added
			$data['config_on_off_special_page_quickview'] = $this->config->get('config_on_off_special_page_quickview');
			$data['show_stock_status'] = $this->config->get('config_show_stock_status');
				$config_disable_cart_button_text = $this->config->get('config_disable_cart_button_text');
				if(!empty($config_disable_cart_button_text[$this->config->get('config_language_id')]['disable_cart_button_text'])){
					$data['disable_cart_button_text'] = $config_disable_cart_button_text[$this->config->get('config_language_id')]['disable_cart_button_text'];
				} else {
					$data['disable_cart_button_text'] = $this->language->get('disable_cart_button_text');
				}
		

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

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

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
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

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('product/special', $url)
		);

		$data['heading_title'] = $this->language->get('heading_title');

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
		$data['button_list'] = $this->language->get('button_list');
		$data['button_grid'] = $this->language->get('button_grid');
		$data['button_continue'] = $this->language->get('button_continue');

		$data['compare'] = $this->url->link('product/compare');

		$data['products'] = array();

		$filter_data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $limit,
			'limit' => $limit
		);

		$product_total = $this->model_catalog_product->getTotalProductSpecials();

		$results = $this->model_catalog_product->getProductSpecials($filter_data);

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
			$additional_image_hover_on_off = $this->config->get('config_on_off_special_page_slider_additional_image');
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
			$top_bestsellers = $this->model_catalog_product->getTopSeller($result['product_id']);
			$data['disable_cart_button'] = $this->config->get('config_disable_cart_button'); //added
			$data['disable_fastorder_button'] = $this->config->get('config_disable_fastorder_button'); //added
			$product_quantity = $result['quantity'];
			$stock_status = $result['stock_status'];
	

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
				'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'] . $url)
			);
		}

		$url = '';

		if (isset($this->request->get['limit'])) {
			$url .= '&limit=' . $this->request->get['limit'];
		}

		$data['sorts'] = array();

		$data['sorts'][] = array(
			'text'  => $this->language->get('text_default'),
			'value' => 'p.sort_order-ASC',
			'href'  => $this->url->link('product/special', 'sort=p.sort_order&order=ASC' . $url)
		);

		$data['sorts'][] = array(
			'text'  => $this->language->get('text_name_asc'),
			'value' => 'pd.name-ASC',
			'href'  => $this->url->link('product/special', 'sort=pd.name&order=ASC' . $url)
		);

		$data['sorts'][] = array(
			'text'  => $this->language->get('text_name_desc'),
			'value' => 'pd.name-DESC',
			'href'  => $this->url->link('product/special', 'sort=pd.name&order=DESC' . $url)
		);

		$data['sorts'][] = array(
			'text'  => $this->language->get('text_price_asc'),
			'value' => 'ps.price-ASC',
			'href'  => $this->url->link('product/special', 'sort=ps.price&order=ASC' . $url)
		);

		$data['sorts'][] = array(
			'text'  => $this->language->get('text_price_desc'),
			'value' => 'ps.price-DESC',
			'href'  => $this->url->link('product/special', 'sort=ps.price&order=DESC' . $url)
		);

		if ($this->config->get('config_review_status')) {
			$data['sorts'][] = array(
				'text'  => $this->language->get('text_rating_desc'),
				'value' => 'rating-DESC',
				'href'  => $this->url->link('product/special', 'sort=rating&order=DESC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_rating_asc'),
				'value' => 'rating-ASC',
				'href'  => $this->url->link('product/special', 'sort=rating&order=ASC' . $url)
			);
		}

		$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->url->link('product/special', 'sort=p.model&order=ASC' . $url)
		);

		$data['sorts'][] = array(
			'text'  => $this->language->get('text_model_desc'),
			'value' => 'p.model-DESC',
			'href'  => $this->url->link('product/special', 'sort=p.model&order=DESC' . $url)
		);

		$url = '';

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
				'href'  => $this->url->link('product/special', $url . '&limit=' . $value)
			);
		}

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

		$pagination = new Pagination();
		$pagination->total = $product_total;
		$pagination->page = $page;
		$pagination->limit = $limit;
		$pagination->url = $this->url->link('product/special', $url . '&page={page}');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

		// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
		if ($page == 1) {
		    $this->document->addLink($this->url->link('product/special', '', 'SSL'), 'canonical');
		} elseif ($page == 2) {
		    $this->document->addLink($this->url->link('product/special', '', 'SSL'), 'prev');
		} else {
		    $this->document->addLink($this->url->link('product/special', 'page='. ($page - 1), 'SSL'), 'prev');
		}

		if ($limit && ceil($product_total / $limit) > $page) {
		    $this->document->addLink($this->url->link('product/special', 'page='. ($page + 1), 'SSL'), 'next');
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

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/special.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/special.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/product/special.tpl', $data));
		}
	}
}
