<?php
class ControllerCommonFooter extends Controller {

                    public function addToNewsletter(){
            
                        $email = $this->request->post['email'];
                        $this->load->language('ns/newstorelang');
                        $this->load->language('common/footer');
                        $this->load->model('account/customer');

                        $this->createNewsletterTables();
                        
                        $count = $this->checkEmailSubscribe($email);
                        
                        if($count == 0){                          
                            $newsletter_id = $this->model_account_customer->addToNewsletter($email);
                            $json['success'] = $this->language->get('text_success_subcribe');                            
                        } else {
                            $json['warning'] = $this->language->get('text_error_subcribe');
                        }
                        
                      return $this->response->setOutput(json_encode($json));
                    }
        
                    public function createNewsletterTables() {

                        $query = $this->db->query("CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "newsletter (
                        `id` INT( 11 ) NOT NULL AUTO_INCREMENT ,
                        `email` VARCHAR( 255 ) NOT NULL ,
                        `group` VARCHAR( 25 ) NOT NULL ,
                        `date_added` DATETIME NOT NULL ,
                        PRIMARY KEY ( `id` )
                        )");
                    } 
        
                    public function checkEmailSubscribe($email){

                        $this->load->model('account/customer');

                        $count = $this->model_account_customer->checkEmailSubscribe($email);

                        return $count;

                    }
                
	public function index() {
		$this->load->language('common/footer');

				$data['google_api_map_key'] = $this->config->get('config_google_api_map_key');
				$this->load->language('ns/newstorelang');
				$data['text_contact_footer'] = $this->language->get('text_contact_footer');
				$data['text_social_link'] = $this->language->get('text_social_link');
				$data['text_payments_footer'] = $this->language->get('text_payments_footer');
				$data['ns_email_footer_contact'] = $this->config->get('config_email_footer_contact');
				$data['ns_skype_footer_contact'] = $this->config->get('config_skype_footer_contact');
				$data['config_ns_footer_counters'] = $this->config->get('config_ns_footer_counters');
				$data['lang_id'] = $this->config->get('config_language_id');
				$data['config_on_off_footer_ribbon'] = $this->config->get('config_on_off_footer_ribbon');
				$data['config_footer_ribbon'] = $this->config->get('config_footer_ribbon');
				$data['ns_schedule_footer'] = $this->config->get('config_schedule_footer');
				$data['ns_store_address'] = $this->config->get('config_store_address');
				$data['powered_new'] = sprintf('%s &copy; %s', $this->config->get('config_name'), date('Y', time()));
				$this->load->model('tool/image');
				$data['config_phones_footer'] = $this->config->get('config_phones_footer');
				$footer_phones = $this->config->get('config_phones_footer');
				if(!empty($footer_phones)){
					$data['config_phones_array_footer'] = array();	
					foreach ($footer_phones as $phone_footer) {						
					$data['config_phones_array_footer'][] = array(
							'phone_footer'      			=> $phone_footer['phone_footer'],
							'icon_footer_phone'      		=> $phone_footer['icon_footer_phone'],
						);	
					}					
				}
				$banner_items_footer_array = $this->config->get('banner_items_footer');
				if(isset($banner_items_footer_array)) {
					$banner_items_footer = $this->config->get('banner_items_footer');
				} else {
					$banner_items_footer = array();
				}
				$data['banner_items_footers'] = array();
				
				foreach ($banner_items_footer as $result) {	
					if(isset($result['popup'])){
						$result_popup = $result['popup'];
					} else {
						$result_popup = '0';
					}				
					$data['banner_items_footers'][] = array(
						'icon_image' 	=> $result['icon_image'],
						'title' 		=> $result['title'],
						'description' 	=> $result['description'],
						'link'  		=> $result['link'][$this->config->get('config_language_id')],
						'popup'  		=> $result_popup,
						
					);	
				}			
				$data['config_social_footer'] = $this->config->get('config_social_footer');
				$footer_social = $this->config->get('config_social_footer');
				
				if(!empty($footer_social)){
				$data['config_social_array_footer'] = array();
				
				foreach ($footer_social as $social_footer) {
					if (isset($social_footer['image_footer_social']) && is_file(DIR_IMAGE . $social_footer['image_footer_social'])) {
						$data['icon_footer_social'] = $this->model_tool_image->resize($social_footer['image_footer_social'], 25, 25);
					} else {
						$data['icon_footer_social'] = $this->model_tool_image->resize('no_image.png', 25, 25);
					}					
				$data['config_social_array_footer'][] = array(
						'image_footer_social'      		=> $social_footer['image_footer_social'],
						'icon_footer_social'      		=> $data['icon_footer_social'],
						'social_link_footer'      		=> $social_footer['social_link_footer'],
					);	
				}
				
				}
				$data['config_payments_footer'] = $this->config->get('config_payments_footer');
				$payments_social = $this->config->get('config_payments_footer');
				if(!empty($payments_social)){
					$data['config_payments_array_footer'] = array();
					
					foreach ($payments_social as $payments_footer) {
						if (isset($payments_footer['image_footer_payments']) && is_file(DIR_IMAGE . $payments_footer['image_footer_payments'])) {
							$data['icon_footer_payments'] = $this->model_tool_image->resize($payments_footer['image_footer_payments'], 35, 25);
						} else {
							$data['icon_footer_payments'] = $this->model_tool_image->resize('no_image.png', 35, 25);
						}
						
					$data['config_payments_array_footer'][] = array(
							'image_footer_payments'      		=> $payments_footer['image_footer_payments'],
							'icon_footer_payments'      		=> $data['icon_footer_payments'],
							'payments_link_footer'      		=> $payments_footer['payments_link_footer'],
						);	
					}				
				}	
				$data['about_us'] = $this->language->get('about_us');
				$data['gmap_full_screen'] = $this->language->get('gmap_full_screen');
				$data['gmap_normal_screen'] = $this->language->get('gmap_normal_screen');
				
				$data['description_store_footer'] = $this->config->get('config_description_store_footer');
				$data['zoom_google_map'] = $this->config->get('config_zoom_google_map');		
				$data['center_google_map'] = $this->config->get('config_center_google_map');		
				$data['lang_id'] = $this->config->get('config_language_id');
				$data['setting_google'] = $this->config->get('google_maps_module_map');
				$data['gmap_setting'] = array();
				if(!empty($data['setting_google'])){ 
					foreach ($data['setting_google'] as $map_setting){
						$data['gmap_setting'][] = array(
							'latlong' => html_entity_decode($map_setting['latlong'], ENT_QUOTES, 'UTF-8'),
							'maptext' => $map_setting['maptext'],
							'onelinetext' => $map_setting['onelinetext'],
						);
					}
				}		
			$data['config_footer_design'] = $this->config->get('config_footer_design');				
			

			$data['lang_id'] = $this->config->get('config_language_id');
			$data['callbackpro'] = $this->config->get('callbackpro');	
			

		$data['scripts'] = $this->document->getScripts('footer');

		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');

					$this->load->language('ns/newstorelang');
                    $data['text_placeholder_subcribe'] = $this->language->get('text_placeholder_subcribe');
                    $data['text_subcribe'] = $this->language->get('text_subcribe');
                    $data['text_btn_subcribe'] = $this->language->get('text_btn_subcribe');
                    $data['text_error_subcribe'] = $this->language->get('text_error_subcribe');
                    $data['text_success_subcribe'] = $this->language->get('text_success_subcribe');
                    $data['text_empty_email'] = $this->language->get('text_empty_email');
                    $data['text_validate_email'] = $this->language->get('text_validate_email');
                

		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', 'SSL');
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');

		$data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}


			$config_footer_design = $this->config->get('config_footer_design');	
			if($config_footer_design =='2') {
				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer2.tpl')) {
					return $this->load->view($this->config->get('config_template') . '/template/common/footer2.tpl', $data);
				} else {
					return $this->load->view('default/template/common/footer2.tpl', $data);
				}
			} else { 
			
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/footer.tpl', $data);
		} else {

			} 
			
			return $this->load->view('default/template/common/footer.tpl', $data);
		}
	}
}
