<?php

/**
 * This is the model class for table "shop_order".
 *
 * The followings are the available columns in table 'shop_order':
 * @property integer $id
 * @property integer $goods_id
 * @property string $order_sn
 * @property string $out_trade_no
 * @property integer $user_id
 * @property string $goods_name
 * @property string $goods_en_name
 * @property string $goods_title
 * @property string $goods_en_title
 * @property integer $seller_id
 * @property integer $is_coupon
 * @property string $addr_name
 * @property string $address
 * @property string $addr_tel
 * @property integer $status
 * @property string $goods_price
 * @property integer $goods_count
 * @property string $total_price
 * @property string $coupon_sn
 * @property integer $start_time
 * @property integer $buy_time
 * @property integer $expire_time
 * @property integer $active_time
 * @property integer $created
 */
class ShopOrder extends CActiveRecord {

    /**
     * 订单状态 
     * @param type $state
     * @return string
     */
    public function get_order_state($key = "") {
        $return = array(
            '0' => '未付款',
            '1' => '待发货',
            '2' => '已发货',
            '3' => '待使用',
            '4' => '交易成功'
        );
        if (key_exists($key, $return)) {
            return $return[$key];
        }
        return $return;
    }

    public function get_coupon_order_state() {
        $return = array(
            '0' => '未付款',
            '3' => '未使用',
            '4' => '交易成功',
        );
        return $return;
    }

    public function get_not_coupon_order_state() {
        $return = array(
            '0' => '未付款',
            '1' => '待发货',
            '2' => '已发货',
            '4' => '交易成功',
        );
        return $return;
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'shop_order';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('goods_id, user_id, seller_id, is_coupon, status, goods_count, start_time, buy_time, expire_time, active_time, created', 'numerical', 'integerOnly' => true),
            array('order_sn, out_trade_no, coupon_sn', 'length', 'max' => 50),
            array('goods_name, goods_en_name, goods_title, goods_en_title, addr_name, addr_tel', 'length', 'max' => 200),
            array('address', 'length', 'max' => 100),
            array('goods_price, total_price', 'length', 'max' => 10),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, goods_id, order_sn, out_trade_no, user_id, goods_name, goods_en_name, goods_title, goods_en_title, seller_id, is_coupon, addr_name, address, addr_tel, status, goods_price, goods_count, total_price, coupon_sn, start_time, buy_time, expire_time, active_time, created', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'user' => array(self::BELONGS_TO, 'User', 'user_id'),
            'shop_seller' => array(self::BELONGS_TO, 'ShopSeller', 'seller_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'goods_id' => 'Goods',
            'order_sn' => 'Order Sn',
            'out_trade_no' => 'Out Trade No',
            'user_id' => 'User',
            'goods_name' => 'Goods Name',
            'goods_en_name' => 'Goods En Name',
            'goods_title' => 'Goods Title',
            'goods_en_title' => 'Goods En Title',
            'seller_id' => 'Seller',
            'is_coupon' => 'Is Coupon',
            'addr_name' => 'Addr Name',
            'address' => 'Address',
            'addr_tel' => 'Addr Tel',
            'status' => 'Status',
            'goods_price' => 'Goods Price',
            'goods_count' => 'Goods Count',
            'total_price' => 'Total Price',
            'coupon_sn' => 'Coupon Sn',
            'start_time' => 'Start Time',
            'buy_time' => 'Buy Time',
            'expire_time' => 'Expire Time',
            'active_time' => 'Active Time',
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
        $criteria->compare('goods_id', $this->goods_id);
        $criteria->compare('order_sn', $this->order_sn, true);
        $criteria->compare('out_trade_no', $this->out_trade_no, true);
        $criteria->compare('user_id', $this->user_id);
        $criteria->compare('goods_name', $this->goods_name, true);
        $criteria->compare('goods_en_name', $this->goods_en_name, true);
        $criteria->compare('goods_title', $this->goods_title, true);
        $criteria->compare('goods_en_title', $this->goods_en_title, true);
        $criteria->compare('seller_id', $this->seller_id);
        $criteria->compare('is_coupon', $this->is_coupon);
        $criteria->compare('addr_name', $this->addr_name, true);
        $criteria->compare('address', $this->address, true);
        $criteria->compare('addr_tel', $this->addr_tel, true);
        $criteria->compare('status', $this->status);
        $criteria->compare('goods_price', $this->goods_price, true);
        $criteria->compare('goods_count', $this->goods_count);
        $criteria->compare('total_price', $this->total_price, true);
        $criteria->compare('coupon_sn', $this->coupon_sn, true);
        $criteria->compare('start_time', $this->start_time);
        $criteria->compare('buy_time', $this->buy_time);
        $criteria->compare('expire_time', $this->expire_time);
        $criteria->compare('active_time', $this->active_time);
        $criteria->compare('created', $this->created);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return ShopOrder the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
