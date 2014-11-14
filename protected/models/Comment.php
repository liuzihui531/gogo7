<?php

/**
 * This is the model class for table "comment".
 *
 * The followings are the available columns in table 'comment':
 * @property integer $id
 * @property string $type
 * @property integer $type_id
 * @property string $content
 * @property integer $user_id
 * @property integer $created
 */
class Comment extends CActiveRecord {

    public function getType($type = '') {
        $return = array(
            'bc' => '商圈',
            'outlets' => 'outlets',
            'share' => '购物心得',
        );
        if (key_exists($type, $return)) {
            return $return[$type];
        }
        return $return;
    }
    /**
     * 取得类型对应的名称
     * @param type $type
     * @param type $model
     * @return type
     */
    public function getTypeName($type, $model) {
        if ($type == 'bc') {
            return $model->bc->bc_name;
        } elseif ($type == 'outlets') {
            return $model->outlets->outlets_name;
        } elseif ($type == 'share') {
            return $model->share->title;
        }
    }
    public function getUser($id,$model){
        if($id == 0){
            return '匿名';
        }else{
            return $model->user->username;
        }
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'comment';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('type', 'required'),
            array('type_id, user_id, created', 'numerical', 'integerOnly' => true),
            array('type', 'length', 'max' => 7),
            array('content', 'length', 'max' => 512),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, type, type_id, content, user_id, created', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'user' => array(self::BELONGS_TO,'User','user_id'),
            'bc' => array(self::BELONGS_TO,'BusinessCircle','type_id'),
            'outlets' => array(self::BELONGS_TO,'Outlets','type_id'),
            'share' => array(self::BELONGS_TO,'Share','type_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'type' => 'Type',
            'type_id' => 'Type',
            'content' => 'Content',
            'user_id' => 'User',
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
        $criteria->compare('type', $this->type, true);
        $criteria->compare('type_id', $this->type_id);
        $criteria->compare('content', $this->content, true);
        $criteria->compare('user_id', $this->user_id);
        $criteria->compare('created', $this->created);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Comment the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
