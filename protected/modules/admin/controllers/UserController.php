<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of UserController
 *
 * @author lzh
 */
class UserController extends AdminControllerD{
    public function actionIndex() {
        $this->breadcrumbs = array('管理注册会员');
        $criteria = new CDbCriteria();
        if(isset($_GET['username']) && !empty($_GET['username'])){
            $criteria->addSearchCondition('username', $_GET['username']);
        }
        $criteria->order = 'id desc';
        $count = User::model()->count($criteria);
        $pages = new CPagination($count);
        $pages->pageSize = 10;
        $pages->applyLimit($criteria);
        $model = User::model()->findAll($criteria);
        $this->render('index', array('model' => $model, 'pages' => $pages));
    }
}
