<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CouponController
 *
 * @author lzh
 */
class CouponController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('优惠券管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['coupon_name']) || !empty($_GET['coupon_name'])) {
            $criteria->addSearchCondition('coupon_name', $_GET['coupon_name']);
        }
        if (isset($_GET['city_id']) || !empty($_GET['city_id'])) {
            $criteria->compare('city_id', $_GET['city_id']);
        }
        if (isset($_GET['bc_id']) || !empty($_GET['bc_id'])) {
            $criteria->compare('bc_id', $_GET['bc_id']);
        }
        if (isset($_GET['outlets_id']) || !empty($_GET['outlets_id'])) {
            $criteria->compare('outlets_id', $_GET['outlets_id']);
        }
        $criteria->order = 'id desc';
        $count = Coupon::model()->count($criteria);
        $pages = new CPagination($count);
        $pages->pageSize = 10;
        $pages->applyLimit($criteria);
        $model = Coupon::model()->findAll($criteria);
        $this->render('index', array('model' => $model, 'pages' => $pages));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加优惠券');
        $model = new Coupon();
        $model->if_use = 1;
        $this->render('_add', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        $this->breadcrumbs = array('修改优惠券');
        $model = Coupon::model()->findByPk($id);
        $this->checkEmpty($model);
        $model->start_time = date('Y-m-d',$model->start_time);
        $model->expire_time = date('Y-m-d',$model->expire_time);
        $this->render('_form', array('model' => $model));
    }
    public function actionAdd(){
        $transaction = Yii::app()->db->beginTransaction();
        try{
            $seller_ids = $_POST['seller_id'];
            $brand_ids = $_POST['brand_id'];
            if(!$seller_ids) throw new Exception ('请指定商家');
            if (isset($_FILES['image']['tmp_name']) && !empty($_FILES['image']['tmp_name'])) {
                $upload = new Upload();
                $upload->is_thumb = true;
                $upload->thumb_type = 'coupon';
                $upload->uploads('image');
                $image = $upload->file_url;
            }
            $start_time = strtotime($_POST['Coupon']['start_time']);
            $expire_time = strtotime($_POST['Coupon']['expire_time']);
            if($expire_time <= $start_time){
                $this->error('过期时间应该在开始时间后面！');
            }
            $created = time();
            foreach($seller_ids as $seller_id){
                $sellerModel = Seller::model()->findByPk($seller_id, array('select'=>'city_id,bc_id,outlets_id'));
                $model = new Coupon();
                $model->attributes = $_POST['Coupon'];
                $model->seller_id = $seller_id;
                $model->image = $image;
                $model->start_time = $start_time;
                $model->expire_time = $expire_time;                
                $model->created = $created;
                $model->city_id = $sellerModel->city_id;
                $model->bc_id = $sellerModel->bc_id;
                $model->outlets_id = $sellerModel->outlets_id;
                $rs = $model->save();
                if(!$rs)                   
                    throw new Exception('添加失败');
                $rs = Coupon::model()->saveCouponBrandRelation($model->id, $brand_ids);
                if(!$rs['status'])                    
                    throw new Exception($rs['message']);
            }
            $transaction->commit();
            $this->success('添加成功！',$this->createUrl('index'));
        }  catch (Exception $e){
            $transaction->rollback();
            $this->error($e->getMessage());
        }
    }
    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $model = Coupon::model()->find('id=:id', array(':id' => UtilD::numeric($_POST['id'])));
            $delete_image = $_POST['delete_image'];
            $this->checkEmpty($model);
        } else {
            $model = new Coupon();
            $model->created = time();
        }
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'id-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        $transaction = Yii::app()->db->beginTransaction();
        try {
            if (isset($delete_image) && $delete_image == 1) {
                $model->image = "";
            }
            if (isset($_FILES['image']['tmp_name']) && !empty($_FILES['image']['tmp_name'])) {
                $upload = new Upload();
                $upload->is_thumb = true;
                $upload->thumb_type = 'article';
                $upload->uploads('image');
                $model->image = $upload->file_url;
            }
            if (isset($_POST['Coupon'])) {
                $post = $_POST['Coupon'];
                $model->attributes = $post;
                $model->start_time = strtotime($model->start_time);
                $model->expire_time = strtotime($model->expire_time);
                $rs = $model->save();
                if (!$rs)
                    throw new Exception('保存数据失败！');
                if (isset($_POST['brand_id'])) {
                    $rs = Coupon::model()->saveCouponBrandRelation($model->id, $_POST['brand_id']);
                    if (!$rs['status'])
                        throw new Exception($rs['message']);
                }
                $transaction->commit();
                $this->success('保存成功！', $this->url('index'));
            }
        } catch (Exception $e) {
            $transaction->rollback();
            $this->error($e->getMessage());
        }
    }
    
    public function actionDelete(){
        $id = trim(Yii::app()->request->getParam('id', '0'), ',');
        $ids = explode(',', $id);
        $transaction = Yii::app()->db->beginTransaction();
        try {
            $criteria = new CDbCriteria();
            $criteria->addInCondition('id', $ids);
            $model = Coupon::model()->findAll($criteria);
            if (!$model) {
                throw new Exception('操作有误1！');
            }
            foreach ($model as $k => $v) {
                
                CouponbrandRelation::model()->deleteAll('coupon_id=:coupon_id',array(':coupon_id'=>$v->id));
                     
                if (!$v->delete()) {
                    throw new Exception('操作有误3！');
                }
            }
            $transaction->commit();
            $this->success('删除成功！', Yii::app()->request->urlReferrer);
        } catch (Exception $e) {
            $transaction->commit();
            $this->error($e->getMessage(), Yii::app()->request->urlReferrer);
        }
    }

}
