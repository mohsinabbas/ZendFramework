<?php
class CartController extends Zend_Controller_Action
{
	protected $_cartModel;
	protected $_catalogModel;
	public function init()
	{
	   //$this->_cartModel = new Storefront_Model_Cart();
	   //$this->_catalogModel = new Storefront_Model_Catalog();
	}
	
	public function indexAction()
    {
        // action body
		//$this->view->cartModel = 'Cart Model text is here';
		$products = new Storefront_Model_Cart();
		$this->view->products = $products->fetchAll();
		
    }
	
	public function testAction(){
		$this->view->words = 'Hello World!!!!!!';
		
	}
	
	
	public function addAction()
    {
        // action body
		$form = new Storefront_Form_Cart_Add();
		$form->submit->setLabel('Add');
		$this->view->form = $form;
		if ($this->getRequest()->isPost()) 
		{
			$formData = $this->getRequest()->getPost();
			
			if ($form->isValid($formData)) 
			{
				$name = $form->getValue('name');
				$details = $form->getValue('details');
				$image = $form->getValue('image');
				$product = new Storefront_Model_Cart();
				$product->addProduct($name, $details, $image);
				$this->_helper->redirector('index');
			} 
			else 
			{
				$form->populate($formData);
			}
		}
    }

	
	
	/*public function addAction()
	{
		$product = $this->_catalogModel->getProductById(
			 $this->_getParam('productId')
		 );
		 if(null === $product) {
			 throw new SF_Exception('Product could not be added 
									 to cart as it does not exist');
		 }
		 $this->_cartModel->addItem(
			   $product, $this->_getParam('qty')
		 );
		 $return = rtrim(
			   $this->getRequest()->getBaseUrl(), '/'
		  ) . $this->_getParam('returnto');
		  $redirector = $this->getHelper('redirector');
		   return $redirector->gotoUrl($return);
	}
	public function viewAction()
	{
			 $this->view->cartModel = $this->_cartModel;
	 }
	 public function updateAction()
	 {
		  foreach($this->_getParam('quantity') as $id => $value)
		  {
			   $product = $this->_catalogModel->getProductById($id);
		   if (null !== $product) {
				$this->_cartModel->addItem($product, $value);
			}
	 }
		$this->_cartModel->setShippingCost(
			  $this->_getParam('shipping')
	);
		   return $this->_helper->redirector('view');
	}*/
}

?>