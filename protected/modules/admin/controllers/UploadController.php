<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of UploadController
 *
 * @author lzh
 */
class UploadController extends AdminControllerD {

    public function actionUe_upload_image() {
        if (isset($_FILES['upfile']['tmp_name']) && !empty($_FILES['upfile']['tmp_name'])) {
            $upload = new Upload();
            $rs = $upload->uploads('upfile');
            if ($rs) {
                echo CJSON::encode(array('url' => $upload->file_url, 'title' => '', 'state' => 'SUCCESS'));
            } else {
                $data['error'] = $upload->getError();
                $data['status'] = 0;
                echo CJSON::encode($data);
            }
        }
    }

}
