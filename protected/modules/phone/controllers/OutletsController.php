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
class OutletsController extends PhoneControllerD{
    //put your code here
    public function actionGetOutlets(){
        $city_id = Yii::app()->request->getParam('city_id',0);
        $criteria = new CDbCriteria();
        $criteria->compare('city_id', $city_id);
        $criteria->order = 'is_recommend desc';
        $model = Outlets::model()->findAll($criteria);
        $data = array();
        if($model){
            foreach($model as $k=>$v){
                $data[$k]['Address'] = $v->address;
                $data[$k]['Area_ID'] = $v->city_id;
                $data[$k]['Brands'] = '';
                $data[$k]['Build_Name'] = $v->outlets_name;
                $data[$k]['Categories'] = '';
                $data[$k]['Description'] = $v->page_description;
                $data[$k]['Email'] = $v->location;
                $data[$k]['Feature_Spot'] = '';
                $data[$k]['Image_Name'] = UtilD::getImageUrl($v->image,'outlets');
                $data[$k]['Introduce'] = $v->introduce;
                $data[$k]['Main_Brands'] = '';
                $data[$k]['Outlets_ID'] = $v->id;
                $data[$k]['Shopping_Index'] = $v->shopping_index;
                $data[$k]['Tel'] = $v->contact;
                $data[$k]['Traffic_Mode'] = $v->traffic_mode;
                $data[$k]['URL'] = $v->url;
                $data[$k]['Brands'] = Brand::model()->getBrandName($v->brands);
                $data[$k]['Feature_Spot'] = Scene::model()->getSceneName($v->scenes);
            }
        }
        $this->handleResule($data);
    }
}
