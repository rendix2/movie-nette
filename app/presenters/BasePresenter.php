<?php

namespace App\Presenters;

use Nette;
use App\Model;
use Nette\Application\UI\Presenter;

/**
 * Base presenter for all application presenters.
 */
abstract class BasePresenter extends Presenter
{

	public function __construct () {
		parent::__construct();
	}

	public static function generateHash(){
		return md5 ( uniqid ( mt_rand (), TRUE ) );
	}
}
