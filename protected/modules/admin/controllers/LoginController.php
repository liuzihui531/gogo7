<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of LoginController
 *
 * @author lzh
 */
class LoginController extends AdminControllerD {

    public function actions() {
        /**
         * 验证码
         */
        return array(
            'captcha' => array(
                'class' => 'CCaptchaAction',
                'width' => 70,
                'height' => 30,
                'padding' => 0,
                'minLength' => 4,
                'maxLength' => 4,
                'testLimit' => 999,
                'transparent' => true,
            ),
        );
    }

    /**
     * 登录代码
     */
    public function actionIndex() {
        $this->layout = 'none';
        $model = new LoginForm('login');
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'id-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if(Yii::app()->request->isPostRequest){
            $model->attributes = Yii::app()->request->getParam('LoginForm');
            if ($model->validate() && $model->login()){
                $this->redirect($this->createUrl('/admin'));
            }
        }
        $this->render('index', array('model' => $model));
    }
    
    public function actionLogout(){
        Yii::app()->user->logout();
        $this->redirect($this->createUrl('/admin'));
    }
}
