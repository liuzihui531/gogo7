<?php

/**
 * This is the model class for table "shop_seller".
 *
 * The followings are the available columns in table 'shop_seller':
 * @property integer $id
 * @property string $seller_name
 * @property string $seller_en_name
 * @property string $username
 * @property string $password
 * @property integer $created
 */
class ShopSeller extends CActiveRecord {

    private $_shop_seller;
    public static $memKey = 'shop_seller';
    public function getCity() {
        $shop_seller = Yii::app()->cache->get(self::$memKey);
        if (!$shop_seller) {
            $shop_seller = ShopSeller::model()->findAll();
            Yii::app()->cache->delete(self::$memKey);
            Yii::app()->cache->add(self::$memKey, UtilD::object2array($allCity));
        }
        $this->_shop_seller = $shop_seller;
        return $shop_seller;
    }

    public function getSellerKv($key = "") {
        $city = $this->getCity();
        $return = array();
        foreach ($city as $v) {
             $return[$v['id']] = $v['seller_name'];
        }
        if (key_exists($key, $return)) {
            return $return[$key];
        }
        return $return;
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'shop_seller';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('created', 'numerical', 'integerOnly' => true),
            array('seller_name', 'length', 'max' => 64),
            array('seller_name', 'required'),
            array('seller_en_name', 'length', 'max' => 128),
            array('username, password', 'length', 'max' => 50),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, seller_name, seller_en_name, username, password, created', 'safe', 'on' => 'search'),
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
            'seller_name' => '商家名称',
            'seller_en_name' => '商家英文名称',
            'username' => '用户名',
            'password' => '密码',
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
        $criteria->compare('seller_name', $this->seller_name, true);
        $criteria->compare('seller_en_name', $this->seller_en_name, true);
        $criteria->compare('username', $this->username, true);
        $criteria->compare('password', $this->password, true);
        $criteria->compare('created', $this->created);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return ShopSeller the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
