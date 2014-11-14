<?php

/**
 * This is the model class for table "singlepage".
 *
 * The followings are the available columns in table 'singlepage':
 * @property integer $id
 * @property integer $cate_id
 * @property string $title
 * @property string $content
 * @property integer $views
 * @property integer $sorting
 * @property string $update_by
 * @property integer $updated
 * @property string $create_by
 * @property integer $created
 */
class Singlepage extends CActiveRecord
{
        public function getCate($key=''){
            $return  = array(
                '0' => '网站',
                '1' => '微信工具',
            );
            if(key_exists($key, $return)){
                return $return[$key];
            }
            return $return;
        }
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'singlepage';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('cate_id, views, sorting, updated, created', 'numerical', 'integerOnly'=>true),
			array('title', 'length', 'max'=>128),
                        array('title','required'),
			array('update_by, create_by', 'length', 'max'=>32),
			array('content', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, cate_id, title, content, views, sorting, update_by, updated, create_by, created', 'safe', 'on'=>'search'),
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
			'cate_id' => '分类',
			'title' => '标题',
			'content' => '内容',
			'views' => 'Views',
			'sorting' => '排序',
			'update_by' => 'Update By',
			'updated' => 'Updated',
			'create_by' => 'Create By',
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
		$criteria->compare('cate_id',$this->cate_id);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('content',$this->content,true);
		$criteria->compare('views',$this->views);
		$criteria->compare('sorting',$this->sorting);
		$criteria->compare('update_by',$this->update_by,true);
		$criteria->compare('updated',$this->updated);
		$criteria->compare('create_by',$this->create_by,true);
		$criteria->compare('created',$this->created);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Singlepage the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
