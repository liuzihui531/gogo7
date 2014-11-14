<?php

/**
 * This is the model class for table "city".
 *
 * The followings are the available columns in table 'city':
 * @property integer $id
 * @property string $city_name
 * @property string $city_en_name
 * @property integer $area_id
 * @property integer $sorting
 * @property string $weather_url
 * @property string $description
 * @property string $image
 * @property string $html_name
 * @property integer $created
 */
class City extends CActiveRecord {

    public $brand_id;
    private $_city;
    public static $memKey = 'city';

    public function getCity() {
        $city = Yii::app()->cache->get(self::$memKey);
        if (!$city) {
            $city = City::model()->findAll();
            Yii::app()->cache->delete('city');
            Yii::app()->cache->add('city', UtilD::object2array($allCity));
        }
        $this->_city = $city;
        return $city;
    }

    public function getCityKv($key = "") {
        $city = $this->getCity();
        $return = array();
        foreach ($city as $v) {
            if($v['if_use'] == 1){
                $return[$v['id']] = $v['city_name'];
            }
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
        return 'city';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('area_id, sorting, created,if_use', 'numerical', 'integerOnly' => true),
            array('city_name,city_en_name', 'required'),
            array('brand_id', 'safe'),
            array('city_name,city_en_name', 'unique'),
            array('city_name, city_en_name, image', 'length', 'max' => 128),
            array('weather_url, description', 'length', 'max' => 256),
            array('html_name', 'length', 'max' => 64),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, city_name,if_use, city_en_name, area_id, sorting, weather_url, description, image, html_name, created', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'area' => array(self::BELONGS_TO, 'Area', 'area_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'city_name' => '城市名称',
            'city_en_name' => '城市英文名称',
            'area_id' => '地区',
            'sorting' => '排序编号',
            'weather_url' => '天气URL',
            'description' => '描述信息',
            'image' => '图片',
            'html_name' => '生成静态页名称',
            'brand_id' => '品牌id串',
            'created' => '创建时间',
            'if_use' => '是否使用'
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
        $criteria->compare('city_name', $this->city_name, true);
        $criteria->compare('city_en_name', $this->city_en_name, true);
        $criteria->compare('area_id', $this->area_id);
        $criteria->compare('sorting', $this->sorting);
        $criteria->compare('weather_url', $this->weather_url, true);
        $criteria->compare('description', $this->description, true);
        $criteria->compare('image', $this->image, true);
        $criteria->compare('html_name', $this->html_name, true);
        $criteria->compare('if_use', $this->if_use);
        $criteria->compare('created', $this->created);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return City the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
