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
			parent::__construct ();
			$this->userManager = $userManager;
		}

		private function actionActivate ( $code ) {

		}

		public function actionLogOut () {

		}

		private function generatePasswordHash ( $password ) {
			return hash ( 'sha512', $password );
		}

		public function renderChangeMail () {

		}

		public function renderChangePassword () {

		}

		public function renderLogIn () {

		}

		public function renderRegister () {

		}

		private function sendActivationMail () {

		}

		private function validateEmail ( $email ) {
			return '';
		}

	}