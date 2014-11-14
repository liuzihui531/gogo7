<?php

/**
 * This is the model class for table "brand".
 *
 * The followings are the available columns in table 'brand':
 * @property integer $id
 * @property string $brand_name
 * @property string $brand_en_name
 * @property string $cate_id
 * @property string $city_id
 * @property string $description
 * @property string $image
 * @property integer $is_recommend
 * @property string $first_letter
 * @property integer $created
 */
class Brand extends CActiveRecord {

    public static $memKey = 'brand';

    public function setBrand() {
        $brand = Brand::model()->findAll(array('order' => 'first_letter asc'));
        $brand_arr = UtilD::object2array($brand);
        foreach ($brand_arr as $k => $v) {
            $brand_arr[$v['brand_id']] = $v;
        }
        Yii::app()->cache->set(self::$memKey, $brand_arr);
        return $brand_arr;
    }

    /**
     * 品牌信息
     * @var type 
     */
    public function getBrand() {
        $brand = Yii::app()->cache->get(self::$memKey);
        if (!$brand) {
            $brand = $this->setBrand();
        }
        return $brand;
    }

    /**
     * 取得是否推荐的数据
     * @param type $key
     * @return string
     */
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

    /**
     * 取得分类
     * @return type
     */
    public function getCate() {
        $model = Yii::app()->db->createCommand()->select('id,name')->from('brandcate')->order('sorting desc')->queryAll();
        return CHtml::listData($model, 'id', 'name');
    }

    /**
     * 保存品牌分类第三张表
     * @param type $brand_id
     * @param type $cate_ids
     * @return type
     */
    public function saveBrandCateRelation($brand_id, $cate_ids) {
        if (!$cate_ids) {
            return UtilD::formatReturn(1, '无数据');
        }
        if (!$brand_id)
            return UtilD::formatReturn(0, '数据不正确');
        $criteria = new CDbCriteria();
        $criteria->compare('brand_id', $brand_id);
        $model = BrandcateRelation::model()->findAll($criteria);
        if ($model) {
            $rs = BrandcateRelation::model()->deleteAll($criteria);
            if (!$rs)
                return UtilD::formatReturn(0, '删除数据错误！');
        }
        $sql = "insert into brandcate_relation (brand_id,cate_id) values";
        foreach ($cate_ids as $cate_id) {
            $sql .= "({$brand_id},{$cate_id}),";
        }
        $sql = rtrim($sql, ',');
        $rs = Yii::app()->db->createCommand($sql)->query();
        if (!$rs)
            return UtilD::formatReturn(0, '添加数据错误');
        return UtilD::formatReturn(1, '操作成功！');
    }

    public function saveBrandCityRelation($city_id, $brand_ids) {
        if (!$city_id || !$brand_ids)
            return UtilD::formatReturn(0, '数据不正确');
        $criteria = new CDbCriteria();
        $criteria->compare('city_id', $city_id);
        $model = BrandcityRelation::model()->findAll($criteria);
        if ($model) {
            $rs = BrandcityRelation::model()->deleteAll($criteria);
            if (!$rs)
                return UtilD::formatReturn(0, '删除数据错误！');
        }
        $sql = "insert into brandcity_relation (city_id,brand_id) values";
        foreach ($brand_ids as $brand_id) {
            $sql .= "({$city_id},{$brand_id}),";
        }
        $sql = rtrim($sql, ',');
        $rs = Yii::app()->db->createCommand($sql)->query();
        if (!$rs)
            return UtilD::formatReturn(0, '添加数据错误');
        return UtilD::formatReturn(1, '操作成功！');
    }

    /**
     * 取得品牌信息,key,val形式
     * @return type
     */
    public function getBrandKv() {
        $brand = $this->getBrand();
        $return = array();
        foreach ($brand as $k => $v) {
            if ($v['if_use'] == 1) {
                $return[$v['id']] = $v['brand_name'];
            }
        }
        return $return;
    }

