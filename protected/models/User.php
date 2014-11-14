<?php

/**
 * This is the model class for table "user".
 *
 * The followings are the available columns in table 'user':
 * @property integer $id
 * @property string $username
 * @property string $real_name
 * @property string $password
 * @property integer $gender
 * @property string $tel
 * @property string $msn
 * @property string $email
 * @property string $qq
 * @property string $facebook
 * @property string $address
 * @property integer $last_login_time
 * @property integer $login_count
 * @property string $avatar
 * @property string $area_code
 * @property string $type
 * @property integer $int
 */
class User extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'user';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('gender, last_login_time, login_count, int', 'numerical', 'integerOnly'=>true),
			array('username, real_name, password, tel, area_code', 'length', 'max'=>32),
			array('msn, email, facebook', 'length', 'max'=>64),
			array('qq', 'length', 'max'=>16),
			array('address', 'length', 'max'=>512),
			array('avatar', 'length', 'max'=>128),
			array('type', 'length', 'max'=>50),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, username, real_name, password, gender, tel, msn, email, qq, facebook, address, last_login_time, login_count, avatar, area_code, type, int', 'safe', 'on'=>'search'),
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
			'real_name' => 'Real Name',
			'password' => 'Password',
			'gender' => 'Gender',
			'tel' => 'Tel',
			'msn' => 'Msn',
			'email' => 'Email',
			'qq' => 'Qq',
			'facebook' => 'Facebook',
			'address' => 'Address',
			'last_login_time' => 'Last Login Time',
			'login_count' => 'Login Count',
			'avatar' => 'Avatar',
			'area_code' => 'Area Code',
			'type' => 'Type',
			'int' => 'Int',
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
		$criteria->compare('real_name',$this->real_name,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('gender',$this->gender);
		$criteria->compare('tel',$this->tel,true);
		$criteria->compare('msn',$this->msn,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('qq',$this->qq,true);
		$criteria->compare('facebook',$this->facebook,true);
		$criteria->compare('address',$this->address,true);
		$criteria->compare('last_login_time',$this->last_login_time);
		$criteria->compare('login_count',$this->login_count);
		$criteria->compare('avatar',$this->avatar,true);
		$criteria->compare('area_code',$this->area_code,true);
		$criteria->compare('type',$this->type,true);
		$criteria->compare('int',$this->int);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return User the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
