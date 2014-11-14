<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of FavoriteControler
 *
 * @author lzh
 */
class FavoriteController extends PhoneControllerD{

    //put your code here
    public function getType(){
        $return = array(
            '10' => 'bc',
            '20' => 'seller',
            '30' => 'share',
            '40' => 'coupon',
            '50' => 'outlets',
        );
        return $return;
    }
    /**
     * 添加收藏
     */
    public function actionFavorite(){
        $type_arr = $this->getType();
        $user_id = Yii::app()->request->getParam('userID',0);
        $type = Yii::app()->request->getParam('type',0);
        $type_id = Yii::app()->request->getParam('fID',0);
        $type = array_search($type, $type_arr);
        $model = new Favorite();
        $model->user_id = $user_id;
        $model->type = $type;
        $model->type_id = $type_id;
        $model->save();
    }
    /**
     * 取消收藏
     */
    public function actionCancelUserFavorite(){
        $type_arr = $this->getType();
        $user_id = Yii::app()->request->getParam('userID',0);
        $type = Yii::app()->request->getParam('type',0);
        $type_id = Yii::app()->request->getParam('fID',0);
        $type = array_search($type, $type_arr);
        $criteria = new CDbCriteria();
        $criteria->compare('user_id', $user_id);
        $criteria->compare('type', $type);
        $criteria->compare('type_id', $type_id);
        $model = Favorite::model()->find($criteria);
        $model->delete();
    }
    
    public function actionGetFavorite(){
        $type_arr = $this->getType();
        $user_id = Yii::app()->request->getParam('userID',0);
        $type = Yii::app()->request->getParam('type','');        
        $type_name = array_search($type, $type_arr);
        $criteria = new CDbCriteria();
        $criteria->compare('user_id', $user_id);
        $criteria->compare('type', $type);
        $model = Favorite::model()->findAll($criteria);
        $data = array();
        if($model){
            foreach($model as $k=>$v){
                $type = $v->type;
                $favorite_name = "";
                switch ($type){
                    case 'bc' : $favorite_name = $v->bc->bc_name;break;
                    case 'seller' : $favorite_name = $v->seller->seller_name;break;
                    case 'share' : $favorite_name = $v->share->title;break;
                    case 'outlets' : $favorite_name = $v->outlets->outlets_name;break;
                    case 'coupon' : $favorite_name = $v->coupon->coupon_name;break;
                }
                $data[$k]['FavoriteID'] = $v->type_id;
                $data[$k]['FavoriteName'] = $favorite_name;
                
                if($type == 'seller'){
                    $data[$k]['Image_Name'] = UtilD::getImageUrl($v->$type->big_image,'seller_big_image');
                }else{
                    $data[$k]['Image_Name'] = UtilD::getImageUrl($v->$type->image,$type);
                }
                $data[$k]['Shopping_Index'] = isset($v->$type->shopping_index) ? $v->$type->shopping_index : "";
                $data[$k]['Summary'] = isset($v->$type->introduce) ? $v->$type->introduce : "";
                $data[$k]['Type'] = $type;
                $data[$k]['TypeName'] = $type_name;
            }
        }
        $this->handleResule($data);
    }
}
