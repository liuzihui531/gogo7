<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CityController
 *
 * @author lzh
 */
class CityController extends AdminControllerD {

    public function actionIndex() {
        $this->breadcrumbs = array('城市管理');
        $criteria = new CDbCriteria();
        if (isset($_GET['city_name']) || !empty($_GET['city_name'])) {
            $criteria->addSearchCondition('city_name', $_GET['city_name']);
        }
        if (isset($_GET['if_use']) || !empty($_GET['if_use'])) {
            $criteria->compare('if_use', $_GET['if_use']);
        }
        if (isset($_GET['if_image']) || !empty($_GET['if_image'])) {
            if(strval($_GET['if_image']) === '1'){
                $criteria->addCondition("image <> ''");                
            }elseif(strval ($_GET['if_image']) === '0'){                
                $criteria->addCondition("image = ''");
            }
        }
        $criteria->order = 'sorting desc,id desc';
        $count = City::model()->count($criteria);
        $pager = new CPagination($count);
        $pager->pageSize = 10;
        $pager->applyLimit($criteria);
        $model = City::model()->findAll($criteria);
        $this->render('index', array('model' => $model, 'pages' => $pager));
    }

    public function actionCreate() {
        $this->breadcrumbs = array('添加城市');
        $model = new City();
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdate($id = 0) {
        $this->breadcrumbs = array('修改城市');
        $model = City::model()->findByPk($id);
        $this->checkEmpty($model);
        $this->render('_form', array('model' => $model));
    }

    public function actionSave() {
        $isEdit = isset($_POST['id']);
        if ($isEdit) {
            $id = Yii::app()->request->getParam('id', 0);
            $model = City::model()->findByPk($id);
            $old_img = $model->image;
            $delete_image = Yii::app()->request->getParam('delete_image', 0);
            $this->checkEmpty($model);
        } else {
            $model = new City();
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
            $upload->thumb_type = 'city';
            $upload->uploads('image');
            $model->image = $upload->file_url;
        }
        if (isset($delete_image) && $delete_image == 1) {
            Upload::model()->unlink($model->image);
            $model->image = "";
        }
        if (isset($_POST['City'])) {
            $model->attributes = $_POST['City'];
            if ($model->save()) {
                //所有城市
                $allCity = City::model()->findAll();
                $memKey = City::$memKey;
                Yii::app()->cache->delete($memKey);
                Yii::app()->cache->add($memKey, UtilD::object2array($allCity));
                $this->success('保存成功！', $this->url('index'));
            }
        }
        $this->render('_form', array('model' => $model));
    }

    public function actionUpdateSort() {
        $id = Yii::app()->request->getParam('id', 0);
        $sorting = Yii::app()->request->getParam('sorting', 0);
        foreach ($id as $k => $v) {
            $data = array(
                'sorting' => $sorting[$k],
            );
            Yii::app()->db->createCommand()->update('city', $data, 'id=' . $v);
        }
        $this->redirect('index');
    }

    public function actionDelete() {
        $id = trim(Yii::app()->request->getParam('id', '0'), ',');
        $ids = explode(',', $id);
        $transaction = Yii::app()->db->beginTransaction();
        try {
            $criteria = new CDbCriteria();
            $criteria->addInCondition('id', $ids);
            $model = City::model()->findAll($criteria);
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

    /**
     * 添加品牌
     * @param type $id
     */
    public function actionBrand($id) {
        $this->breadcrumbs = array('更新城市品牌');
        $brand_name = Yii::app()->request->getParam('brand_name', '');
        if (!$brand_name) {
            UtilD::cookie('ref_url', Yii::app()->request->getUrlReferrer(), 1800);
        }
        $model = City::model()->findByPk($id);
        if (!$model) {
            $this->error('您没有选择城市！');
        }
        $relationModel = BrandcityRelation::model()->findAllByAttributes(array('city_id' => $id));
        $brand_id = array();
        if ($relationModel) {
            foreach ($relationModel as $k => $v) {
                $brand_id[] = $v->brand_id;
            }
        }
        $model->brand_id = $brand_id;
        $criteria = new CDbCriteria();
        $criteria->select = 'id,brand_name';
        $criteria->order = 'first_letter asc,sorting desc,id desc';
        if ($brand_name) {
            $criteria->addSearchCondition('brand_name', $brand_name);
        }
        $this->render('brand', array('model' => $model));
    }

    public function actionBrandPrePage() {
        $ref_url = UtilD::cookie('ref_url');
        $ref_url = $ref_url ? $ref_url : $this->createUrl('index');
        UtilD::cookie('ref_url', '', -3600);
        $this->redirect($ref_url);
        echo $ref_url;
        exit;
    }

    public function actionBrandSave() {
        if (Yii::app()->request->isAjaxRequest) {
            $city_id = Yii::app()->request->getParam('city_id', 0);
            $brand_id = Yii::app()->request->getParam('brand_id', 0);
            $type = Yii::app()->request->getParam('type', '');
            if (!$city_id || !$brand_id) {
                die(UtilD::formatReturn(0, '数据不正确1', true));
            }
            if ($type == 'add') {
                $model = BrandcityRelation::model()->findByAttributes(array('city_id' => $city_id, 'brand_id' => $brand_id));
                if ($model) {
                    die(UtilD::formatReturn(0, '数据不正确2', true));
                } else {
                    $model = new BrandcityRelation();
                    $model->brand_id = $brand_id;
                    $model->city_id = $city_id;
                    $rs = $model->save();
                    if ($rs) {
                        die(UtilD::formatReturn(1, '添加成功！', true));
                    } else {
                        die(UtilD::formatReturn(0, '添加失败！', true));
                    }
                }
            } elseif ($type == 'delete') {
                $rs = BrandcityRelation::model()->deleteAllByAttributes(array('city_id' => $city_id, 'brand_id' => $brand_id));
                if ($rs) {
                    die(UtilD::formatReturn(1, '删除成功！', true));
                } else {
                    die(UtilD::formatReturn(0, '删除失败！', true));
                }
            }
        }
    }

    /**
     * 添加品牌
     */
    /* public function actionBrandSave() {
      $id = Yii::app()->request->getParam('id',0);
      $model = City::model()->findByPk($id);
      if (!$model) {
      $this->error('您没有选择城市！');
      }
      if (isset($_POST['City'])) {
      $transaction = Yii::app()->db->beginTransaction();
      try {
      $brand_id = $_POST['City']['brand_id'];
      $brand_id = implode(',', $brand_id);
      $model->brand_id = $brand_id;
      $rs = $model->save();
      if(!$rs){
      throw new Exception('添加城市表失败！');
      }
      $rs = Brand::model()->saveBrandCityRelation($id, $_POST['City']['brand_id']);
      if(!$rs['status']){
      throw new Exception($rs['message']);
      }
      $transaction->commit();
      $ref_url = UtilD::cookie('ref_url');
      if(!$ref_url){
      $ref_url= $this->createUrl('/admin/city');
      }
      $this->success('操作成功！', $ref_url );
      } catch (Exception $e) {
      $transaction->rollback();
      $this->error($e->getMessage());
      }
      }
      } */
}
