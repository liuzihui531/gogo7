<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SettingController
 * 系统设置
 * @author lzh
 */
class SettingController extends AdminControllerD{
    //put your code here
    public function actionIndex(){
        $this->breadcrumbs = array('系统设置');
        $memKey = Setting::$memKey;
        $setting = Setting::model()->getSetting();
        $this->render('index',array('setting'=>$setting));
    }
    public function actionSave(){
        $res = Setting::model()->saveSetting($_POST['setting']);
        if($res['status'] == 0){
            $this->error($res['message']);
        }elseif ($res['status'] == 1) {
            $this->success($res['message']);
        }
    }
}
