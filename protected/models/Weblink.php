<?php

/**
 * This is the model class for table "weblink".
 *
 * The followings are the available columns in table 'weblink':
 * @property integer $id
 * @property string $title
 * @property string $url
 * @property integer $type_id
 * @property integer $sorting
 * @property integer $city_id
 * @property string $image
 * @property integer $created
 */
class Weblink extends CActiveRecord
{
    public function getType($type_id){
        $return = array(
            '1' => '商家链接',
            '2' => '首页banner',
            '3' => '首页通栏banner',
        );
        if(key_exists($type_id, $return)){
            return $return[$type_id];
        }
        return '其它';
    }

    /**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'weblink';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('type_id, sorting, city_id, created', 'numerical', 'integerOnly'=>true),
			array('title', 'length', 'max'=>64),
			array('url, image', 'length', 'max'=>128),
                        array('title','required'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, title, url, type_id, sorting, city_id, image, created', 'safe', 'on'=>'search'),
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
                    'city' => array(self::BELONGS_TO,'City','city_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'title' => '标题',
			'url' => 'Url',
			'type_id' => '类型',
			'sorting' => '排序',
			'city_id' => '城市',
			'image' => '图片',
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
		$criteria->compare('url',$this->url,true);
		$criteria->compare('type_id',$this->type_id);
		$criteria->compare('sorting',$this->sorting);
		$criteria->compare('city_id',$this->city_id);
		$criteria->compare('image',$this->image,true);
		$criteria->compare('created',$this->created);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Weblink the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
