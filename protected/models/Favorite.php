<?php

/**
 * This is the model class for table "favorite".
 *
 * The followings are the available columns in table 'favorite':
 * @property integer $id
 * @property integer $user_id
 * @property string $type
 * @property integer $type_id
 * @property integer $created
 */
class Favorite extends CActiveRecord
{
        public function getType($key = "",$val=""){
            $return = array(
                'bc' => '商圈',
                'seller' => '商家',
                'share' => '分享',
                'outlets' => 'outlets',
                'coupon' => '优惠券',
            );
            if($key !== ""){
                return $return[$key];
            }elseif($val !== ""){
                return array_search($val, $return);
            }
            return $return;
        }
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'favorite';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('user_id, type', 'required'),
			array('user_id, type_id, created', 'numerical', 'integerOnly'=>true),
			array('type', 'length', 'max'=>7),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, user_id, type, type_id, created', 'safe', 'on'=>'search'),
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
                    'bc' => array(self::BELONGS_TO,'BusinessCircle','type_id','select'=>'bc_name,image,shopping_index,introduce'),
                    'seller' => array(self::BELONGS_TO,'Seller','type_id','select'=>'seller_name,big_image,shopping_index,introduce'),
                    'share' => array(self::BELONGS_TO,'Share','type_id','select'=>'title as sharing_name,image,shopping_index'),
                    'outlets' => array(self::BELONGS_TO,'Outlets','type_id','select'=>'outlets_name,image,shopping_index,introduce'),
                    'coupon' => array(self::BELONGS_TO,'Coupon','type_id','select'=>'coupon_name,image'),
                    'user' => array(self::BELONGS_TO,'User','user_id','select'=>'username'),
                    
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'user_id' => 'User',
			'type' => 'Type',
			'type_id' => 'Type',
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
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('user_id',$this->user_id);
		$criteria->compare('type',$this->type,true);
		$criteria->compare('type_id',$this->type_id);
		$criteria->compare('created',$this->created);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Favorite the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
