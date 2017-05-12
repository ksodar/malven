<?php
class ModelSaleCallback extends Model {
	public function editCallback($callback_id,$data) {
		$this->db->query("UPDATE " . DB_PREFIX . "callback SET name = '" . $this->db->escape($data['name']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', comment = '" . $this->db->escape($data['comment']) . "', email_buyer = '" . $this->db->escape($data['email_buyer']) . "', username = '" . $this->db->escape($data['username']) . "', status_id = '" . (int)$data['status_id'] . "', date_modified = NOW() WHERE call_id = '" . (int)$callback_id . "'");	
	}	
	public function editCallbacks($callback_id) {
      	$this->db->query("UPDATE " . DB_PREFIX . "callback SET status_id = '1', date_modified = NOW() WHERE call_id = '" . (int)$callback_id . "'");
	}	
	public function deleteCallback($callback_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "callback WHERE call_id = '" . (int)$callback_id . "'");	
		$this->cache->delete('callback');
	}	
	public function getСallback($callback_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "callback WHERE call_id = '" . (int)$callback_id . "'");		
		return $query->row;
	}	
	public function getCallbacks($data = array()) {
		if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "callback";
			
			if (isset($data['filter_status'])) {
				$sql .= " WHERE status_id = '" . $data['filter_status'] . "'";
			} else {
				$sql .= " WHERE status_id >= '0'";
			}
			if (!empty($data['filter_callback_id'])) {
				$sql .= " AND call_id = '" . $data['filter_callback_id'] . "'";
			}
			if (!empty($data['filter_fio'])) {
				$sql .= " AND name LIKE '" . $this->db->escape($data['filter_fio']) . "%'";
			}
			if (!empty($data['filter_phone'])) {
				$sql .= " AND telephone LIKE '" . $this->db->escape($data['filter_phone']) . "%'";
			}
			if (!empty($data['filter_email'])) {
				$sql .= " AND email_buyer LIKE '" . $this->db->escape($data['filter_email']) . "%'";
			}
			if (!empty($data['filter_date_added'])) {
				$sql .= " AND DATE(date_added) = DATE('" . $this->db->escape($data['filter_date_added']) . "')";
			}
			$sort_data = array(
				'call_id',
				'name',
				'telephone'
			);	
			
			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
				$sql .= " ORDER BY " . $data['sort'];	
			} else {
				$sql .= " ORDER BY call_id";	
			}
			
			if (isset($data['order']) && ($data['order'] == 'DESC')) {
				$sql .= " DESC";
			} else {
				$sql .= " ASC";
			}
			
			if (isset($data['start']) || isset($data['limit'])) {
				if ($data['start'] < 0) {
					$data['start'] = 0;
				}					

				if ($data['limit'] < 1) {
					$data['limit'] = 20;
				}	
			
				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
			}				
			
			$query = $this->db->query($sql);
		
