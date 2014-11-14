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
class ShopsellerController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('商家管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['seller_name']) || !empty($_GET['seller_name'])) {
            $criteria->addSearchCondition('seller_name', $_GET['seller_name']);
        }
        if (isset($_GET['seller_en_name']) || !empty($_GET['seller_en_name'])) {
            $criteria->addSearchCondition('seller_en_name', $_GET['seller_en_name']);
        }
        $criteria->order = 'id desc';
        $model = ShopSeller::model()->findAll($criteria);
        $this->render('index', array('model' => $model));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('商家管理');
        $model = new Shopseller();
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        $this->breadcrumbs = array('修改商家');
        $model = Shopseller::model()->findByPk($id);
        $this->checkEmpty($model);
        $model->password = '';
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $id = Yii::app()->request->getParam('id', 0);
            $model = Shopseller::model()->findByPk($id);
            $this->checkEmpty($model);
        } else {
            $model = new Shopseller();
            $model->created = time();
        }
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'id-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if (isset($_POST['ShopSeller'])) {
            if(empty($_POST['ShopSeller']['password'])){
                unset($_POST['ShopSeller']['password']);
            }else{
                $_POST['ShopSeller']['password'] = UtilD::password($_POST['ShopSeller']['password']);
            }
            $model->attributes = $_POST['ShopSeller'];            
            if ($model->save()) {
                $this->success('保存成功！', $this->createUrl('index'));
            }
        }
        $this->render('_form', array('model' => $model));
    }
    
    public function actionDelete() {
        $id = trim(Yii::app()->request->getParam('id', '0'), ',');
        $ids = explode(',', $id);
        $transaction = Yii::app()->db->beginTransaction();
        try {
            $criteria = new CDbCriteria();
            $criteria->addInCondition('id', $ids);
            $model = Shopseller::model()->findAll($criteria);
            if (!$model) {
                throw new Exception('操作有误！');
            }
            foreach ($model as $k => $v) {
                if(ShopGoods::model()->findByAttributes(array('seller_id'=>$v->id))){
                    throw new Exception('您必须把该商家下的商品全部删除才能删除商家！');
                }
                if (!$v->delete()) {
                    throw new Exception('操作有误！');
                }
            }
            $transaction->commit();
            $this->success('删除成功！', Yii::app()->request->urlReferrer);
        } catch (Exception $e) {
            $transaction->rollback();
            $this->error($e->getMessage(), Yii::app()->request->urlReferrer);
        }
    }

}
