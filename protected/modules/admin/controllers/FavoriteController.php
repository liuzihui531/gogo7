<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of FavoriteController
 *
 * @author lzh
 */
class FavoriteController extends AdminControllerD{
    //put your code here
    public function actionIndex(){
        $this->breadcrumbs = array('用户收藏管理');
        $criteria = new CDbCriteria();
        $criteria->order = 'id desc';
        //$criteria->limit = '10';
        $model = Favorite::model()->findAll($criteria);
        $this->render('index', array('model' => $model));
    }
}
