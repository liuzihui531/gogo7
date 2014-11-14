<?php

/**
 * This is the model class for table "business_circle".
 *
 * The followings are the available columns in table 'business_circle':
 * @property integer $id
 * @property string $bc_name
 * @property string $image
 * @property string $url
 * @property string $location
 * @property string $contact
 * @property string $introduce
 * @property string $traffic_mode
 * @property integer $shopping_index
 * @property integer $city_id
 * @property integer $sorting
 * @property string $address
 * @property string $keyword
 * @property string $description
 * @property integer $if_use
 * @property integer $is_recommend
 * @property integer $created
 */
class BusinessCircle extends CActiveRecord {

    private $_bc;
    public function getBc(){
        $criteria = new CDbCriteria();
        $criteria->compare('if_use', 1);
        $bc = $this->findAll($criteria);
        $this->_bc = $bc;
        return $bc;
    }
    /**
     * 操作BcBrandRelation表
     * @param type $bc_id
     * @param type $brand_ids
     * @return type
     */
    public function saveBcBrandRelation($bc_id, $brand_ids) {
        if (!$bc_id) {
            return UtilD::formatReturn(0, 'bc_id有误');
        }
        $criteria = new CDbCriteria();
        $criteria->compare('bc_id', $bc_id);
        $model = BcbrandRelation::model()->findAll($criteria);
        if ($model) {
            $rs = BcbrandRelation::model()->deleteAll($criteria);
            if (!$rs)
                return UtilD::formatReturn(0, '删除数据错误！');
        }
        if ($brand_ids) {
            $sql = "insert into bcbrand_relation (bc_id,brand_id) values";
            foreach ($brand_ids as $brand_id) {
                $sql .= "({$bc_id},{$brand_id}),";
            }
            $sql = rtrim($sql, ',');
            $rs = Yii::app()->db->createCommand($sql)->query();
            if (!$rs)
                return UtilD::formatReturn(0, '添加数据错误');
        }
        return UtilD::formatReturn(1, '操作成功！');
    }

    /**
     * 操作BcSceneRelation表
     * @param type $bc_id
     * @param type $scene_ids
     * @return type
     */
    public function saveBcSceneRelation($bc_id, $scene_ids) {
        if (!$bc_id) {
            return UtilD::formatReturn(0, 'bc_id有误');
        }
        $criteria = new CDbCriteria();
        $criteria->compare('bc_id', $bc_id);
        $model = BcsceneRelation::model()->findAll($criteria);
        if ($model) {
            $rs = BcsceneRelation::model()->deleteAll($criteria);
            if (!$rs)
                return UtilD::formatReturn(0, '删除数据错误！');
        }
        if ($scene_ids) {
            $sql = "insert into bcscene_relation (bc_id,scene_id) values";
            foreach ($scene_ids as $scene_id) {
                $sql .= "({$bc_id},{$scene_id}),";
            }
            $sql = rtrim($sql, ',');
            $rs = Yii::app()->db->createCommand($sql)->query();
            if (!$rs)
                return UtilD::formatReturn(0, '添加数据错误');
        }
        return UtilD::formatReturn(1, '操作成功！');
    }

    /**
     * 通过城市选出商圈
     * @param type $city_id
     * @param type $field
     * @param type $format 是否格式化成id和name的数组的形式
     * @return type
     */
    public function getBcByCity($city_id, $field = '*',$format=false) {
        $criteria = new CDbCriteria();
        $criteria->compare('city_id', $city_id);
        $criteria->compare('if_use', 1);
        $criteria->select = $field;
        $model = $this->findAll($criteria);
        $return = array();
        if ($format) {
            if ($model) {
                foreach ($model as $k => $v) {
                    $return[$v->id] = $v->bc_name;
                }
            }
            return $return;
        }
        return $model;
    }

    /**
     * 获取所有商圈
     * @param type $key
     * @return type
     */
    public function getBcKv($key = "") {
        $bc = $this->getBc();
        $return = array();
        if ($bc) {
            foreach ($bc as $v) {
                $return[$v->id] = $v->bc_name;
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
        return 'business_circle';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('shopping_index, city_id, sorting, if_use, is_recommend, created', 'numerical', 'integerOnly' => true),
            array('bc_name, image, url, location, contact, page_keyword', 'length', 'max' => 128),
            array('introduce, traffic_mode, address', 'length', 'max' => 512),
            array('description', 'safe'),
            array('bc_name','required'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, bc_name, image, url, location, contact, introduce, traffic_mode, shopping_index, city_id, sorting, address, page_keyword, page_description, if_use, is_recommend, created', 'safe', 'on' => 'search'),
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
            'brands' => array(self::MANY_MANY, 'Brand', 'bcbrand_relation(bc_id,brand_id)'),
            'scenes' => array(self::MANY_MANY, 'Scene', 'bcscene_relation(bc_id,scene_id)'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'bc_name' => '商圈名称',
            'image' => '图片',
            'url' => 'Url',
            'location' => '经纬度',
            'contact' => '联系方式',
            'introduce' => '商圈简介',
            'traffic_mode' => '交通方式',
            'shopping_index' => '必逛指数',
            'city_id' => '所属城市',
            'sorting' => '排序',
            'address' => '商圈地址',
            'page_keyword' => '页面关键字',
            'page_description' => '页面描述',
            'if_use' => '是否使用',
            'is_recommend' => '是否推荐',
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
        $criteria->compare('bc_name', $this->bc_name, true);
        $criteria->compare('image', $this->image, true);
        $criteria->compare('url', $this->url, true);
        $criteria->compare('location', $this->location, true);
        $criteria->compare('contact', $this->contact, true);
        $criteria->compare('introduce', $this->introduce, true);
        $criteria->compare('traffic_mode', $this->traffic_mode, true);
        $criteria->compare('shopping_index', $this->shopping_index);
        $criteria->compare('city_id', $this->city_id);
        $criteria->compare('sorting', $this->sorting);
        $criteria->compare('address', $this->address, true);
        $criteria->compare('page_keyword', $this->page_keyword, true);
        $criteria->compare('page_description', $this->page_description, true);
        $criteria->compare('if_use', $this->if_use);
        $criteria->compare('is_recommend', $this->is_recommend);
        $criteria->compare('created', $this->created);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return BusinessCircle the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
