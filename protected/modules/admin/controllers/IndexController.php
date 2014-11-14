<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of IndexController
 *
 * @author lzh
 */
class IndexController extends AdminControllerD{
    //put your code here
    public function actionIndex(){
        $this->layout = 'none';
        $this->render('index');
    }
     public function actionHy(){
        $this->layout = 'none';
        $this->render('hy');
    }
}
