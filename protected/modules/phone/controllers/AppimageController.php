<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AppimageController
 *
 * @author lzh
 */
class AppimageController extends PhoneControllerD{
    //put your code here
    public function actionGetAppimage(){
        $city_id = Yii::app()->request->getParam('city_id',0);
        $criteria = new CDbCriteria();
        $criteria->order = 'sorting desc';
        $criteria->compare('city_id', $city_id);
        $model = AppImage::model()->findAll($criteria);
        $data = array();
        if($model){
            foreach($model as $k=>$v){
                $data[$k]['CityID'] = $v->city_id;
                $data[$k]['ID'] = $v->id;
                $data[$k]['ImagePath'] = UtilD::getImageUrl($v->image,'appimage');
                $data[$k]['Order'] = $v->sorting;
                $data[$k]['SellerId'] = $v->seller_id;
            }
        }
        $this->handleResule($data);
    }
}
