<?php

	namespace App;

	use App\Model\Tables;
	use Nette\Security\AuthenticationException;
	use Nette\Security\IAuthenticator;
	use Nette\Security\Identity;
	use Tracy\Debugger;

	class Authenticator implements IAuthenticator {

		/**
		 * @param array $credentials
		 * @return Identity
		 * @throws AuthenticationException
		 */
		public function authenticate ( array $credentials ) {
			list($username, $password) = $credentials;

			$row = \dibi::select ( 'user_id, user_name, user_password, user_role_id' )->from( Tables::USERS_TABLE )
			->where
			( 'user_name = %s', $username )
			            ->fetch ();

			if ( !$row ) {
				throw new AuthenticationException( 'The username is incorrect.', self::IDENTITY_NOT_FOUND );

			} elseif ( !hash ( 'sha512', $password ) == $row->user_password ) {
				throw new AuthenticationException( 'The password is incorrect.', self::INVALID_CREDENTIAL );
			}

			$data = $row->toArray ();
			unset( $data[ 'user_password' ] );

			return new Identity( $row->user_id, $row->user_role_id, $data );
		}
	}

