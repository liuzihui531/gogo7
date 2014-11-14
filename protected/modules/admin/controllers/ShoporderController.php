<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ShopsellerController
 *
 * @author lzh
 */
class ShoporderController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('订单管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['seller_name']) || !empty($_GET['seller_name'])) {
            $criteria->addSearchCondition('seller_name', $_GET['seller_name']);
        }
        if (isset($_GET['seller_en_name']) || !empty($_GET['seller_en_name'])) {
            $criteria->addSearchCondition('seller_en_name', $_GET['seller_en_name']);
        }
        $criteria->order = 'id desc';
        $count = ShopOrder::model()->count($criteria);
        $pages = new CPagination($count);
        $pages->pageSize = 10;
        $pages->applyLimit($criteria);
        $model = ShopOrder::model()->findAll($criteria);
        $this->render('index', array('model' => $model,'pager'=>$pages));
    }

    public function actionView($id){
        $this->breadcrumbs = array('订单详情');
        $model = ShopOrder::model()->findByPk($id);
        $this->checkEmpty($model);
        $this->render('view',array('model'=>$model));
    }
}
