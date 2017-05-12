<?php
class ModelModuleSettingnewstore extends Model {
	public function getWallCategories($parent_id = 0) {
		
	}	
	private $land;
    
    public function __construct($registry) {
		parent::__construct($registry);
        $this->land = $this->land();
    }
    
    private function land() {
        return (int)$this->config->get('config_language_id');
    }
	public function getCategorys($category) {
		if($category){
			$query = $this->db->query("SELECT c.`category_id`, cd2.`name` FROM " . DB_PREFIX . "category c 
			LEFT JOIN " . DB_PREFIX . "category_description cd2 ON (c.category_id = cd2.category_id) 
			WHERE c.`category_id` IN (".implode(',',$category).") AND cd2.language_id = " . $this->land . "");
			return $query->rows;
		}
	}
	
	
	public function getCategory($category_id) {
		$query = $this->db->query("SELECT c.`category_id`, cd2.`name` FROM " . DB_PREFIX . "category c 
		LEFT JOIN " . DB_PREFIX . "category_description cd2 ON (c.`category_id` = cd2.`category_id`) WHERE c.`category_id` = " . (int)$category_id . " AND cd2.language_id = " . $this->land . "");

		return $query->row;
	}
	public function getInformations() {
			$sql = "SELECT i.`information_id`,id.`title` FROM " . DB_PREFIX . "information i 
			LEFT JOIN " . DB_PREFIX . "information_description id ON (i.`information_id` = id.`information_id`) 
			WHERE id.language_id = " . $this->land . "";

			$query = $this->db->query($sql);

			return $query->rows;
		
	}
	public function getProduct($product_id) {
		$query = $this->db->query("SELECT p.`product_id`, pd.`name` FROM " . DB_PREFIX . "product p 
		LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) 
		WHERE p.product_id = '" . (int)$product_id . "' AND pd.language_id = " . $this->land . "");

		return $query->row;
	}
	
	public function saveSetting($data) {
		$store_id = 0;			
		$code = 'settingnewstore';					
		$this->db->query("DELETE FROM `" . DB_PREFIX . "setting` WHERE store_id = '". $store_id ."' AND `code` = '". $code ."'");
		
		foreach ($data as $key => $value) {
			if (!is_array($value)) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '0', `code` = '" . $this->db->escape($code) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape($value) . "'");
				} else {
					if (VERSION < 2.1) {
						$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '0', `code` = '" . $this->db->escape($code) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape(serialize($value)) . "', serialized = '1'");
					} else {
						$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '0', `code` = '" . $this->db->escape($code) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape(json_encode($value)) . "', serialized = '1'");
					}
				}	
			}
	}
	
	public function saveSettingMenu($data) {
		$store_id = 0;			
		$code = 'settingnewstore';					
		$config_menu_item = 'config_menu_item';					
		$this->db->query("DELETE FROM `" . DB_PREFIX . "setting` WHERE store_id = '". $store_id ."' AND `code` = '". $code ."' AND `key`='". $config_menu_item ."'");
		
		foreach ($data as $key => $value) {
			if (!is_array($value)) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '0', `code` = '" . $this->db->escape($code) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape($value) . "'");
				} else {
					if (VERSION < 2.1) {
						$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '0', `code` = '" . $this->db->escape($code) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape(serialize($value)) . "', serialized = '1'");
					} else {
						$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '0', `code` = '" . $this->db->escape($code) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape(json_encode($value)) . "', serialized = '1'");
					}
				}	
			}
	}
	
	
	
}