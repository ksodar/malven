<?php
class ControllerModuleFoundCheaperProduct extends Controller {
	public function index() {
		$data = array();
		if (isset($this->request->get['product_id'])) {
			$data['product_id'] = $this->request->get['product_id'];
		} else {
			$data['product_id'] = '0';
		}
	
		$this->load->language('module/found_cheaper_product');
		$this->load->model('catalog/product');
		$data['lang_id'] = $this->config->get('config_language_id');
		$fcpdata = (array)$this->config->get('fcpdata');
		$data['fcpdata'] = $fcpdata;
		$data['button_send_found_cheaper'] = $this->language->get('button_send_found_cheaper');
		$data['name_field'] = ($this->customer->isLogged()) ? $this->customer->getFirstName() : '';
		$data['telephone_field'] = ($this->customer->isLogged()) ? $this->customer->getTelephone() : '';
		$data['email_field'] = ($this->customer->isLogged()) ? $this->customer->getEmail() : '';			
		if (VERSION < 2.2) {
			if(file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/found_cheaper_product.tpl')) {
				$view = $this->load->view($this->config->get('config_template') . '/template/module/found_cheaper_product.tpl', $data);
			} else {
				$view = $this->load->view('default/template/module/found_cheaper_product.tpl', $data);
			}
			$this->response->setOutput($view);
		} else { 
			$this->response->setOutput($this->load->view('module/found_cheaper_product', $data));
		}
	}
	
	

  public function found_cheaper_product_confirm() {
    $json = array();
    $this->language->load('module/found_cheaper_product');
    $this->load->model('module/found_cheaper_product');

    $fcpdata = (array)$this->config->get('fcpdata');
    if (isset($this->request->post['name_field'])) {
      if ((isset($fcpdata['name_field']) && $fcpdata['name_field_required'] == 1) && (utf8_strlen(trim($this->request->post['name_field'])) < 1) || (utf8_strlen(trim($this->request->post['name_field'])) > 32)) {
        $json['error']['name_field'] = $this->language->get('error_name_field');
      }
    }
	if (isset($this->request->post['telephone_field'])) {
      if ((isset($fcpdata['telephone_field']) && $fcpdata['telephone_field_required'] == 1) && (utf8_strlen($this->request->post['telephone_field']) < 3) || (utf8_strlen($this->request->post['telephone_field']) > 20)) {
        $json['error']['telephone_field'] = $this->language->get('error_telephone_field');
      }
    }
    if (isset($this->request->post['link_field'])) {
      if (isset($fcpdata['link_field']) && $fcpdata['link_field_required'] == 1) {
        if (empty($this->request->post['link_field'])) {
          $json['error']['link_field'] = $this->language->get('error_link_field');
        }
      }
    }
	if (isset($this->request->post['email_field'])) {
		if (isset($fcpdata['email_field']) && $fcpdata['email_field_required'] == 1) {
			if(!preg_match("/^([a-z0-9_\.-]+)@([a-z0-9_\.-]+)\.([a-z\.]{2,6})$/", $this->request->post['email_field'])){
				$json['error']['email_field'] = $this->language->get('error_email_field');
			}
        
		}
    }
    if (isset($this->request->post['comment_field'])) {
      if ((isset($fcpdata['comment_field']) && $fcpdata['comment_field_required'] == 1) && (utf8_strlen($this->request->post['comment_field']) < 3) || (utf8_strlen($this->request->post['comment_field']) > 350)) {
        $json['error']['comment_field'] = $this->language->get('error_comment_field');
      }
    }

    if (!isset($json['error'])) {
		if (isset($this->request->post['name_field'])) {
            $data_save_post['name_field'] = $this->request->post['name_field'];
        } else {
            $data_save_post['name_field'] = '';
        }
		if (isset($this->request->post['telephone_field'])) {
            $data_save_post['telephone_field'] = $this->request->post['telephone_field'];
        } else {
            $data_save_post['telephone_field'] = '';
        }
		if (isset($this->request->post['link_field'])) {
            $data_save_post['link_field'] = $this->request->post['link_field'];
        } else {
            $data_save_post['link_field'] = '';
        }
		if (isset($this->request->post['comment_field'])) {
            $data_save_post['comment_field'] = $this->request->post['comment_field'];
        } else {
            $data_save_post['comment_field'] = '';
        }
		if (isset($this->request->post['email_field'])) {
            $data_save_post['email_field'] = $this->request->post['email_field'];
        } else {
            $data_save_post['email_field'] = '';
        }
		if (isset($this->request->post['fcp_product_id'])) {
            $data_save_post['fcp_product_id'] = $this->request->post['fcp_product_id'];
        } else {
            $data_save_post['fcp_product_id'] = '';
        }

      $this->model_module_found_cheaper_product->SaveFoundCheaper($data_save_post);

      $json['success'] = $this->language->get('text_success_send');

      if ($fcpdata['send_email_status']) {
		
		
        $html_fcpdata['date_added'] = date('m/d/Y h:i:s a', time());
		$html_fcpdata['text_dateadded'] = $this->language->get('text_dateadded');
        $html_fcpdata['logo']         = $this->config->get('config_url').'image/'.$this->config->get('config_logo');      
        $html_fcpdata['store_name']   = $this->config->get('config_name');
        $html_fcpdata['store_url']    = $this->config->get('config_url');  
        $html_fcpdata['text_buyer']   = $this->language->get('text_buyer');  
        $html_fcpdata['text_name_fields'] = $this->language->get('text_name_fields');  
        $html_fcpdata['text_telephone_field'] = $this->language->get('text_telephone_field');  
        $html_fcpdata['text_link_field'] = $this->language->get('text_link_field');  
        $html_fcpdata['text_comment_field'] = $this->language->get('text_comment_field');  
        $html_fcpdata['text_email_field'] = $this->language->get('text_email_field');  
        
        $html_fcpdata['data_buyer']   = $data_save_post;
		if (version_compare(VERSION, '2.2', '<')) {
        if (file_exists(DIR_TEMPLATE.$this->config->get('config_template').'/template/mail/found_cheaper_product_mail.tpl')) {
          $html = $this->load->view($this->config->get('config_template').'/template/mail/found_cheaper_product_mail.tpl', $html_fcpdata);
        } else {
          $html = $this->load->view('default/template/mail/found_cheaper_product_mail.tpl', $html_fcpdata);
        }
		} else {
			$html = $this->load->view('mail/found_cheaper_product_mail', $html_fcpdata);
		}
		 if (version_compare(VERSION, '2.0.2', '<')) {
          $mail = new Mail($this->config->get('config_mail'));
        } else {
          $mail = new Mail();
          $mail->protocol = $this->config->get('config_mail_protocol');
          $mail->parameter = $this->config->get('config_mail_parameter');
          $mail->smtp_hostname = (version_compare(VERSION, '2.0.3', '<')) ? $this->config->get('config_mail_smtp_host') : $this->config->get('config_mail_smtp_hostname');
          $mail->smtp_username = $this->config->get('config_mail_smtp_username');
          $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
          $mail->smtp_port = $this->config->get('config_mail_smtp_port');
          $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
        }
        $mail->setTo($fcpdata['email_found_cheaper']);
        $mail->setFrom($this->config->get('config_email'));
        $mail->setSender($this->config->get('config_name'));
        $mail->setSubject($this->language->get('subject'));
        $mail->setHtml($html);
        $mail->send();
      }
    }

    $this->response->addHeader('Content-Type: application/json');
    $this->response->setOutput(json_encode($json));
  }
}
