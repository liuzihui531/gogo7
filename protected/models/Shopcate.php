<?php

/**
 * This is the model class for table "shopcate".
 *
 * The followings are the available columns in table 'shopcate':
 * @property integer $id
 * @property string $name
 * @property integer $pid
 * @property integer $sorting
 * @property integer $created
 */
class Shopcate extends CActiveRecord {

    public function getCate() {
        $model = Yii::app()->db->createCommand()->select('id,name')->from('sellercate')->order('sorting desc')->queryAll();
        return CHtml::listData($model, 'id', 'name');
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'shopcate';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('pid, sorting, created', 'numerical', 'integerOnly' => true),
            array('name', 'length', 'max' => 64),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, name, pid, sorting, created', 'safe', 'on' => 'search'),
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
            'name' => '分类名称',
            'pid' => 'Pid',
            'sorting' => '排序',
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
        $criteria->compare('pid', $this->pid);
        $criteria->compare('sorting', $this->sorting);
        $criteria->compare('created', $this->created);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Shopcate the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
