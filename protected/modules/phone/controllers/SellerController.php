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
class SellerController extends PhoneControllerD {

    //put your code here

    public function actionGetSellerByCityId() {
        //print_r(Yii::app()->cache->get('seller_main_brands'));exit;
        $city_id = Yii::app()->request->getParam('city_id', 0);
        $this->getSeller(array('city_id'=>$city_id));
    }

    public function getSeller($params) {
        $criteria = new CDbCriteria();
        if (isset($params['city_id']) && $params['city_id'] > 0) {
            $criteria->compare('city_id', $params['city_id']);
        } 
        if (isset($params['bc_id']) && $params['bc_id']>0) {
            $criteria->compare('bc_id', $params['bc_id']);
        }
        $criteria->compare('if_use', 1);
        $criteria->order = 'click desc,is_recommend desc,id desc';
        $criteria->select = 'id,address,location,big_image,seller_name,shopping_index,introduce,contact,traffic_mode';
        $model = Seller::model()->findAll($criteria);
        $data = array();
        if ($model) {
            foreach ($model as $k => $v) {
                $data[$k]['Address'] = $v->address;
                //$data[$k]['Brands'] = Brand::model()->getBrandName($v->brands);
                $data[$k]['Brands'] = Brand::model()->getMainBrands('seller',$v->id);
                $data[$k]['Categories'] = Sellercate::model()->getCateName($v->cates);
                $data[$k]['Email'] = $v->location;
                $data[$k]['Feature_Spot_CN'] = Scene::model()->getSceneName($v->scenes);
                $data[$k]['HasPreferential'] = Coupon::model()->findBySql('select id from coupon where seller_id=' . $v->id) ? 1 : 0;
                $data[$k]['Image_Big'] = UtilD::getImageUrl($v->big_image, 'seller_big_image');
                $data[$k]['NearHotel'] = '';
                $data[$k]['Seller_ID'] = $v->id;
                $data[$k]['Seller_Name'] = $v->seller_name;
                $data[$k]['Shopping_Index'] = $v->shopping_index;
                $data[$k]['Summary_CN'] = $v->introduce;
                $data[$k]['Tel'] = $v->contact;
                $data[$k]['Traffic_Mode_CN'] = $v->traffic_mode;
            }
        }
        $this->handleResule($data);
    }

}
