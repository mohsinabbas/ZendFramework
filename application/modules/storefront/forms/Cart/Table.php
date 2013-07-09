<?php
class Storefront_Form_Cart_Table extends SF_Form_Abstract
{
	public function init()
	{
		 $this->setDisableLoadDefaultDecorators(true);
		 $this->setDecorators(array(
				 array(
					  'ViewScript',
					   array('viewScript' => 'cart/_cart.phtml')
				  ),
				  'Form'
		 ));
		 $this->setMethod('post');
		 $this->setAction('');
		 $this->addElement('submit', 'update-cart', array(
				 'decorators' => array(
						 'ViewHelper'
				  ),
				  'label' => 'Update'
		   ));
	}
}

?>