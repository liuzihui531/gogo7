<?php

/**
 * This is the model class for table "ibijia".
 *
 * The followings are the available columns in table 'ibijia':
 * @property integer $id
 * @property string $name
 * @property integer $cate_id
 * @property string $us_price
 * @property string $european_price
 * @property string $hk_price
 * @property string $cn_price
 * @property integer $sorting
 * @property integer $status
 * @property integer $created
 */
class Ibijia extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'ibijia';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('cate_id, sorting, status', 'numerical', 'integerOnly'=>true),
			array('name', 'length', 'max'=>64),
                        array('name','required'),
			array('us_price, european_price, hk_price, cn_price', 'length', 'max'=>10),
                        array('us_price, european_price, hk_price, cn_price', 'numerical'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, name, cate_id, us_price, european_price, hk_price, cn_price, sorting, status, created', 'safe', 'on'=>'search'),
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
                    'cate' => array(self::BELONGS_TO,'Bijiacate','cate_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'name' => '产品名称',
			'cate_id' => '分类',
			'us_price' => '美国价格',
			'european_price' => '欧洲价格',
			'hk_price' => '香港价格',
			'cn_price' => '国内价格',
			'sorting' => '排序',
			'status' => '是否验证',
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
		$criteria->compare('name',$this->name,true);
		$criteria->compare('cate_id',$this->cate_id);
		$criteria->compare('us_price',$this->us_price,true);
		$criteria->compare('european_price',$this->european_price,true);
		$criteria->compare('hk_price',$this->hk_price,true);
		$criteria->compare('cn_price',$this->cn_price,true);
		$criteria->compare('sorting',$this->sorting);
		$criteria->compare('status',$this->status);
		$criteria->compare('created',$this->created);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Ibijia the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
