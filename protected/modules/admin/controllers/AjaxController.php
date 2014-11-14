<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AjaxController
 *
 * @author lzh
 */
class AjaxController extends AdminControllerD{
    public function init() {
        parent::init();
        if(!Yii::app()->request->isAjaxRequest){
            $this->error('不是ajax请求！');
        }
    }
    /**
     * 主要品牌 
     */
    public function actionSearchBrand(){
        $city_id = Yii::app()->request->getParam('city_id',0);
        $brand_name = Yii::app()->request->getParam('brand_name','');
        $checked_id = Yii::app()->request->getParam('checked_id','');
        $checked_id_arr = array();
        if($checked_id){
            foreach ($checked_id as $k=>$v){
                $checked_id_arr[] = $v['value'];
            }
            $checked_id_arr = array_unique($checked_id_arr);
        }
        $brand_id = Brand::model()->getBrandIdByCityId($city_id);
        $criteria = new CDbCriteria();
        $criteria->addInCondition('id', $brand_id);
        $criteria->addSearchCondition('brand_name', $brand_name);
        $criteria->select = 'id,brand_name';
        $criteria->order = 'first_letter asc';
        $model = Brand::model()->findAll($criteria);
        $data = "";
        if($model){
            foreach($model as $k=>$v){
                if(array_search($v->id, $checked_id_arr) !== false){
                    $data .= "<input id='brand_{$v->id}' value='{$v->id}' checked='checked' type='checkbox' />&nbsp;<label style='cursor:pointer' id='label_brand_{$v->id}' for='brand_{$v->id}'>{$v->brand_name}</label>&nbsp;&nbsp;&nbsp;&nbsp;";
                }else{
                    $data .= "<input id='brand_{$v->id}' value='{$v->id}' type='checkbox' />&nbsp;<label style='cursor:pointer' id='label_brand_{$v->id}' for='brand_{$v->id}'>{$v->brand_name}</label>&nbsp;&nbsp;&nbsp;&nbsp;";   
                }                
            }
        }
        die(UtilD::formatReturn(1, $data,true));
    }
    /**
     * 主要品牌 
     */
    public function actionSearchBrandRadio(){
        $city_id = Yii::app()->request->getParam('city_id',0);
        $brand_name = Yii::app()->request->getParam('brand_name','');
        $checked_id = Yii::app()->request->getParam('checked_id','');
        $checked_id_arr = array();
        if($checked_id){
            foreach ($checked_id as $k=>$v){
                $checked_id_arr[] = $v['value'];
            }
            $checked_id_arr = array_unique($checked_id_arr);
        }
        $brand_id = Brand::model()->getBrandIdByCityId($city_id);
        $criteria = new CDbCriteria();
        $criteria->addInCondition('id', $brand_id);
        $criteria->addSearchCondition('brand_name', $brand_name);
        $criteria->select = 'id,brand_name';
        $criteria->order = 'first_letter asc';
        $model = Brand::model()->findAll($criteria);
        $data = "";
        if($model){
            foreach($model as $k=>$v){
                if(array_search($v->id, $checked_id_arr) !== false){
                    $data .= "<input name='brand_temp_id' id='brand_{$v->id}' value='{$v->id}' checked='checked' type='radio' />&nbsp;<label style='cursor:pointer' id='label_brand_{$v->id}' for='brand_{$v->id}'>{$v->brand_name}</label>&nbsp;&nbsp;&nbsp;&nbsp;";
                }else{
                    $data .= "<input name='brand_temp_id' id='brand_{$v->id}' value='{$v->id}' type='radio' />&nbsp;<label style='cursor:pointer' id='label_brand_{$v->id}' for='brand_{$v->id}'>{$v->brand_name}</label>&nbsp;&nbsp;&nbsp;&nbsp;";   
                }                
            }
        }
        die(UtilD::formatReturn(1, $data,true));
    }
    /**
     * 临近景点 
     */
    public function actionSearchScene(){
        $city_id = Yii::app()->request->getParam('city_id',0);
        $scene_name = Yii::app()->request->getParam('scene_name','');
        $checked_id = Yii::app()->request->getParam('checked_id','');
        $checked_id_arr = array();
        if($checked_id){
            foreach ($checked_id as $k=>$v){
                $checked_id_arr[] = $v['value'];
            }
            $checked_id_arr = array_unique($checked_id_arr);
        }
        $criteria = new CDbCriteria();
        $criteria->addSearchCondition('scene_name', $scene_name);
        $criteria->compare('if_use', 1);
        $criteria->compare('city_id', $city_id);
        $criteria->select = 'id,scene_name';
        $model = Scene::model()->findAll($criteria);
        $data = "";
        if($model){
            foreach($model as $k=>$v){
                if(array_search($v->id, $checked_id_arr) !== false){
                    $data .= "<input id='scene_{$v->id}' value='{$v->id}' checked='checked' type='checkbox' />&nbsp;<label style='cursor:pointer' id='label_scene_{$v->id}' for='scene_{$v->id}'>{$v->scene_name}</label>&nbsp;&nbsp;&nbsp;&nbsp;";
                }else{
                    $data .= "<input id='scene_{$v->id}' value='{$v->id}' type='checkbox' />&nbsp;<label style='cursor:pointer' id='label_scene_{$v->id}' for='scene_{$v->id}'>{$v->scene_name}</label>&nbsp;&nbsp;&nbsp;&nbsp;";   
                }                
            }
        }
        die(UtilD::formatReturn(1, $data,true));
    }
    /**
     * 搜索商家
     */        
    public function actionSearchseller(){
        $seller_name = Yii::app()->request->getParam('seller_name','');
        $checked_id = Yii::app()->request->getParam('checked_id','');
        $checked_id_arr = array();
        if($checked_id){
            foreach ($checked_id as $k=>$v){
                $checked_id_arr[] = $v['value'];
            }
            $checked_id_arr = array_unique($checked_id_arr);
        }
        $criteria = new CDbCriteria();
        $criteria->addSearchCondition('seller_name', $seller_name);
        $criteria->select = 'id,seller_name';
        $model = Seller::model()->findAll($criteria);
        $data = "";
        if($model){
            foreach($model as $k=>$v){
                if(array_search($v->id, $checked_id_arr) !== false){
                    $data .= "<input id='seller_{$v->id}' value='{$v->id}' checked='checked' type='checkbox' />&nbsp;<label style='cursor:pointer' id='label_seller_{$v->id}' for='seller_{$v->id}'>{$v->seller_name}</label>&nbsp;&nbsp;&nbsp;&nbsp;";
                }else{
                    $data .= "<input id='seller_{$v->id}' value='{$v->id}' type='checkbox' />&nbsp;<label style='cursor:pointer' id='label_seller_{$v->id}' for='seller_{$v->id}'>{$v->seller_name}</label>&nbsp;&nbsp;&nbsp;&nbsp;";   
                }                
            }
        }
        die(UtilD::formatReturn(1, $data,true));
    }
    /**
     * 通过城市找出所有的商圈和outlets 
     */
    public function actionGetOutletsAndBcByCity(){
        $city_id = Yii::app()->request->getParam('city_id',0);
        $outlets = Outlets::model()->getOutletsByCity($city_id,'id,outlets_name');
        $bc = BusinessCircle::model()->getBcByCity($city_id, 'id,bc_name');
        $message = array('outlets'=>$outlets,'bc'=>$bc);
        die(UtilD::formatReturn(1, $message,true));
    }
    /**
     *  获取所有城市
     */
    public function actionGetCity(){
        $city = City::model()->getCityKv();
        die(UtilD::formatReturn(1,$city,true));
    }
    /**
     * 获取所有outlets
     */
    public function actionGetOutlets(){
        $outlets = Outlets::model()->getOutlets();
        die(UtilD::formatReturn(1,$outlets,true));
    }
    /**
     *  获取所有商圈
     */
    public function actionGetBc(){
        $bc = BusinessCircle::model()->getBcKv();
        die(UtilD::formatReturn(1,$bc,true));
    }
    public function actionGetItem(){
        $item = Yii::app()->request->getParam('item','');
        $return = "";
        switch ($item){
            case 'city' : 
                $return = City::model()->getCityKv();break;
            case 'bc' :
                $return = BusinessCircle::model()->getBcKv();break;
            case 'ol' :
                $return = Outlets::model()->getOutlets();break;
        }
        die(UtilD::formatReturn(1,$return,true));
    }
    /**
     * 通过城市找出所有的商家
     */
    public function actionGetSellerByCity(){
        $city_id = Yii::app()->request->getParam('city_id',0);
        $seller = Seller::model()->getSellerByCity($city_id,'id,seller_name');
        $message = array('seller'=>$seller);
        die(UtilD::formatReturn(1, $message,true));
    }
}
