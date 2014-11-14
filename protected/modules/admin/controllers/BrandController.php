<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BrandController
 *
 * @author lzh
 */
class BrandController extends AdminControllerD {
    //put your code here
    public function actionIndex() {
        $this->breadcrumbs = array('品牌管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['brand_name']) || !empty($_GET['brand_name'])) {
            $criteria->addSearchCondition('brand_name', $_GET['brand_name']);
        }
        if (isset($_GET['if_use']) || !empty($_GET['if_use'])) {
            $criteria->addSearchCondition('if_use', $_GET['if_use']);
        }
        if (isset($_GET['if_image']) || !empty($_GET['if_image'])) {
            if(strval($_GET['if_image']) === '1'){
                $criteria->addCondition("image <> ''");                
            }elseif(strval ($_GET['if_image']) === '0'){                
                $criteria->addCondition("image = ''");
            }
        }
        $criteria->order = 'first_letter desc,id desc';
        $count = Brand::model()->count($criteria);
        $pages = new CPagination($count);
        $pages->pageSize = 10;
        $pages->applyLimit($criteria);
        $model = Brand::model()->findAll($criteria);
        $this->render('index', array('model' => $model,'pages'=>$pages));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加品牌');
        $model = new Brand();
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        $this->breadcrumbs = array('修改品牌');
        $model = Brand::model()->findByPk($id);
        $this->checkEmpty($model);
        $model->cate_id = !empty($model->cate_id) ? explode(',', $model->cate_id) : array();
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $id = Yii::app()->request->getParam('id', 0);
            $model = Brand::model()->findByPk($id);
            $old_img = $model->image;
            $delete_image = Yii::app()->request->getParam('delete_image', 0);
            $this->checkEmpty($model);
        } else {
            $model = new Brand();
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
            $upload->thumb_type = 'brand';
            $upload->uploads('image');
            $model->image = $upload->file_url;
        }
        if (isset($delete_image) && $delete_image == 1) {
            Upload::model()->unlink($model->image);
            $model->image = "";
        }
        if (isset($_POST['Brand'])) {
            $transaction = Yii::app()->db->beginTransaction();
            try {
                $model->attributes = $_POST['Brand'];
                $model->cate_id = !empty($model->cate_id) ? implode(',', $model->cate_id) : "";
                $model->first_letter = UtilD::getFirstLetter($model->brand_name);
                $rs = $model->save();
                if (!$rs)
                    throw new Exception('添加失败！');
                Brand::model()->setBrand();
                $rs = Brand::model()->saveBrandCateRelation($model->id, $_POST['Brand']['cate_id']);
                if (!$rs['status'])
                    throw new Exception($rs['message']);
                $transaction->commit();
                $this->success('操作成功', $this->createUrl('index'));
            } catch (Exception $e) {
                $transaction->rollback();
                $this->error($e->getMessage());
            }
        }
        $this->render('_form', array('model' => $model));
    }

    public function actionDelete() {
        die();
        $id = trim(Yii::app()->request->getParam('id', '0'), ',');
        $ids = explode(',', $id);
        $transaction = Yii::app()->db->beginTransaction();
        try {
            $criteria = new CDbCriteria();
            $criteria->addInCondition('id', $ids);
            $model = Brand::model()->findAll($criteria);
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
