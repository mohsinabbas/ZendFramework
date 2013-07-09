<?php
class Storefront_Model_Cart extends Zend_Db_Table_Abstract//SF_Model_Abstract implements SeekableIterator, Countable, ArrayAccess
{
 		 protected $_name = 'products';
		 
         protected $_items = array();
         protected $_subTotal = 0;
         protected $_total = 0;
         protected $_shipping = 0;
         protected $_sessionNamespace;
		 
		 
		 
		 public function getProduct($id)
		{
			$id = (int)$id;
			$row = $this->fetchRow('id = ' . $id);
			if (!$row) {
			throw new Exception("Could not find row $id");
			}
			return $row->toArray();
		}
		
		public function addProduct($name, $details, $image)
		{
			$data = array(
			'name' => $name,
			'details' => $details,
			'image' => $image,
			);
			$this->insert($data);
		}
		
		 	
    /*...*/
}

?>