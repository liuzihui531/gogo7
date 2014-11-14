<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CommentController
 *
 * @author lzh
 */
class CommentController extends PhoneControllerD{
    //put your code here
    public function getComment($type){
        $criteria = new CDbCriteria();
        $criteria->compare('type', $type);
    }
}
