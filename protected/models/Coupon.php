<?php

/**
 * This is the model class for table "coupon".
 *
 * The followings are the available columns in table 'coupon':
 * @property integer $id
 * @property string $coupon_name
 * @property integer $seller_id
 * @property integer $is_recommend
 * @property string $image
 * @property string $coupon_code
 * @property integer $start_time
 * @property integer $expire_time
 * @property integer $download_count
 * @property integer $favorite_count
 * @property integer $if_use
 * @property integer $created
 */
class Coupon extends CActiveRecord {

    private $_coupon;

    public function getCoupon() {
        $criteria = new CDbCriteria();
        $criteria->compare('if_use', 1);
        $coupon = $this->findAll($criteria);
        $this->_coupon = $coupon;
        return $coupon;
    }
    /**
     * 操作BcBrandRelation表
     * @param type $coupon_id
     * @param type $brand_ids
     * @return type
     */
    public function saveCouponBrandRelation($coupon_id, $brand_ids) {
        if (!$coupon_id) {
            return UtilD::formatReturn(0, 'coupon_id有误');
        }
        $criteria = new CDbCriteria();
        $criteria->compare('coupon_id', $coupon_id);
        $model = CouponbrandRelation::model()->findAll($criteria);
        if ($model) {
            $rs = CouponbrandRelation::model()->deleteAll($criteria);
            if (!$rs)
                return UtilD::formatReturn(0, '删除数据错误！');
        }
        if ($brand_ids) {
            $sql = "insert into couponbrand_relation (coupon_id,brand_id) values";
            foreach ($brand_ids as $brand_id) {
                $sql .= "({$coupon_id},{$brand_id}),";
            }
            $sql = rtrim($sql, ',');
            $rs = Yii::app()->db->createCommand($sql)->query();
            if (!$rs)
                return UtilD::formatReturn(0, '添加数据错误');
        }
        return UtilD::formatReturn(1, '操作成功！');
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'coupon';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('seller_id,city_id,bc_id,outlets_id, is_recommend, start_time, expire_time, download_count, favorite_count, if_use, created', 'numerical', 'integerOnly' => true),
            array('image', 'length', 'max' => 128),
            array('coupon_name', 'length', 'max' => 512),
            array('coupon_code', 'length', 'max' => 64),
            array('coupon_name','required'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, coupon_name, seller_id,city_id,bc_id,outlets_id, is_recommend, image, coupon_code, start_time, expire_time, download_count, favorite_count, if_use, created', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'seller' => array(self::BELONGS_TO,'Seller','seller_id'),
            'bc' => array(self::BELONGS_TO,'BusinessCircle','bc_id'),
            'outlets' => array(self::BELONGS_TO,'Outlets','outlets_id'),
            'city' => array(self::BELONGS_TO,'City','city_id'),
            'brands' => array(self::MANY_MANY,'Brand','couponbrand_relation(coupon_id,brand_id)'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'coupon_name' => '优惠内容',
            'seller_id' => '所属商家',
            'is_recommend' => 'Is Recommend',
            'image' => '优惠图片',
            'coupon_code' => 'Coupon Code',
            'start_time' => '开始日期',
            'expire_time' => '截止日期',
            'download_count' => 'Download Count',
            'favorite_count' => 'Favorite Count',
            'if_use' => '是否使用',
            'city_id' => '所属城市',
            'bc_id' => '所属商圈',
            'outlets_id' => '所属outlets',
            'created' => 'Created',
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
        $criteria->compare('coupon_name', $this->coupon_name, true);
        $criteria->compare('seller_id', $this->seller_id);
        $criteria->compare('is_recommend', $this->is_recommend);
        $criteria->compare('image', $this->image, true);
        $criteria->compare('coupon_code', $this->coupon_code, true);
        $criteria->compare('start_time', $this->start_time);
        $criteria->compare('expire_time', $this->expire_time);
        $criteria->compare('download_count', $this->download_count);
        $criteria->compare('favorite_count', $this->favorite_count);
        $criteria->compare('if_use', $this->if_use);
        $criteria->compare('city_id', $this->city_id);
        $criteria->compare('bc_id', $this->bc_id);
        $criteria->compare('outlets_id', $this->outlets_id);
        $criteria->compare('created', $this->created);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Coupon the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
