<?php

/**
 * This is the model class for table "share".
 *
 * The followings are the available columns in table 'share':
 * @property integer $id
 * @property string $title
 * @property integer $cate_id
 * @property string $tag
 * @property string $content
 * @property string $image
 * @property string $page_keyword
 * @property string $page_description
 * @property integer $is_top
 * @property integer $status
 * @property integer $view_count
 * @property integer $created
 */
class Share extends CActiveRecord {

    /**
     * 取得分类
     * @return type
     */
    public function getCate() {
        $model = Yii::app()->db->createCommand()->select('id,name')->from('sharecate')->order('sorting desc')->queryAll();
        return CHtml::listData($model, 'id', 'name');
    }
    
    public function getAreaKv($area_id=''){
        $area = Area::model()->getAreaKv();
        $area[0] = '所有地区';
        ksort($area);
        if(key_exists($area_id, $area)){
            return $area[$area_id];
        }
        return $area;
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'share';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('content', 'required'),
            array('cate_id,area_id, is_top, status, view_count, created,author_id', 'numerical', 'integerOnly' => true),
            array('title, image, page_keyword', 'length', 'max' => 128),
            array('tag, page_description', 'length', 'max' => 512),
            array('title','required'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, title, cate_id,area_id, tag, content, image, page_keyword, page_description, is_top, status, view_count, created', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'cate' => array(self::BELONGS_TO,'Sharecate','cate_id'),
            'user' => array(self::BELONGS_TO,'User','author_id'),
            'area' => array(self::BELONGS_TO,'Area','area_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'title' => '信息标题',
            'cate_id' => '信息类别',
            'tag' => '信息标签',
            'content' => '信息内容',
            'image' => '信息图片',
            'page_keyword' => '页面关键词',
            'page_description' => '页面描述',
            'is_top' => '是否置顶',
            'status' => '是否验证',
            'view_count' => '浏览次数',
            'author_id' => '作者',
            'created' => '创建时间',
            'area_id' => '所属地区',
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
        $criteria->compare('title', $this->title, true);
        $criteria->compare('cate_id', $this->cate_id);
        $criteria->compare('tag', $this->tag, true);
        $criteria->compare('content', $this->content, true);
        $criteria->compare('image', $this->image, true);
        $criteria->compare('page_keyword', $this->page_keyword, true);
        $criteria->compare('page_description', $this->page_description, true);
        $criteria->compare('is_top', $this->is_top);
        $criteria->compare('status', $this->status);
        $criteria->compare('view_count', $this->view_count);
        $criteria->compare('author_id', $this->author_id);
        $criteria->compare('created', $this->created);
        $criteria->compare('area_id', $this->area_id);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Share the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
