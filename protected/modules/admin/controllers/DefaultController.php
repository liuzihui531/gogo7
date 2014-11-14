<?php

class DefaultController extends Controller
{
	public function actionIndex()
	{
                echo 11;
		$this->render('index');
	}
}