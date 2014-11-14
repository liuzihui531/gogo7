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
class CouponController extends PhoneControllerD{
    //put your code here
    /**
     * {"BC_ID":-1,"Code":"","Content":"购物满$125，立减$25。优惠代码：50367。","Created_Date":"2014-08-07 21:52:15","Deadline":"2014-12-31 00:00:00","Image_Name":"53e3848f920ea.jpg","Is_Commend":false,"Outlets_ID":-1,"Preferential_ID":13949,"Seller_ID":386,"Seller_Name":"Adidas（Woodbury Outlets店）","Start_Time":"2014-08-07 00:00:00"}
     */
    public function actionGetCoupons(){
        $city_id = Yii::app()->request->getParam('city_id',0);
        $criteria = new CDbCriteria();
        $criteria->compare('city_id', $city_id);
        $criteria->addCondition("expire_time >".time());
        $criteria->order = 'created desc';
        $model = Coupon::model()->findAll($criteria);
        $data = array();
        if($model){
            foreach($model as $k=>$v){
                $data[$k]['BC_ID'] = $v->bc_id;
                $data[$k]['Code'] = $v->coupon_code;
                $data[$k]['Content'] = $v->coupon_name;
                $data[$k]['Created_Date'] = UtilD::formatDate($v->created);
                $data[$k]['Deadline'] = UtilD::formatDate($v->expire_time);
                $data[$k]['Image_Name'] = UtilD::getImageUrl($v->image,'coupon');
                $data[$k]['Is_Commend'] = UtilD::returnTrueOrFalse($v->is_recommend);
                $data[$k]['Outlets_ID'] = $v->outlets_id;
                $data[$k]['Preferential_ID'] = $v->id;
                $data[$k]['Seller_ID'] = $v->seller_id;
                $data[$k]['Seller_Name'] = $v->seller->seller_name;
                $data[$k]['Start_Time'] = UtilD::formatDate($v->start_time);                
            }
        }
        $this->handleResule($data);
    }
}
