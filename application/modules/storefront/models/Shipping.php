<?php

class Storefront_Model_Shipping extends SF_Model_Abstract
 {
	  protected $_shippingData = array(
			'Standard' => 1.99,
			'Special' => 5.99,
	  );
	  public function getShippingOptions()
	  {
		   return $this->_shippingData;
	  }
 }

?>