			return $query->rows;
		} else {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "callback ORDER BY call_id");
			$callback_data = $query->rows;
			return $callback_data;
		}
	}
	public function getTotalCallbacks($data = array()) {
		$sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "callback"; 
		if (isset($data['filter_status'])) {
			$sql .= " WHERE status_id = '" . $data['filter_status'] . "'";
		} else {
			$sql .= " WHERE status_id >= '0'";
		}
		if (!empty($data['filter_callback_id'])) {
			$sql .= " AND call_id = '" . $data['filter_callback_id'] . "'";
		}	
		if (!empty($data['filter_fio'])) {
			$sql .= " AND name LIKE '" . $this->db->escape($data['filter_fio']) . "%'";
		}
		if (!empty($data['filter_phone'])) {
			$sql .= " AND telephone LIKE '" . $this->db->escape($data['filter_phone']) . "%'";
		}
		if (!empty($data['filter_email'])) {
				$sql .= " AND email_buyer LIKE '" . $this->db->escape($data['filter_email']) . "%'";
			}
		if (!empty($data['filter_date_added'])) {
			$sql .= " AND DATE(date_added) = DATE('" . $this->db->escape($data['filter_date_added']) . "')";
		}
		$query = $this->db->query($sql);	
		return $query->row['total'];
	}		
	public function addDbCallback() {
		$query = $this->db->query("CREATE TABLE IF NOT EXISTS  ". DB_PREFIX. "call_topic (`id` int(11) NOT NULL primary key AUTO_INCREMENT,`name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL)");
		$query = $this->db->query("CREATE TABLE IF NOT EXISTS  ". DB_PREFIX. "social_table (`social_id` int(11) NOT NULL primary key AUTO_INCREMENT,`name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, image text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL)");
		$query = $this->db->query("CREATE TABLE IF NOT EXISTS  ". DB_PREFIX. "call_topic (`id` int(11) NOT NULL primary key AUTO_INCREMENT,`name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL)");
		  
		$query = $this->db->query("CREATE TABLE IF NOT EXISTS  `social_table` (`social_id` int(11) NOT NULL primary key AUTO_INCREMENT,`name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, image text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL)");
		$query = $this->db->query("CREATE TABLE IF NOT EXISTS  ". DB_PREFIX ."key_callback (`key` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, license_key text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL)");
		$license_key = $this->db->query("SELECT `key` FROM ". DB_PREFIX ."key_callback WHERE `key`='local_key' LIMIT 1");
		if ($license_key->num_rows <= 0) { $this->db->query("INSERT INTO ". DB_PREFIX ."key_callback (`key`, `license_key`) VALUES('local_key', '');"); }
		$query = $this->db->query("CREATE TABLE IF NOT EXISTS  " . DB_PREFIX . "callback (call_id int(11) NOT NULL primary key AUTO_INCREMENT,
			name varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
			telephone varchar(30) NOT NULL,date_added datetime NOT NULL,
			date_modified datetime NOT NULL,
			status_id int(11) NOT NULL,
			comment text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
			callback_url text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
			comment_buyer text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
			email_buyer text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
			date_callback text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
			topic_callback_send text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
			time_callback_on text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
			time_callback_off text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
			username text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL)");
			$query = $this->db->query("CREATE TABLE IF NOT EXISTS  ". DB_PREFIX ."edit_key_product (
			`key` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
			license_key text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL)");	 
			$license_key = $this->db->query("SELECT `key` FROM ". DB_PREFIX ."edit_key_product WHERE `key`='local_key' LIMIT 1");
			if ($license_key->num_rows <= 0) { $this->db->query("INSERT INTO ". DB_PREFIX ."edit_key_product (`key`, `license_key`) VALUES( 'local_key', '');");}
	}
	public function CreateTableNewstore() {
				$plus = $this->db->query("DESC `".DB_PREFIX."review` plus");
				if (!$plus->num_rows) { 
				    $this->db->query("ALTER TABLE `" . DB_PREFIX . "review` ADD `plus` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `text`");
				}	
				$minus = $this->db->query("DESC `".DB_PREFIX."review` minus");
				if (!$minus->num_rows) { 
				    $this->db->query("ALTER TABLE `" . DB_PREFIX . "review` ADD `minus` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `text`");
				}
				$purchased = $this->db->query("DESC `".DB_PREFIX."review` purchased");
				if (!$purchased->num_rows) { 
				    $this->db->query("ALTER TABLE `" . DB_PREFIX . "review` ADD `purchased` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `text`");
				}
				$admin_reply = $this->db->query("DESC `".DB_PREFIX."review` admin_reply");
				if (!$admin_reply->num_rows) { 
				    $this->db->query("ALTER TABLE `" . DB_PREFIX . "review` ADD `admin_reply` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `text`");
				}
				$query = $this->db->query("CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "newsletter (
                    `id` INT( 11 ) NOT NULL AUTO_INCREMENT ,
					`email` VARCHAR( 255 ) NOT NULL ,
                    `group` VARCHAR( 25 ) NOT NULL ,
                    `date_added` DATETIME NOT NULL ,
                    PRIMARY KEY ( `id` ))");	
				 
				$query = $this->db->query("CREATE TABLE IF NOT EXISTS  ". DB_PREFIX ."edit_key_product (
					`key` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
					license_key text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL)");
	
				$license_key = $this->db->query("SELECT `key` FROM ". DB_PREFIX ."edit_key_product WHERE `key`='local_key' LIMIT 1");
				if ($license_key->num_rows <= 0) { $this->db->query("INSERT INTO ". DB_PREFIX ."edit_key_product (`key`, `license_key`) VALUES( 'local_key', '');");}
				$query = $this->db->query("CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "newsletter (
                    `id` INT( 11 ) NOT NULL AUTO_INCREMENT ,
                    `email` VARCHAR( 255 ) NOT NULL ,
					`group` VARCHAR( 25 ) NOT NULL ,
                    `date_added` DATETIME NOT NULL ,
                    PRIMARY KEY ( `id` ))");	  	
				$query = $this->db->query("DESC `" . DB_PREFIX . "option` status_color_type");
				if (!$query->num_rows) { 
				    $this->db->query("ALTER TABLE `" . DB_PREFIX . "option` ADD `status_color_type` int(11) NOT NULL");
				}
				$query = $this->db->query("DESC " . DB_PREFIX . "option_value color");
				if (!$query->num_rows) { 
				    $this->db->query("ALTER TABLE " . DB_PREFIX . "option_value ADD `color` varchar(255) NOT NULL");
				}		
				
	}
	public function countTotal() {	 
		$countcallback = $this->db->query("SELECT COUNT(status_id) AS countcallback FROM `".DB_PREFIX."callback` WHERE status_id = '0'");				
		return $countcallback->row['countcallback'];		
	}
}
?>
