<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CommentController
 *
 * @author lzh
 */
class CommentController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('评论管理');
        $criteria = new CDbCriteria();
//        if (isset($_GET['bc_name']) || !empty($_GET['bc_name'])) {
//            $criteria->addSearchCondition('bc_name', $_GET['bc_name']);
//        }
        $criteria->order = 'id desc';
        $count = Comment::model()->count($criteria);
        $pages = new CPagination($count);
        $pages->pageSize = 10;
        $pages->applyLimit($criteria);
        $model = Comment::model()->findAll($criteria);
        $this->render('index', array('model' => $model, 'pages' => $pages));
    }

}
