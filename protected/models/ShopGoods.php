<?php

/**
 * This is the model class for table "shop_goods".
 *
 * The followings are the available columns in table 'shop_goods':
 * @property integer $id
 * @property string $title
 * @property string $goods_name
 * @property string $goods_en_name
 * @property string $en_title
 * @property integer $cate_id
 * @property integer $seller_id
 * @property string $price
 * @property string $image
 * @property integer $sorting
 * @property integer $is_top
 * @property string $description
 * @property integer $goods_count
 * @property integer $start_time
 * @property integer $expire_time
 * @property integer $is_coupon
 * @property integer $created
 */
class ShopGoods extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'shop_goods';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('cate_id, seller_id, sorting, is_top, goods_count, is_coupon, created', 'numerical', 'integerOnly'=>true),
			array('title, goods_name, goods_en_name, en_title', 'length', 'max'=>256),
                        array('start_time,expire_time','safe'),
			array('price', 'length', 'max'=>10),
                        array('goods_name','required'),
			array('image', 'length', 'max'=>128),
			array('description', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, title, goods_name, goods_en_name, en_title, cate_id, seller_id, price, image, sorting, is_top, description, goods_count, start_time, expire_time, is_coupon, created', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'title' => '商品标题',
			'goods_name' => '商品名称',
			'goods_en_name' => '商品英文名称',
			'en_title' => '商品英文标题',
			'cate_id' => '分类',
			'seller_id' => '商家',
			'price' => '商品价格',
			'image' => '图片',
			'sorting' => '排序',
			'is_top' => '是否置顶',
			'description' => '描述',
			'goods_count' => '商品数量',
			'start_time' => '开始时间',
			'expire_time' => '过期时间',
			'is_coupon' => '是否电子券',
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
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('goods_name',$this->goods_name,true);
		$criteria->compare('goods_en_name',$this->goods_en_name,true);
		$criteria->compare('en_title',$this->en_title,true);
		$criteria->compare('cate_id',$this->cate_id);
		$criteria->compare('seller_id',$this->seller_id);
		$criteria->compare('price',$this->price,true);
		$criteria->compare('image',$this->image,true);
		$criteria->compare('sorting',$this->sorting);
		$criteria->compare('is_top',$this->is_top);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('goods_count',$this->goods_count);
		$criteria->compare('start_time',$this->start_time);
		$criteria->compare('expire_time',$this->expire_time);
		$criteria->compare('is_coupon',$this->is_coupon);
		$criteria->compare('created',$this->created);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return ShopGoods the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
