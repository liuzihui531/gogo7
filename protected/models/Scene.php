<?php

/**
 * This is the model class for table "scene".
 *
 * The followings are the available columns in table 'scene':
 * @property integer $id
 * @property string $scene_name
 * @property string $scene_en_name
 * @property integer $city_id
 * @property string $location
 * @property integer $sorting
 * @property string $description
 * @property string $image
 * @property integer $created
 */
class Scene extends CActiveRecord {

    private $_scene;
    public static $memKey = 'scene';

    public function getScene() {
        $scene = Yii::app()->cache->get(self::$memKey);
        if (!$scene) {
            $scene = $this->findAll();
            Yii::app()->cache->add(self::$memKey, UtilD::object2array($scene));
        }
        $this->_scene = $scene;
        return $scene;
    }

    public function getSceneName($model) {
        $return = '';
        if ($model) {
            foreach ($model as $k => $v) {
                $return .= $v->scene_name . ';';
            }
        }
        $return = rtrim($return, ';');
        return $return;
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'scene';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('city_id, sorting, created,if_use', 'numerical', 'integerOnly' => true),
            array('scene_name, scene_en_name', 'required'),
            array('scene_name, scene_en_name', 'unique'),
            array('scene_name, scene_en_name, location, image', 'length', 'max' => 128),
            array('description', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, scene_name, scene_en_name, city_id, location, sorting, description, image, created,if_use', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'city' => array(self::BELONGS_TO, 'City', 'city_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'scene_name' => '景点名称',
            'scene_en_name' => '景点英文名称',
            'city_id' => '所属城市',
            'location' => '经纬度',
            'sorting' => '排序编号',
            'description' => '描述信息',
            'image' => '图片',
            'created' => '创建时间',
            'if_use' => '是否启用',
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
        $criteria->compare('scene_name', $this->scene_name, true);
        $criteria->compare('scene_en_name', $this->scene_en_name, true);
        $criteria->compare('city_id', $this->city_id);
        $criteria->compare('location', $this->location, true);
        $criteria->compare('sorting', $this->sorting);
        $criteria->compare('description', $this->description, true);
        $criteria->compare('image', $this->image, true);
        $criteria->compare('created', $this->created);
        $criteria->compare('if_use', $this->if_use);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Scene the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
