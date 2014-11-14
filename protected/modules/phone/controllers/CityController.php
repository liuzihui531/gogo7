<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
Class CityController extends PhoneControllerD{
    public function actionGetCity(){
        $criteria = new CDbCriteria();
        $criteria->order = 'sorting desc';
        $model = City::model()->findAll($criteria);
        $data = array();
        if($model){
            foreach($model as $k=>$v){
                $data[$k]['Category_ID'] = $v->area_id;
                $data[$k]['Category_Name'] = $v->area->name;
                $data[$k]['cityName'] = $v->city_name;
                $data[$k]['id'] = $v->id;              
            }
        }
        $this->handleResule($data);
    }
}
