<?php

	namespace App\Presenters;

	use App\Model;
	use Nette;


	class HomepagePresenter extends BasePresenter {
		public function renderDefault () {
			$this->template->anyVariable = 'any value';
		}
	}
