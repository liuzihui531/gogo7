<?php

/**
 * This is the model class for table "admin".
 *
 * The followings are the available columns in table 'admin':
 * @property integer $id
 * @property string $username
 * @property string $password
 * @property integer $status
 * @property integer $last_login
 * @property string $last_ip
 * @property integer $role_id
 * @property integer $login_num
 * @property string $create_by
 * @property integer $created
 */
class Admin extends CActiveRecord
{
        public $password2;
        public function getStatus($key=''){
            $return = array(
                '0' => '禁用',
                '1' => '启用',
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
		return 'admin';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('status, last_login, role_id, login_num, created', 'numerical', 'integerOnly'=>true),
			array('username, create_by', 'length', 'max'=>16),
                        array('username','required','on'=>'create'),
                        array('password','required','on'=>'create'),
                        array('password2','required','on'=>'create'),
                        array('password2', 'compare', 'compareAttribute' => 'password', 'message' => '两次密码不一致'),
			array('password, last_ip', 'length', 'max'=>32),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, username, password, status, last_login, last_ip, role_id, login_num, create_by, created', 'safe', 'on'=>'search'),
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
			'username' => 'Username',
			'password' => 'Password',
			'status' => 'Status',
			'last_login' => 'Last Login',
			'last_ip' => 'Last Ip',
			'role_id' => 'Role',
			'login_num' => 'Login Num',
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
		$criteria->compare('username',$this->username,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('status',$this->status);
		$criteria->compare('last_login',$this->last_login);
		$criteria->compare('last_ip',$this->last_ip,true);
		$criteria->compare('role_id',$this->role_id);
		$criteria->compare('login_num',$this->login_num);
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
	 * @return Admin the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
