<?php

/**
 * This is the model class for table "bijiacate".
 *
 * The followings are the available columns in table 'bijiacate':
 * @property integer $id
 * @property integer $brand_id
 * @property string $name
 * @property integer $created
 */
class Bijiacate extends CActiveRecord {

    private $_bijiacate;
    public static $memKey = 'bijiacate';

    public function getCate() {
        $bijiacate = Yii::app()->cache->get(self::$memKey);
        if (!$bijiacate) {
            $bijiacate = Bijiacate::model()->findAll();
            Yii::app()->cache->delete(self::$memKey);
            Yii::app()->cache->add(self::$memKey, UtilD::object2array($bijiacate));
        }
        $this->_bijiacate = $bijiacate;
        return $bijiacate;
    }

    public function getCateKv($key = '') {
        //$model = Yii::app()->db->createCommand()->select('id,name')->from('area')->order('sorting desc')->queryAll();
        //return CHtml::listData($model, 'id', 'name');
        $bijiacate = $this->getCate();
        $return = array();
        foreach ($bijiacate as $v) {
            $return[$v['id']] = $v['name'];
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
        return 'bijiacate';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('brand_id, created', 'numerical', 'integerOnly' => true),
            array('name', 'length', 'max' => 64),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, brand_id, name, created', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'brand' => array(self::BELONGS_TO, 'Brand', 'brand_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'brand_id' => '品牌',
            'name' => '分类名称',
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
        $criteria->compare('brand_id', $this->brand_id);
        $criteria->compare('name', $this->name, true);
        $criteria->compare('created', $this->created);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Bijiacate the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
