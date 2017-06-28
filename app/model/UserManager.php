<?php

namespace App\Model;

use Nette;

class UserManager extends Tables
{
	public function add($data)
	{
		\dibi::insert(self::USERS_TABLE, $data)->execute();
		return \dibi::getInsertId();
	}

	public function update($id, $data){
		return \dibi::update(self::USERS_TABLE, $data)->where('user_id = %i', $id)->execute();
	}

	public function checkUsername($username){
		return \dibi::select('1')->from(self::USERS_TABLE)->where('user_name = %s', $username)->fetchSingle();
	}
}
