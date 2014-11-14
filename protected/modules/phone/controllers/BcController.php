<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BcController
 *
 * @author lzh
 */
class BcController extends PhoneControllerD{
    //put your code here
    public function actionGetBcByCityId(){
        $city_id = Yii::app()->request->getParam('city_id',0);
        $criteria = new CDbCriteria();
        $criteria->compare('city_id', $city_id);
        $criteria->compare('if_use', 1);
        $criteria->order = 'is_recommend desc,sorting desc,id desc';
        $model = BusinessCircle::model()->findAll($criteria);
        if($model){
            foreach($model as $k=>$v){
                $data[$k]['Address'] = $v->address;
                $data[$k]['Area_ID'] = $v->city_id;
                $data[$k]['BC_ID'] = $v->id;
                $data[$k]['BC_Name'] = $v->bc_name;
                $data[$k]['Description'] = $v->page_description;
                $data[$k]['Email'] = $v->location;
                $data[$k]['Feature'] = '';
                $data[$k]['Feature_Spot'] = Scene::model()->getSceneName($v->scenes);
                $data[$k]['Image_Name'] = UtilD::getImageUrl($v->image,'bc');
                $data[$k]['MainBrands'] =  Brand::model()->getBrandName($v->brands,',');
                $data[$k]['Shopping_Index'] = $v->shopping_index;
                $data[$k]['Summary'] = $v->introduce;
                $data[$k]['Tel'] = $v->contact;
                $data[$k]['Traffic_Mode'] = $v->traffic_mode;
                $data[$k]['URL'] = $v->url;                
            }
        }
        $this->handleResule($data);
    }
}
