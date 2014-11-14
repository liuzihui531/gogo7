<?php

/**
 * This is the model class for table "app_image".
 *
 * The followings are the available columns in table 'app_image':
 * @property integer $id
 * @property string $image
 * @property integer $seller_id
 * @property integer $sorting
 * @property integer $city_id
 * @property integer $created
 */
class AppImage extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'app_image';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('seller_id, sorting, city_id, created', 'numerical', 'integerOnly'=>true),
			array('image', 'length', 'max'=>128),
                        array('city_id','required'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, image, seller_id, sorting, city_id, created', 'safe', 'on'=>'search'),
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
                    'city'=>array(self::BELONGS_TO,'City','city_id'),
                    'seller'=>array(self::BELONGS_TO,'Seller','seller_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'image' => '广告图片',
			'seller_id' => '商家名称',
			'sorting' => '排序',
			'city_id' => '所属城市',
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
		$criteria->compare('image',$this->image,true);
		$criteria->compare('seller_id',$this->seller_id);
		$criteria->compare('sorting',$this->sorting);
		$criteria->compare('city_id',$this->city_id);
		$criteria->compare('created',$this->created);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return AppImage the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
