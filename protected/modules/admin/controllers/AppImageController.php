<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AppImageController
 *
 * @author lzh
 */
class AppImageController extends AdminControllerD{
    public function actionIndex() {
        $this->breadcrumbs = array('APP图片管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['if_image']) || !empty($_GET['if_image'])) {
            if(strval($_GET['if_image']) === '1'){
                $criteria->addCondition("image <> ''");                
            }elseif(strval ($_GET['if_image']) === '0'){                
                $criteria->addCondition("image = ''");
            }
        }
        $criteria->order = 'id desc';
        $count = AppImage::model()->count($criteria);
        $pages = new CPagination($count);
        $pages->pageSize = 10;
        $pages->applyLimit($criteria);
        $model = AppImage::model()->findAll($criteria);
        $this->render('index', array('model' => $model, 'pages' => $pages));
    }
    public function actionCreate() {
        $this->breadcrumbs = array('添加APP图片');
        $model = new AppImage();
        $this->render('_form', array('model' => $model));
    }
    public function actionUpdate($id=0) {
        $this->breadcrumbs = array('修改APP图片');
        $model = AppImage::model()->findByPk($id);
        $this->checkEmpty($model);
        $seller = Seller::model()->getSellerByCity($model->city_id, 'id,seller_name', true);
        $this->render('_form', array('model' => $model,'seller'=>$seller));
    }
    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $id = Yii::app()->request->getParam('id', 0);
            $model = AppImage::model()->findByPk($id);
            $old_img = $model->image;
            $delete_image = Yii::app()->request->getParam('delete_image', 0);
            $this->checkEmpty($model);
        } else {
            $model = new AppImage();
            $model->created = time();
        }
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'id-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if (isset($_FILES['image']['tmp_name']) && !empty($_FILES['image']['tmp_name'])) {
            $upload = new Upload();
            if (isset($old_img)) {
                $upload->unlink($old_img);
            }
            $upload->is_thumb = true;
            $upload->thumb_type = 'area';
            $upload->uploads('image');
            $model->image = $upload->file_url;
        }
        if (isset($delete_image) && $delete_image == 1) {
            Upload::model()->unlink($model->image);
            $model->image = "";
        }
        if (isset($_POST['AppImage'])) {
            $model->attributes = $_POST['AppImage'];
            $model->seller_id = isset($_POST['seller_id']) && intval($_POST['seller_id']) > 0 ? intval($_POST['seller_id']) : 0;
            if ($model->save()) {
                $this->success('保存成功！', $this->url('index'));
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
            $model = AppImage::model()->findAll($criteria);
            if (!$model) {
                throw new Exception('操作有误！');
            }
            foreach ($model as $k => $v) {
                if (!$v->delete()) {
                    throw new Exception('操作有误！');
                }
                if (!Upload::model()->unlink($v->image)) {
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
