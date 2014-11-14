<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SellerController
 *
 * @author lzh
 */
class SellerController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('商家管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['seller_name']) || !empty($_GET['seller_name'])) {
            $criteria->addSearchCondition('seller_name', $_GET['seller_name']);
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
        $count = Seller::model()->count($criteria);
        $pages = new CPagination($count);
        $pages->pageSize = 10;
        $pages->applyLimit($criteria);
        $model = Seller::model()->findAll($criteria);
        $this->render('index', array('model' => $model, 'pages' => $pages));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加商家');
        $model = new Seller();
        $model->if_use = 1;
        $model->is_recommend = 1;
        $model->shopping_index = 5;
        $this->render('_form', array('model' => $model));
    }
    
    public function actionQuickCreate($id) {
        $this->breadcrumbs = array('快速添加商家');
        $model = Seller::model()->findByPk($id);
        $this->checkEmpty($model);
        $cateModel = SellercateRelation::model()->findAllByAttributes(array('seller_id' => $id));
        $cate = array();
        if ($cateModel) {
            foreach ($cateModel as $k => $v) {
                $cate[] = $v->cate_id;
            }
        }
        $outlets = Outlets::model()->getOutlets();
        $bc = BusinessCircle::model()->getBcKv();
        $model->cate_id = $cate;
        $this->render('_quick_form', array('model' => $model, 'bc' => $bc, 'outlets' => $outlets));
    }

    public function actionUpdate($id) {
        $this->breadcrumbs = array('修改商家');
        $model = Seller::model()->findByPk($id);
        $this->checkEmpty($model);
        $cateModel = SellercateRelation::model()->findAllByAttributes(array('seller_id' => $id));
        $cate = array();
        if ($cateModel) {
            foreach ($cateModel as $k => $v) {
                $cate[] = $v->cate_id;
            }
        }
        $outlets = Outlets::model()->getOutletsByCity($model->city_id,'id,outlets_name',true);
        $bc = BusinessCircle::model()->getBcByCity($model->city_id,'id,bc_name',true);
        $model->cate_id = $cate;
        $this->render('_form', array('model' => $model, 'bc' => $bc, 'outlets' => $outlets));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $model = Seller::model()->find('id=:id', array(':id' => UtilD::numeric($_POST['id'])));
            /*$old_big_img = $model->big_image;
            $old_image_one = $model->image_one;
            $old_image_two = $model->image_two;
            $old_image_three = $model->image_three;
            $old_image_four = $model->image_four;*/
            $delete_big_image = $_POST['delete_big_image'];
            $delete_image_one = $_POST['delete_image_one'];
            $delete_image_two = $_POST['delete_image_two'];
            $delete_image_three = $_POST['delete_image_three'];
            $delete_image_four = $_POST['delete_image_four'];
            $this->checkEmpty($model);
        } else {
            $model = new Seller();
            $model->created = time();
        }
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'id-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        $transaction = Yii::app()->db->beginTransaction();
        try {
            if (isset($_FILES['big_image']['tmp_name']) && !empty($_FILES['big_image']['tmp_name'])) {
                $upload = new Upload();
                /*if (isset($old_big_img)) {
                    $upload->unlink($old_big_img);
                }*/
                $upload->is_thumb = true;
                $upload->thumb_type = 'seller';
                $upload->uploads('big_image');
                $model->big_image = $upload->file_url;
            }
            if (isset($_FILES['image_one']['tmp_name']) && !empty($_FILES['image_one']['tmp_name'])) {
                $upload = new Upload();
                /*if (isset($old_image_one)) {
                    $upload->unlink($old_image_one);
                }*/
                $upload->is_thumb = true;
                $upload->thumb_type = 'seller';
                $upload->uploads('image_one');
                $model->image_one = $upload->file_url;
            }
            if (isset($_FILES['image_two']['tmp_name']) && !empty($_FILES['image_two']['tmp_name'])) {
                $upload = new Upload();
                /*if (isset($old_image_two)) {
                    $upload->unlink($old_image_two);
                }*/
                $upload->is_thumb = true;
                $upload->thumb_type = 'seller';
                $upload->uploads('image_two');
                $model->image_two = $upload->file_url;
            }
            if (isset($_FILES['image_three']['tmp_name']) && !empty($_FILES['image_three']['tmp_name'])) {
                $upload = new Upload();
                /*if (isset($old_image_three)) {
                    $upload->unlink($old_image_three);
                }*/
                $upload->is_thumb = true;
                $upload->thumb_type = 'seller';
                $upload->uploads('image_three');
                $model->image_three = $upload->file_url;
            }
            if (isset($_FILES['image_four']['tmp_name']) && !empty($_FILES['image_four']['tmp_name'])) {
                $upload = new Upload();
                /*if (isset($old_image_four)) {
                    $upload->unlink($old_image_four);
                }*/
                $upload->is_thumb = true;
                $upload->thumb_type = 'seller';
                $upload->uploads('image_four');
                $model->image_four = $upload->file_url;
            }
            if (isset($delete_big_image) && $delete_big_image == 1) {
                //Upload::model()->unlink($model->big_image);
                $model->big_image = "";
            }
            if (isset($delete_image_one) && $delete_image_one == 1) {
                //Upload::model()->unlink($model->image_one);
                $model->image_one = "";
            }
            if (isset($delete_image_two) && $delete_image_two == 1) {
                //Upload::model()->unlink($model->image_two);
                $model->image_two = "";
            }
            if (isset($delete_image_three) && $delete_image_three == 1) {
                //Upload::model()->unlink($model->image_three);
                $model->image_three = "";
            }
            if (isset($delete_image_four) && $delete_image_four == 1) {
                //Upload::model()->unlink($model->image_four);
                $model->image_four = "";
            }
            if (isset($_POST['Seller'])) {
                $post = $_POST['Seller'];
                $model->attributes = $post;
                $model->outlets_id = isset($_POST['outlets_id']) && intval($_POST['outlets_id']) > 0 ? intval($_POST['outlets_id']) : 0;
                $model->bc_id = isset($_POST['bc_id']) && intval($_POST['bc_id']) > 0 ? intval($_POST['bc_id']) : 0;
                $model->city_id = isset($_POST['city_id']) && intval($_POST['city_id']) > 0 ? intval($_POST['city_id']) : 0;
                if (empty($_POST['Seller']['login_name'])) {
                    $model->login_name = 'gogousa';
                }
                if (empty($_POST['Seller']['login_pwd'])) {
                    $model->login_pwd = 'gogousa';
                }
                if (!$model->city_id) {
                    $this->error('请选择城市！');
                }
                $rs = $model->save();
                if (!$rs) {
                    //print_r($model->errors);
                    throw new Exception('保存数据失败！');
                }
                if (isset($_POST['brand_id']) && $_POST['brand_id']) {
                    $brand_id = array();
                    foreach($_POST['brand_id'] as $k=>$v){
                        if(BrandcityRelation::model()->find('brand_id=:brand_id and city_id=:city_id',array(':brand_id'=>$v,':city_id'=>$model->city_id)))
                            $brand_id[] = $v;
                    }
                    $rs = Seller::model()->saveSellerBrandRelation($model->id, $brand_id);
                    if (!$rs['status'])
                        throw new Exception($rs['message']);
                }
                if (isset($_POST['scene_id']) && $_POST['scene_id']) {
                    $scene_id = array();
                    foreach($_POST['scene_id'] as $k=>$v){
                        if(Scene::model()->find('id=:id and city_id=:city_id',array(':id'=>$v,':city_id'=>$model->city_id)))
                            $scene_id[] = $v;
                    }
                    $rs = Seller::model()->saveSellerSceneRelation($model->id, $scene_id);
                    if (!$rs['status'])
                        throw new Exception($rs['message']);
                }
                if (isset($post['cate_id'])) {
                    $rs = Seller::model()->saveSellerCateRelation($model->id, $_POST['Seller']['cate_id']);
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

    public function actionDelete() {
        $id = trim(Yii::app()->request->getParam('id', '0'), ',');
        $ids = explode(',', $id);
        $transaction = Yii::app()->db->beginTransaction();
        try {
            $criteria = new CDbCriteria();
            $criteria->addInCondition('id', $ids);
            $model = Seller::model()->findAll($criteria);
            if (!$model) {
                throw new Exception('操作有误！');
            }
            foreach ($model as $k => $v) {
                if(Comment::model()->find('type=:type and type_id=:type_id',array(':type'=>'seller',':type_id'=>$v->id))){
                    throw new Exception('您必须把该商家的评论删除！');
                }
                if(Coupon::model()->find('seller_id=:seller_id',array(':seller_id'=>$v->id))){
                    throw new Exception('您必须把该商家的优惠券删除！');
                }
                if(AppImage::model()->find('seller_id=:seller_id',array(':seller_id'=>$v->id))){
                    throw new Exception('您必须把该商家的APP图片删除！');
                }
                if (!$v->delete()) {
                    throw new Exception('操作有误！');
                }
                SellersceneRelation::model()->deleteAll('seller_id=:seller_id',array(':seller_id'=>$v->id));
                SellerbrandRelation::model()->deleteAll('seller_id=:seller_id',array(':seller_id'=>$v->id));
                SellercateRelation::model()->deleteAll('seller_id=:seller_id',array(':seller_id'=>$v->id));
            }
            $transaction->commit();
            $this->success('删除成功！', Yii::app()->request->urlReferrer);
        } catch (Exception $e) {
            $transaction->rollback();
            $this->error($e->getMessage(), Yii::app()->request->urlReferrer);
        }
    }
    /**
     * 快速添加保存
     * @throws Exception 
     */
    public function actionQuickSave() {
        $oldId = isset($_POST['oldId']);
        if ($oldId) {
            $oldModel = Seller::model()->find('id=:id', array(':id' => UtilD::numeric($_POST['oldId'])));
            $this->checkEmpty($oldModel);
            $delete_big_image = $_POST['delete_big_image'];
            $delete_image_one = $_POST['delete_image_one'];
            $delete_image_two = $_POST['delete_image_two'];
            $delete_image_three = $_POST['delete_image_three'];
            $delete_image_four = $_POST['delete_image_four'];
        }
        $model = new Seller();
        $model->created = time();
        $delete_big_image = $_POST['delete_big_image'];
        $delete_image_one = $_POST['delete_image_one'];
        $delete_image_two = $_POST['delete_image_two'];
        $delete_image_three = $_POST['delete_image_three'];
        $delete_image_four = $_POST['delete_image_four'];
        
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'id-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        $transaction = Yii::app()->db->beginTransaction();
        try {
            if (isset($delete_big_image) && $delete_big_image == 1) {
                $model->big_image = "";
            }else{
                $model->big_image = $oldModel->big_image;
            }
            if (isset($delete_image_one) && $delete_image_one == 1) {
                $model->image_one = "";
            }else{
                $model->image_one = $oldModel->image_one;
            }
            if (isset($delete_image_two) && $delete_image_two == 1) {
                $model->image_two = "";
            }else{
                $model->image_two = $oldModel->image_two;
            }
            if (isset($delete_image_three) && $delete_image_three == 1) {
                $model->image_three = "";
            }else{
                $model->image_three = $oldModel->image_three;
            }
            if (isset($delete_image_four) && $delete_image_four == 1) {
                $model->image_four = "";
            }else{
                $model->image_four = $oldModel->image_four;
            }
            
            if (isset($_FILES['big_image']['tmp_name']) && !empty($_FILES['big_image']['tmp_name'])) {
                $upload = new Upload();
                $upload->is_thumb = true;
                $upload->thumb_type = 'seller';
                $upload->uploads('big_image');
                $model->big_image = $upload->file_url;
            }
            if (isset($_FILES['image_one']['tmp_name']) && !empty($_FILES['image_one']['tmp_name'])) {
                $upload = new Upload();
                $upload->is_thumb = true;
                $upload->thumb_type = 'seller';
                $upload->uploads('image_one');
                $model->image_one = $upload->file_url;
            }
            if (isset($_FILES['image_two']['tmp_name']) && !empty($_FILES['image_two']['tmp_name'])) {
                $upload = new Upload();
                $upload->is_thumb = true;
                $upload->thumb_type = 'seller';
                $upload->uploads('image_two');
                $model->image_two = $upload->file_url;
            }
            if (isset($_FILES['image_three']['tmp_name']) && !empty($_FILES['image_three']['tmp_name'])) {
                $upload = new Upload();
                $upload->is_thumb = true;
                $upload->thumb_type = 'seller';
                $upload->uploads('image_three');
                $model->image_three = $upload->file_url;
            }
            if (isset($_FILES['image_four']['tmp_name']) && !empty($_FILES['image_four']['tmp_name'])) {
                $upload = new Upload();
                $upload->is_thumb = true;
                $upload->thumb_type = 'seller';
                $upload->uploads('image_four');
                $model->image_four = $upload->file_url;
            }
            
            if (isset($_POST['Seller'])) {
                $post = $_POST['Seller'];
                $model->attributes = $post;
                $model->outlets_id = isset($_POST['outlets_id']) && intval($_POST['outlets_id']) > 0 ? intval($_POST['outlets_id']) : 0;
                $model->bc_id = isset($_POST['bc_id']) && intval($_POST['bc_id']) > 0 ? intval($_POST['bc_id']) : 0;
                $model->city_id = isset($_POST['city_id']) && intval($_POST['city_id']) > 0 ? intval($_POST['city_id']) : 0;
                if (empty($_POST['Seller']['login_name'])) {
                    $model->login_name = 'gogousa';
                }
                if (empty($_POST['Seller']['login_pwd'])) {
                    $model->login_pwd = 'gogousa';
                }
                if (!$model->city_id) {
                    $this->error('请选择城市！');
                }
                $rs = $model->save();
                if (!$rs) {
                    //print_r($model->errors);
                    throw new Exception('保存数据失败！');
                }
                if (isset($_POST['brand_id']) && $_POST['brand_id']) {
                    $brand_id = array();
                    foreach($_POST['brand_id'] as $k=>$v){
                        if(BrandcityRelation::model()->find('brand_id=:brand_id and city_id=:city_id',array(':brand_id'=>$v,':city_id'=>$model->city_id)))
                            $brand_id[] = $v;
                    }
                    $rs = Seller::model()->saveSellerBrandRelation($model->id, $brand_id);
                    if (!$rs['status'])
                        throw new Exception($rs['message']);
                }
                if (isset($_POST['scene_id']) && $_POST['scene_id']) {
                    $scene_id = array();
                    foreach($_POST['scene_id'] as $k=>$v){
                        if(Scene::model()->find('id=:id and city_id=:city_id',array(':id'=>$v,':city_id'=>$model->city_id)))
                            $scene_id[] = $v;
                    }
                    $rs = Seller::model()->saveSellerSceneRelation($model->id, $scene_id);
                    if (!$rs['status'])
                        throw new Exception($rs['message']);
                }
                if (isset($post['cate_id'])) {
                    $rs = Seller::model()->saveSellerCateRelation($model->id, $_POST['Seller']['cate_id']);
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

}
