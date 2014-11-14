<?php

return array(
    'thumb' => array(
        'class' => 'ext.CThumb.CThumb',
    ),
    'user' => array(
// enable cookie-based authentication
        'allowAutoLogin' => true,
        'loginUrl' => array('/login'),
    ),
    // uncomment the following to enable URLs in path-format
//        'urlManager' => array(
//            'urlFormat' => 'path',
//            'rules' => array(
//                '<controller:\w+>/<id:\d+>' => '<controller>/view',
//                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
//                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
//            ),
//        ),
    'urlManager' => array(
        'urlFormat' => 'path',
        'showScriptName' => false,
        'urlSuffix' => '.html',
        'rules' => array(
            'post/<id:\d+>/<title:.*?>' => 'post/view',
            'posts/<tag:.*?>' => 'post/index',
            '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
        ),
    ),
    'db' => array(
        'connectionString' => 'sqlite:' . dirname(__FILE__) . '/../data/testdrive.db',
    ),
    // uncomment the following to use a MySQL database
    'db' => array(
        'connectionString' => 'mysql:host=127.0.0.1;dbname=gogo7',
        'emulatePrepare' => true,
        'username' => 'root',
        'password' => 'root',
        'charset' => 'utf8',
        'enableProfiling' => true,
        'enableParamLogging' => true,
    ),
    'errorHandler' => array(
// use 'site/error' action to display errors
        'errorAction' => 'site/error',
    ),
    'log' => array(
        'class' => 'CLogRouter',
        'routes' => array(
            /*
         array(
          'class' => 'ext.yii-debug-toolbar.YiiDebugToolbarRoute',
          'ipFilters' => array('127.0.0.1', '192.168.1.*', '192.168.29.*'),
          ), */
         /*
         array(
          'class' => 'CFileLogRoute',
          'levels' => 'error, warning',
          ), */
        // uncomment the following to show log messages on web pages

        /* array(
          'class'=>'CWebLogRoute',
          ),
         */
        ),
    ),
    /**
     * memcached缓存
     */
    'cache' => array(
        'class' => 'CMemCache',
        //            'keyPrefix'=>'',
        //            'hashKey' => false,
        //            'serializer' => false,
        'servers' => array(
            array(
                'host' => '127.0.0.1',
                'port' => 11211,
                'weight' => 60,
            ),
        ),
    ),
        /* 文件缓存
         * 'cache' => array(
          'class' => 'system.caching.CFileCache',
          'directoryLevel' => 2,
          ), */
);
