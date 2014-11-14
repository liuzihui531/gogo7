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
class ShopgoodsController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('商品管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['goods_name']) || !empty($_GET['goods_name'])) {
            $criteria->addSearchCondition('goods_name', $_GET['goods_name']);
        }
        $criteria->order = 'id desc';
        $model = ShopGoods::model()->findAll($criteria);
        $this->render('index', array('model' => $model));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加商品');
        $model = new ShopGoods();
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        $this->breadcrumbs = array('修改商品');
        $model = ShopGoods::model()->findByPk($id);
        $this->checkEmpty($model);
        $model->start_time = date('Y-m-d',$model->start_time);
        $model->expire_time = date('Y-m-d',$model->expire_time);
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $model = ShopGoods::model()->find('id=:id', array(':id' => UtilD::numeric($_POST['id'])));
            $old_img = $model->image;
            $delete_image = $_POST['delete_image'];
            $this->checkEmpty($model);
        } else {
            $model = new ShopGoods();
            $model->created = time();
        }
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'id-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        $transaction = Yii::app()->db->beginTransaction();
        try {
            if (isset($_FILES['image']['tmp_name']) && !empty($_FILES['image']['tmp_name'])) {
                $upload = new Upload();
                if (isset($old_img)) {
                    $upload->unlink($old_img);
                }
                $upload->is_thumb = true;
                $upload->thumb_type = 'shop_goods';
                $upload->uploads('image');
                $model->image = $upload->file_url;
            }
            if (isset($delete_image) && $delete_image == 1) {
                Upload::model()->unlink($model->image);
                $model->image = "";
            }
            if (isset($_POST['ShopGoods'])) {
                $post = $_POST['ShopGoods'];
                $model->attributes = $post;
                $model->start_time = strtotime($model->start_time);
                $model->expire_time = strtotime($model->expire_time.' 23:59:59');
                if($model->expire_time < $model->start_time){
                    $this->error('过期时间必须大于开始时间');
                }
                $rs = $model->save();
                if (!$rs)
                    throw new Exception('保存数据失败！');                
                $transaction->commit();
                $this->success('保存成功！', $this->url('index'));
            }
        } catch (Exception $e) {
            $transaction->rollback();
            $this->error($e->getMessage());
        }
    }

    public function actionDelete() {
        $id = trim(Yii::app()->request->getParam('id', '0'), ',');
        $ids = explode(',', $id);
        $transaction = Yii::app()->db->beginTransaction();
        try {
            $criteria = new CDbCriteria();
            $criteria->addInCondition('id', $ids);
            $model = ShopGoods::model()->findAll($criteria);
            if (!$model) {
                throw new Exception('操作有误！');
            }
            foreach ($model as $k => $v) {
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
