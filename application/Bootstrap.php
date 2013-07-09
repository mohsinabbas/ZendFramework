<?php
class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{

		protected function _initAutoload(){
			
			/*$autoloader = new Zend_Application_Module_Autoloader(array(
                    'namespace' => 'Application',
                    'basePath' => APPLICATION_PATH.'/modules',
                    
                ));*/
				
			$autoloader = Zend_Loader_Autoloader::getInstance();
			$autoloader->setFallbackAutoloader(true);
		
			$default_loader = new Zend_Application_Module_Autoloader(array(
				'namespace' => 'Storefront',
				'basePath'  =>  APPLICATION_PATH . '/modules/storefront'
			));
		   
			/*$admin_loader = new Zend_Application_Module_Autoloader(array(
			   'namespace' => 'Admin',
			   'basePath'  => APPLICATION_PATH . '/modules/admin'
			));*/	

		}

}

