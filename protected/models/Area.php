<?php

/**
 * This is the model class for table "area".
 *
 * The followings are the available columns in table 'area':
 * @property integer $id
 * @property string $name
 * @property integer $sorting
 * @property integer $if_show
 * @property string $image
 * @property integer $created
 */
class Area extends CActiveRecord {

    public function getIfShow($key = '') {
        $return = array(
            '0' => '否',
            '1' => '是',
        );
        if (key_exists($key, $return)) {
            return $return[$key];
        }
        return $return;
    }
    private $_area;
    public static $memKey='area';
    public function getArea() {
        $area = Yii::app()->cache->get(self::$memKey);
        if (!$area) {
            $area = Area::model()->findAll();
            Yii::app()->cache->delete(self::$memKey);
            Yii::app()->cache->add(self::$memKey, UtilD::object2array($area));
        }
        $this->_area = $area;
        return $area;
    }

    public function getAreaKv($key='') {
        //$model = Yii::app()->db->createCommand()->select('id,name')->from('area')->order('sorting desc')->queryAll();
        //return CHtml::listData($model, 'id', 'name');
        $area = $this->getArea();
        $return = array();
        foreach ($area as $v) {
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
        return 'area';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('sorting, if_show, created', 'numerical', 'integerOnly' => true),
            array('name', 'length', 'max' => 32),
            array('name', 'required', 'message' => '名称不能为空！'),
            array('image', 'length', 'max' => 128),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, name, sorting, if_show, image, created', 'safe', 'on' => 'search'),
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
            'name' => '地区名称',
            'sorting' => '排序',
            'if_show' => '是否显示',
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
    public function search() {
        // @todo Please modify the following code to remove attributes that should not be searched.

        $criteria = new CDbCriteria;

        $criteria->compare('id', $this->id);
        $criteria->compare('name', $this->name, true);
        $criteria->compare('sorting', $this->sorting);
        $criteria->compare('if_show', $this->if_show);
        $criteria->compare('image', $this->image, true);
        $criteria->compare('created', $this->created);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Area the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
