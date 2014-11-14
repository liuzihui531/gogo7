<?php

/**
 * This is the model class for table "seller".
 *
 * The followings are the available columns in table 'seller':
 * @property integer $id
 * @property string $seller_name
 * @property integer $city_id
 * @property integer $bc_id
 * @property integer $outlets_id
 * @property integer $shopping_index
 * @property string $big_image
 * @property string $image_one
 * @property string $image_two
 * @property string $image_three
 * @property string $image_four
 * @property string $introduce
 * @property string $address
 * @property string $traffic_mode
 * @property string $url
 * @property string $guide_label
 * @property string $location
 * @property string $contact
 * @property string $login_name
 * @property string $login_pwd
 * @property string $page_keyword
 * @property string $page_description
 * @property integer $if_use
 * @property integer $is_recommend
 * @property integer $created
 */
class Seller extends CActiveRecord {

    public $cate_id;
    public $outlets_id;
    public $bc_id;
    private $_seller;

    public function getSeller() {
        $criteria = new CDbCriteria();
        $criteria->compare('if_use', 1);
        $seller = $this->findAll($criteria);
        $this->_seller = $seller;
        return $seller;
    }

    /**
     * 操作sellerBrandRelation表
     * @param type $seller_id
     * @param type $brand_ids
     * @return type
     */
    public function saveSellerBrandRelation($seller_id, $brand_ids) {
        if (!$seller_id) {
            return UtilD::formatReturn(0, 'seller_id有误');
        }
        $criteria = new CDbCriteria();
        $criteria->compare('seller_id', $seller_id);
        $model = SellerbrandRelation::model()->findAll($criteria);
        if ($model) {
            $rs = SellerbrandRelation::model()->deleteAll($criteria);
            if (!$rs)
                return UtilD::formatReturn(0, '删除数据错误！');
        }
        if ($brand_ids) {
            $sql = "insert into sellerbrand_relation (seller_id,brand_id) values";
            foreach ($brand_ids as $brand_id) {
                $sql .= "({$seller_id},{$brand_id}),";
            }
            $sql = rtrim($sql, ',');
            $rs = Yii::app()->db->createCommand($sql)->query();
            if (!$rs)
                return UtilD::formatReturn(0, '添加数据错误');
        }
        return UtilD::formatReturn(1, '操作成功！');
    }

    /**
     * 操作sellerSceneRelation表
     * @param type $seller_id
     * @param type $scene_ids
     * @return type
     */
    public function saveSellerSceneRelation($seller_id, $scene_ids) {
        if (!$seller_id) {
            return UtilD::formatReturn(0, 'seller_id有误');
        }
        $criteria = new CDbCriteria();
        $criteria->compare('seller_id', $seller_id);
        $model = SellersceneRelation::model()->findAll($criteria);
        if ($model) {
            $rs = SellersceneRelation::model()->deleteAll($criteria);
            if (!$rs)
                return UtilD::formatReturn(0, '删除数据错误！');
        }
        if ($scene_ids) {
            $sql = "insert into sellerscene_relation (seller_id,scene_id) values";
            foreach ($scene_ids as $scene_id) {
                $sql .= "({$seller_id},{$scene_id}),";
            }
            $sql = rtrim($sql, ',');
            $rs = Yii::app()->db->createCommand($sql)->query();
            if (!$rs)
                return UtilD::formatReturn(0, '添加数据错误');
        }
        return UtilD::formatReturn(1, '操作成功！');
    }

    /**
     * 操作sellercateRelation表
     * @param type $seller_id
     * @param type $cate_ids
     * @return type
     */
    public function saveSellerCateRelation($seller_id, $cate_ids) {
        if (!$seller_id) {
            return UtilD::formatReturn(0, 'seller_id有误');
        }
        $criteria = new CDbCriteria();
        $criteria->compare('seller_id', $seller_id);
        $model = SellercateRelation::model()->findAll($criteria);
        if ($model) {
            $rs = SellercateRelation::model()->deleteAll($criteria);
            if (!$rs)
                return UtilD::formatReturn(0, '删除数据错误！');
        }
        if ($cate_ids) {
            $sql = "insert into sellercate_relation (seller_id,cate_id) values";
            foreach ($cate_ids as $cate_id) {
                $sql .= "({$seller_id},{$cate_id}),";
            }
            $sql = rtrim($sql, ',');
            $rs = Yii::app()->db->createCommand($sql)->query();
            if (!$rs)
                return UtilD::formatReturn(0, '添加数据错误');
        }
        return UtilD::formatReturn(1, '操作成功！');
    }

