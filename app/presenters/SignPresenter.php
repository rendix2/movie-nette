<?php

	namespace App\Presenters;

	use App\Forms;
	use App\Model\UserManager;
	use Nette;
	use Nette\Application\UI\Form;
	use Nette\Security\AuthenticationException;


	class SignPresenter extends BasePresenter {


		public function __construct ( UserManager $manager ) {

		}

		public function signInFormSuccess ( $form, $values ) {
			$data = [ 'user_name' => $values->user_name, 'user_password' => $values->user_password ];

			try {
				$this->getUser ()->login ( $values->user_name, $values->user_password );
				$this->redirect ( 'Movie:default' );
			} catch ( AuthenticationException $e ) {
				$form->addError ( 'Nesprávné přihlašovací jméno nebo heslo.' );
			}
		}


		/**
		 * Sign-in form factory.
		 * @return Form
		 */
		protected function createComponentSignInForm () {
			$form = new Form();

			$form->addText ( 'user_name', 'Uživatelské jméno:' );
			$form->addPassword ( 'user_password', 'Uživatelské heslo:' );
			$form->addSubmit ( 'submit', 'Přihlásit' );
			$form->addProtection ();

			$form->onSuccess[] = [ $this, 'signInFormSuccess' ];

			return $form;
		}


		/**
		 * Sign-up form factory.
		 * @return Form
		 */
		protected function createComponentSignUpForm () {
			$form = new Form();

			$form->addText ( 'user_name', 'Uživatelské jméno:' );
			$form->addPassword ( 'user_password', 'Uživatelské heslo:' );
			$form->addPassword ( 'user_password_check', 'Uživatelské heslo pro kontrolu:' );
			$form->addSubmit ( 'submit', 'Přihlásit' );
			$form->addProtection ();

			$form->onSuccess[] = [ $this, 'signInFormSuccess' ];

			return $form;
		}

		public function actionOut () {
			$this->getUser ()->logout ();
		}
	}
