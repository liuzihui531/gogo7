<?php

class AdminModule extends CWebModule {

    public function init() {
        $this->defaultController = 'index';
        //$this->layout = '//layouts/main';
        // this method is called when the module is being created
        // you may place code here to customize the module or the application
        // import the module-level models and components
        $this->setImport(array(
            'admin.models.*',
            'admin.components.*',
        ));
        Yii::app()->setComponents(array(
            'user' => array(
                // enable cookie-based authentication
                'allowAutoLogin' => true,
                'stateKeyPrefix' => 'admin',
                'loginUrl' => array('/admin/login'),
            )
        ));
    }

    public function beforeControllerAction($controller, $action) {
        $controller->layout = 'application.modules.admin.views.layouts.main';
        $extraActions = array('login');
        if (!in_array(strtolower($controller->id), $extraActions) && Yii::app()->user->isGuest) {
            Yii::app()->user->loginRequired();
        }
        if (parent::beforeControllerAction($controller, $action)) {
            // this method is called before any module controller action is performed
            // you may place customized code here
            return true;
        } else
            return false;
    }

}