    /**
     * 通过城市选择商家
     * @param type $city_id
     * @param type $field
     * @param type $format  是否格式化成id和name的数组的形式
     * @return type
     */
    public function getSellerByCity($city_id, $field = '*', $format = false) {
        $criteria = new CDbCriteria();
        $criteria->compare('city_id', $city_id);
        $criteria->select = $field;
        $model = $this->findAll($criteria);
        $return = array();
        if ($format) {
            if ($model) {
                foreach ($model as $k => $v) {
                    $return[$v->id] = $v->seller_name;
                }
            }
            return $return;
        }
        return $model;
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'seller';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('seller_name', 'required'),
            array('city_id, shopping_index, if_use, is_recommend, created,click', 'numerical', 'integerOnly' => true),
            array('seller_name, big_image, image_one, image_two, image_three, image_four, url, location, page_keyword', 'length', 'max' => 128),
            array('introduce, traffic_mode, guide_label, page_description', 'length', 'max' => 512),
            array('address', 'length', 'max' => 256),
            array('contact', 'length', 'max' => 64),
            array('city_id', 'required'),
            array('outlets_id,bc_id', 'safe'),
            array('login_name, login_pwd', 'length', 'max' => 32),
            array('location', 'match', 'pattern' => '/^([0-9]+)[\|]([0-9]+)$/'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, seller_name, city_id, bc_id,click, outlets_id, shopping_index, big_image, image_one, image_two, image_three, image_four, introduce, address, traffic_mode, url, guide_label, location, contact, login_name, login_pwd, page_keyword, page_description, if_use, is_recommend, created', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'city' => array(self::BELONGS_TO, 'City', 'city_id', 'select' => 'id,city_name'),
            'bc' => array(self::BELONGS_TO, 'BusinessCircle', 'bc_id'),
            'outlets' => array(self::BELONGS_TO, 'Outlets', 'outlets_id'),
            'cates' => array(self::MANY_MANY, 'Sellercate', 'sellercate_relation(cate_id,seller_id)'),
            'brands' => array(self::MANY_MANY, 'Brand', 'sellerbrand_relation(seller_id,brand_id)','select'=>'id,brand_name'),
            'scenes' => array(self::MANY_MANY, 'Scene', 'sellerscene_relation(seller_id,scene_id)'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'seller_name' => '商家名称',
            'city_id' => '所属城市',
            'bc_id' => '所属商圈',
            'outlets_id' => '所属Outlets',
            'shopping_index' => '必逛指数',
            'big_image' => '商家大图',
            'image_one' => '商家小图1',
            'image_two' => '商家小图2',
            'image_three' => '商家小图3',
            'image_four' => '商家小图4',
            'introduce' => '商家简介',
            'address' => '商家地址',
            'traffic_mode' => '交通方式',
            'url' => '商家网址',
            'guide_label' => '引导标注',
            'location' => '商家经纬度',
            'contact' => '商家联系方式',
            'login_name' => '商家登录名',
            'login_pwd' => '商家密码',
            'page_keyword' => '页面关键字',
            'page_description' => '页面描述',
            'if_use' => '是否使用',
            'is_recommend' => '是否推荐',
            'created' => '创建时间',
            'cate_id' => '商家分类',
            'click' => '点击量',
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
        $criteria->compare('seller_name', $this->seller_name, true);
        $criteria->compare('city_id', $this->city_id);
        $criteria->compare('bc_id', $this->bc_id);
        $criteria->compare('outlets_id', $this->outlets_id);
        $criteria->compare('shopping_index', $this->shopping_index);
        $criteria->compare('big_image', $this->big_image, true);
        $criteria->compare('image_one', $this->image_one, true);
        $criteria->compare('image_two', $this->image_two, true);
        $criteria->compare('image_three', $this->image_three, true);
        $criteria->compare('image_four', $this->image_four, true);
        $criteria->compare('introduce', $this->introduce, true);
        $criteria->compare('address', $this->address, true);
        $criteria->compare('traffic_mode', $this->traffic_mode, true);
        $criteria->compare('url', $this->url, true);
        $criteria->compare('guide_label', $this->guide_label, true);
        $criteria->compare('location', $this->location, true);
        $criteria->compare('contact', $this->contact, true);
        $criteria->compare('login_name', $this->login_name, true);
        $criteria->compare('login_pwd', $this->login_pwd, true);
        $criteria->compare('page_keyword', $this->page_keyword, true);
        $criteria->compare('page_description', $this->page_description, true);
        $criteria->compare('if_use', $this->if_use);
        $criteria->compare('is_recommend', $this->is_recommend);
        $criteria->compare('created', $this->created);
        $criteria->compare('click', $this->click);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Seller the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
