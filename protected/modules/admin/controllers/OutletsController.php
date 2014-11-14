<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of OutletsController
 *
 * @author lzh
 */
class OutletsController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('outlets管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['outlets_name']) || !empty($_GET['outlets_name'])) {
            $criteria->addSearchCondition('outlets_name', $_GET['outlets_name']);
        }
        if (isset($_GET['city_id']) || !empty($_GET['city_id'])) {
            $criteria->compare('city_id', $_GET['city_id']);
        }
        if (isset($_GET['if_image']) || !empty($_GET['if_image'])) {
            if(strval($_GET['if_image']) === '1'){
                $criteria->addCondition("image <> ''");                
            }elseif(strval ($_GET['if_image']) === '0'){                
                $criteria->addCondition("image = ''");
            }
        }
        $criteria->order = 'id desc';
        $count = Outlets::model()->count($criteria);
        $pages = new CPagination($count);
        $pages->pageSize = 10;
        $pages->applyLimit($criteria);
        $model = Outlets::model()->findAll($criteria);
        $this->render('index', array('model' => $model, 'pages' => $pages));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加outlets');
        $model = new Outlets();
        $model->is_recommend = 1;
        $model->shopping_index = 5;
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        $this->breadcrumbs = array('修改outlets');
        $model = Outlets::model()->findByPk($id);
        $this->checkEmpty($model);
        //print_r($model->brands[0]->brand_name);exit;
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $model = Outlets::model()->find('id=:id', array(':id' => UtilD::numeric($_POST['id'])));
            $old_img = $model->image;
            $delete_image = $_POST['delete_image'];
            $this->checkEmpty($model);
        } else {
            $model = new Outlets();
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
                $upload->thumb_type = 'outlets';
                $upload->uploads('image');
                $model->image = $upload->file_url;
            }
            if (isset($delete_image) && $delete_image == 1) {
                Upload::model()->unlink($model->image);
                $model->image = "";
            }
            if (isset($_POST['Outlets'])) {
                $post = $_POST['Outlets'];
                $model->attributes = $post;
                $rs = $model->save();
                if(!$rs) throw new Exception('保存数据失败！');
                if(isset($_POST['brand_id']) && $_POST['brand_id']){
                    $brand_id = array();
                    foreach($_POST['brand_id'] as $k=>$v){
                        if(BrandcityRelation::model()->find('brand_id=:brand_id and city_id=:city_id',array(':brand_id'=>$v,':city_id'=>$model->city_id)))
                            $brand_id[] = $v;
                    }
                    $rs = Outlets::model()->saveOutletsBrandRelation($model->id, $brand_id);
                    if(!$rs['status']) throw new Exception($rs['message']);
                }
                if(isset($_POST['scene_id']) && $_POST['scene_id']){
                    $scene_id = array();
                    foreach($_POST['scene_id'] as $k=>$v){
                        if(Scene::model()->find('id=:id and city_id=:city_id',array(':id'=>$v,':city_id'=>$model->city_id)))
                            $scene_id[] = $v;
                    }
                    $rs = Outlets::model()->saveOutletsSceneRelation($model->id, $scene_id);
                    if(!$rs['status']) throw new Exception($rs['message']);
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
            $model = Outlets::model()->findAll($criteria);
            if (!$model) {
                throw new Exception('操作有误！');
            }
            foreach ($model as $k => $v) {
                if(Comment::model()->find('type=:type and type_id=:type_id',array(':type'=>'outlets',':type_id'=>$v->id))){
                    throw new Exception('您必须把该outlets下的评论删除！');
                }
                if(Coupon::model()->find('outlets_id=:outlets_id',array(':outlets_id'=>$v->id))){
                    throw new Exception('您必须把该outlets下的优惠券删除！');
                }
                if(Seller::model()->find('outlets_id=:outlets_id',array(':outlets_id'=>$v->id))){
                    throw new Exception('您必须把该outlets下的商家删除！');
                }
                if (!$v->delete()) {
                    throw new Exception('操作有误！');
                }
                OutletsbrandRelation::model()->deleteAll('outlets_id=:outlets_id',array(':outlets_id'=>$v->id));
                OutletssceneRelation::model()->deleteAll('outlets_id=:outlets_id',array(':outlets_id'=>$v->id));
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
