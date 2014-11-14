<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AdminControllerD
 *
 * @author lzh
 */
class PhoneControllerD extends Controller{
    //put your code here
    public function init() {
        parent::init();
    }
    
    protected function handleResule($data){
        header("Content-type:text/html;charset=utf-8");
        foreach($data as $k=>$v){
            if(is_array($v)){
                foreach($v as $key=>$val){
                    $data[$k][$key] = urlencode($val);
                }
            }else{
                $data[$k] = urlencode($v);
            }
        }
        die(urldecode(CJSON::encode($data)));
    }
}
