<?php

/**
 * This is the model class for table "setting".
 *
 * The followings are the available columns in table 'setting':
 * @property string $name
 * @property string $value
 */
class Setting extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'setting';
    }
    public static $memKey = 'setting';
    public function saveSetting($data) {
        $transaction = Yii::app()->db->beginTransaction();
        try {
            foreach ($data as $k => $v) {
                $model = $this->findByPk($k);
                $model->value=$v;
                if(!$model->save())
                    throw new Exception('保存失败！');
            }
            $memKey = self::$memKey;
            $settingModel = $this->findAll();
            $settingArr = UtilD::object2array($settingModel);
            $setting = array();
            if($settingArr){
                foreach ($settingArr as $k=>$v){
                    $setting[$v['name']]=$v['value'];
                }
            }
            Yii::app()->cache->set($memKey, $setting);
            $transaction->commit();   
            return UtilD::formatReturn(1, '保存成功！');
        } catch (Exception $ex) {
            $transaction->rollback();
            return formatReturn(0, $ex->getMessage());
        }
    }
    public function getSetting($key=""){
        $memKey = self::$memKey;
        $setting = Yii::app()->cache->get($memKey);
        if(!$setting){
            $settingModel = $this->findAll();
            $settingArr = UtilD::object2array($settingModel);
            $setting = array();
            if($settingArr){
                foreach ($settingArr as $k=>$v){
                    $setting[$v['name']]=$v['value'];
                }
            }
            Yii::app()->cache->set($memKey, $setting);
        }
        if($key===""){
            return $setting;
        }else{
            return $setting[$key];
        }
    }
    
    public function keyValue($name){
        $attr = array(
            'title' => array('value'=>'网站标题','type'=>'text'),
            'keyword' => array('value'=>'网站关键字','type'=>'text'),
            'description' => array('value'=>'网站描述','type'=>'textarea'),
            'bottom_info' => array('value'=>'底部信息','type'=>'textarea'),
        );
        $return = "";
        if(key_exists($name, $attr)){
            $return = $attr[$name];
        }
        return $return;
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('name', 'length', 'max' => 32),
            array('value', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('name, value', 'safe', 'on' => 'search'),
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
            'name' => 'Name',
            'value' => 'Value',
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

        $criteria->compare('name', $this->name, true);
        $criteria->compare('value', $this->value, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Setting the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
