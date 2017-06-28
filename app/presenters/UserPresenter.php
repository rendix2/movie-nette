<?php
	/**
	 * Created by PhpStorm.
	 * User: Tomáš
	 * Date: 22. 6. 2017
	 * Time: 0:13
	 */

	namespace App\Presenters;

	use App\Model\UserManager;

	class UserPresenter extends BasePresenter {
		private $userManager;

		public function __construct ( UserManager $userManager ) {
			parent::__construct();
			$this->userManager = $userManager;
		}

		public function renderLogIn () {

		}

		public function actionLogOut () {

		}

		public function renderRegister () {

		}

		public function renderChangePassword () {

		}

		public function renderChangeMail () {

		}

		private function actionActivate ( $code ) {

		}

		private function sendActivationMail () {

		}

		private function validateEmail($email){
			return '';
		}

		private function generatePasswordHash($password){
			return hash('sha512', $password);
		}

	}