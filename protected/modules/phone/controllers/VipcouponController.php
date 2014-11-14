<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of VipcouponsController
 *
 * @author lzh
 * {"ID":15,"Seller_Name":"OTTE（麦迪逊大街店）",
 * "Content":"结账的时候将特别折扣代码GOGOUSA10报给收银员，可以获得GO购会员专享的全单额外9折的VIP特别折扣！",
 * "Image_Name":"53f87ee4521e3.jpg",
 * "Is_Top":1,"Status":1,"Created_Date":{},"ROW_NUMBER":"1"
 * }
 */
class VipcouponsController extends PhoneControllerD{
    //put your code here
    public function actionIndex(){
        $criteria = new CDbCriteria();
        $criteria->order = 'is_top desc,id desc';
        $model = Vipcoupon::model()->findAll($criteria);
        $data = array();
        if($model){
            foreach($model as $k=>$v){
                $data[$k]['ID'] = $v->id;
                $data[$k]['Seller_Name'] = $v->seller_name;
                $data[$k]['Content'] = $v->content;
                $data[$k]['Image_Name'] = UtilD::getImageUrl($v->image,'vipcoupon');
                $data[$k]['Is_Top'] = $v->is_top;
                $data[$k]['Status'] = $v->status;
                $data[$k]['Created_Date'] = date('Y-m-d H:i:s',$v->created);
                $data[$k]['ROW_NUMBER'] = $k+1;
            }
        }
        $this->handleResule($data);
    }
}
