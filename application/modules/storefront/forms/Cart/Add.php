<?php
class Storefront_Form_Cart_Add extends SF_Form_Abstract
{
	
	
	public function init()
	{
		$this->setName('product');
		$id = new Zend_Form_Element_Hidden('id');
		$id->addFilter('Int');
		
		$name = new Zend_Form_Element_Text('name');
		$name->setLabel('Name')
		->setRequired(true)
		->addFilter('StripTags')
		->addFilter('StringTrim')
		->addValidator('NotEmpty');
		
		$details = new Zend_Form_Element_Text('details');
		$details->setLabel('Details')
		->setRequired(true)
		->addFilter('StripTags')
		->addFilter('StringTrim')
		->addValidator('NotEmpty');
		
		$image = new Zend_Form_Element_Text('image');
		$image->setLabel('image')
		->setRequired(true)
		->addFilter('StripTags')
		->addFilter('StringTrim')
		->addValidator('NotEmpty');
		
		$submit = new Zend_Form_Element_Submit('submit');
		$submit->setAttrib('id', 'submitbutton');
		$this->addElements(array($id, $name, $details, $image, $submit));
	}
	
	  /*public function init()
	  {
		  $this->setDisableLoadDefaultDecorators(true);
		  $this->setMethod('post');
		  $this->setAction('');
		  $this->setDecorators(array(
			   'FormElements',
				'Form'
			));
			$this->addElement('text', 'qty', array(
				   'decorators' => array(
					   'ViewHelper'
				   ),
				   'style' => 'width: 20px;',
				   'value' => 1
			 ));
			 $this->addElement('submit', 'buy-item', array(
				  'decorators' => array(
						'ViewHelper'
				   ),
				   'label' => 'Add to cart'
			  ));
			  $this->addElement('hidden', 'productId', array(
				   'decorators' => array(
						 'ViewHelper'
					),
			   ));
			   $this->addElement('hidden', 'returnto', array(
					'decorators' => array(
						   'ViewHelper'
					 ),
				));
	  }*/
}



?>