    /**
     * 通过城市取品牌id
     * @param type $city_id
     * @return type
     */
    public function getBrandIdByCityId($city_id) {
        if ($city_id == 'all') {
            $brandModel = Brand::model()->findAll();
        } else {
            $relationModel = BrandcityRelation::model()->findAllByAttributes(array('city_id' => $city_id));
        }
        $brand_id = array();
        if ($relationModel) {
            foreach ($relationModel as $k => $v) {
                $brand_id[] = $v->brand_id;
            }
        } elseif ($brandModel) {
            foreach ($brandModel as $k => $v) {
                $brand_id[] = $v->id;
            }
        }
        $brand_id = array_unique($brand_id);
        return $brand_id;
    }

    /**
     * 通过outlets取品牌id
     * @param type $city_id
     * @return type
     */
    public function getBrandIdByOutletsId($outlets_id) {
        $relationModel = OutletsbrandRelation::model()->findAllByAttributes(array('outlets_id' => $outlets_id));
        $brand_id = array();
        if ($relationModel) {
            foreach ($relationModel as $k => $v) {
                $brand_id[] = $v->brand_id;
            }
        }
        $brand_id = array_unique($brand_id);
        return $brand_id;
    }

    public function getBrandName($model,$split=';') {
        $return = '';
        if ($model) {
            foreach ($model as $k => $v) {
                $return .= $v->brand_name . $split;
            }
        }
        $return = rtrim($return, $split);
        return $return;
    }
    
//    public function getBrandNameBySellerId($seller_id) {
//        $model = SellerbrandRelation::model()->findAll('seller_id=:seller_id', array(':seller_id' => $seller_id));
//        $return = '';
//        $brand = $this->getBrand();
//        foreach ($model as $k => $v) {
//            $return .= $brand[$v->brand_id]['brand_name'].';';
//        }
//        $return = rtrim($return,';');
//        return $return;
//    }

    public function getMainBrands($type,$type_id){
        if($type_id == 0) return "";
        if($type == 'seller'){
            $memKey = 'seller_main_brands';
            $seller_main_brands = array();
            $seller_main_brands = Yii::app()->cache->get($memKey);
            $main_brands = "";
            if($seller_main_brands && isset($seller_main_brands[$type_id])){
                $main_brands = $seller_main_brands[$type_id];
            }else{
                $seller_brands_model = SellerbrandRelation::model()->findAllByAttributes(array('seller_id'=>$type_id));
                if($seller_brands_model){
                    foreach($seller_brands_model as $k=>$v){
                        $main_brands .= $v->brand->brand_name.';';
                    }
                    $main_brands = rtrim($main_brands,';');
                }
                $seller_main_brands[$type_id] = $main_brands;
                Yii::app()->cache->delete($memKey);
                Yii::app()->cache->add($memKey, $seller_main_brands);
            }
            return $main_brands;
        }
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'brand';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('is_recommend,if_use, created', 'numerical', 'integerOnly' => true),
            array('brand_name, brand_en_name, image', 'length', 'max' => 128),
            array('brand_name,if_use', 'required'),
            //array('city_id', 'length', 'max' => 256),
            array('cate_id', 'safe'),
            array('description', 'length', 'max' => 512),
            array('first_letter', 'length', 'max' => 8),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, brand_name, brand_en_name,if_use, cate_id, city_id, description, image, is_recommend, first_letter, created', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'brand_name' => '品牌名称',
            'brand_en_name' => '品牌英文名称',
            'cate_id' => '品牌分类',
            'description' => '品牌描述',
            'image' => '品牌Logo',
            'is_recommend' => '是否推荐',
            'first_letter' => 'First Letter',
            'created' => 'Created',
            'if_use' => '是否启用',
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
        $criteria->compare('brand_name', $this->brand_name, true);
        $criteria->compare('brand_en_name', $this->brand_en_name, true);
        $criteria->compare('cate_id', $this->cate_id, true);
        $criteria->compare('description', $this->description, true);
        $criteria->compare('image', $this->image, true);
        $criteria->compare('is_recommend', $this->is_recommend);
        $criteria->compare('first_letter', $this->first_letter, true);
        $criteria->compare('if_use', $this->if_use, true);
        $criteria->compare('created', $this->created);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Brand the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
