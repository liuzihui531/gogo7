<?php

/**
 * This is the model class for table "outlets".
 *
 * The followings are the available columns in table 'outlets':
 * @property integer $id
 * @property string $outlets_name
 * @property integer $city_id
 * @property string $image
 * @property string $url
 * @property string $location
 * @property string $contact
 * @property string $introduce
 * @property string $traffic_mode
 * @property string $brand
 * @property integer $shopping_index
 * @property integer $seller_count
 * @property string $address
 * @property integer $is_recommend
 * @property string $page_keyword
 * @property string $page_description
 * @property integer $created
 */
class Outlets extends CActiveRecord {

    /**
     * 取得必逛指数
     * @param type $key
     * @return string
     */
    public function getShoppingIndex($key = '') {
        $return = array(
            '1' => '1',
            '2' => '2',
            '3' => '3',
            '4' => '4',
            '5' => '5',
        );
        if (key_exists($key, $return)) {
            return $return[$key];
        }
        return $return;
    }

    public function getIsRecommend($key = '') {
        $return = array(
            '0' => '否',
            '1' => '是',
        );
        if (key_exists($key, $return)) {
            return $return[$key];
        }
        return $return;
    }

    public function getIfUse($key = '') {
        $return = array(
            '0' => '否',
            '1' => '是',
        );
        if (key_exists($key, $return)) {
            return $return[$key];
        }
        return $return;
    }

    /**
     * 操作OutletsBrandRelation表
     * @param type $outlets_id
     * @param type $brand_ids
     * @return type
     */
    public function saveOutletsBrandRelation($outlets_id, $brand_ids) {
        if (!$outlets_id) {
            return UtilD::formatReturn(0, 'outlets_id有误');
        }
        $criteria = new CDbCriteria();
        $criteria->compare('outlets_id', $outlets_id);
        $model = OutletsbrandRelation::model()->findAll($criteria);
        if ($model) {
            $rs = OutletsbrandRelation::model()->deleteAll($criteria);
            if (!$rs)
                return UtilD::formatReturn(0, '删除数据错误！');
        }
        if ($brand_ids) {
            $sql = "insert into outletsbrand_relation (outlets_id,brand_id) values";
            foreach ($brand_ids as $brand_id) {
                $sql .= "({$outlets_id},{$brand_id}),";
            }
            $sql = rtrim($sql, ',');
            $rs = Yii::app()->db->createCommand($sql)->query();
            if (!$rs)
                return UtilD::formatReturn(0, '添加数据错误');
        }
        return UtilD::formatReturn(1, '操作成功！');
    }

    /**
     * 操作OutletsSceneRelation表
     * @param type $outlets_id
     * @param type $scene_ids
     * @return type
     */
    public function saveOutletsSceneRelation($outlets_id, $scene_ids) {
        if (!$outlets_id) {
            return UtilD::formatReturn(0, 'outlets_id有误');
        }
        $criteria = new CDbCriteria();
        $criteria->compare('outlets_id', $outlets_id);
        $model = OutletssceneRelation::model()->findAll($criteria);
        if ($model) {
            $rs = OutletssceneRelation::model()->deleteAll($criteria);
            if (!$rs)
                return UtilD::formatReturn(0, '删除数据错误！');
        }
        if ($scene_ids) {
            $sql = "insert into outletsscene_relation (outlets_id,scene_id) values";
            foreach ($scene_ids as $scene_id) {
                $sql .= "({$outlets_id},{$scene_id}),";
            }
            $sql = rtrim($sql, ',');
            $rs = Yii::app()->db->createCommand($sql)->query();
            if (!$rs)
                return UtilD::formatReturn(0, '添加数据错误');
        }
        return UtilD::formatReturn(1, '操作成功！');
    }

    /**
     * 通过城市取outlets
     * @param type $city_id
     * @param type $field
     * @param type $format 是否格式化成id和name的数组的形式
     * @return type
     */
    public function getOutletsByCity($city_id, $field = '*',$format=false) {
        $criteria = new CDbCriteria();
        $criteria->compare('city_id', $city_id);
        $criteria->select = $field;
        $model = $this->findAll($criteria);
        $return = array();
        if ($format) {
            if ($model) {
                foreach ($model as $k => $v) {
                    $return[$v->id] = $v->outlets_name;
                }
            }
            return $return;
        }
        return $model;
    }

    /**
     * 获取所有outlets
     * @param type $key
     * @return type
     */
    public function getOutlets($key = "") {
        $allOutlets = Outlets::model()->findAll();
        $return  = array();
        if ($allOutlets) {
            foreach ($allOutlets as $v) {
                $return[$v->id] = $v->outlets_name;
            }
            if (key_exists($key, $return)) {
                return $return[$key];
            }
        }
        return $return;
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'outlets';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('city_id, shopping_index, seller_count, is_recommend, created', 'numerical', 'integerOnly' => true),
            array('outlets_name, image, url, location, page_keyword', 'length', 'max' => 128),
            array('contact', 'length', 'max' => 64),
            array('introduce, traffic_mode', 'length', 'max' => 512),
            array('address', 'length', 'max' => 256),
            array('brand, page_description', 'safe'),
            array('outlets_name,city_id', 'required'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, outlets_name, city_id, image, url, location, contact, introduce, traffic_mode, brand, shopping_index, seller_count, address, is_recommend, page_keyword, page_description, created', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'city' => array(self::BELONGS_TO, 'City', 'city_id'),
            'brands' => array(self::MANY_MANY, 'Brand', 'outletsbrand_relation(outlets_id,brand_id)'),
            'scenes' => array(self::MANY_MANY, 'Scene', 'outletsscene_relation(outlets_id,scene_id)'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'outlets_name' => 'Outlets名称',
            'city_id' => '所属城市',
            'image' => '图片',
            'url' => 'Url',
            'location' => '经纬度',
            'contact' => '联系方式',
            'introduce' => '简介',
            'traffic_mode' => '交通方式',
            'brand' => '主要品牌',
            'shopping_index' => '必逛指数',
            'seller_count' => '商家数量',
            'address' => '地址',
            'is_recommend' => '是否推荐',
            'page_keyword' => '关键字',
            'page_description' => '描述',
            'created' => '创建时间',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     *
     * Typical usecase:
     * - Initialize the model fields with values from filter form.
     * - Execute this method to get CActiveDataProvider instance which will filter
     * models according to data in model fields.
     * - Pass data provider to CGridView, CListView or any similar widget.
     *
     * @return CActiveDataProvider the data provider that can return the models
     * based on the search/filter conditions.
     */
    public function search() {
        // @todo Please modify the following code to remove attributes that should not be searched.

        $criteria = new CDbCriteria;

        $criteria->compare('id', $this->id);
        $criteria->compare('outlets_name', $this->outlets_name, true);
        $criteria->compare('city_id', $this->city_id);
        $criteria->compare('image', $this->image, true);
        $criteria->compare('url', $this->url, true);
        $criteria->compare('location', $this->location, true);
        $criteria->compare('contact', $this->contact, true);
        $criteria->compare('introduce', $this->introduce, true);
        $criteria->compare('traffic_mode', $this->traffic_mode, true);
        $criteria->compare('brand', $this->brand, true);
        $criteria->compare('shopping_index', $this->shopping_index);
        $criteria->compare('seller_count', $this->seller_count);
        $criteria->compare('address', $this->address, true);
        $criteria->compare('is_recommend', $this->is_recommend);
        $criteria->compare('page_keyword', $this->page_keyword, true);
        $criteria->compare('page_description', $this->page_description, true);
        $criteria->compare('created', $this->created);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Outlets the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
