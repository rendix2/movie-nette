<?php
	/**
	 * Created by PhpStorm.
	 * User: Tomáš
	 * Date: 18. 6. 2017
	 * Time: 15:01
	 */

	namespace App\Model;

	use Nette;

	class MovieManager extends Tables {

		public function addMovie ( $data ) {
			\dibi::insert ( self::MOVIES_TABLE, $data )->execute ();

			return \dibi::getInsertId ();
		}

		public function addRelatedMovie ( $movie_id, $related_movie_id, $user_id ) {
			return \dibi::insert ( self::RELATED_MOVIES_TABLE, [ 'user_id'          => $user_id, 'movie_id' => $movie_id,
			                                                     'movie_related_id' => $related_movie_id,
			] )->execute ()
			;
		}

		public function checkCsfdIdExists ( $id ) {
			return \dibi::select ( '1' )->from ( self::MOVIES_TABLE )->where ( 'movie_csfd_id = %i', $id )->fetch ();
		}

		public function deleteMovie ( $id ) {
			return \dibi::delete ( self::MOVIES_TABLE )->where ( 'movie_id = %i', $id )->execute ();
		}

		public function deleteRelationMovie ( $relation_id ) {
			return \dibi::delete ( self::RELATED_MOVIES_TABLE )->where ( 'relation_id = %i', $relation_id )->execute ();
		}

		public function getGetMovies () {
			return \dibi::dataSource ( 'SELECT * FROM ' . self::MOVIES_TABLE );
		}

		public function getOneMovie ( $id ) {
			return \dibi::select ( '*' )->from ( self::MOVIES_TABLE )->where ( 'movie_id = %i', $id )->fetch ();
		}

		public function getRelatedMovies ( $id ) {
			return \dibi::select ( '(SELECT COUNT(rl.relation_id) FROM related_movies_likes rl WHERE rl.relation_id =
			 r.relation_id ) as count_likes, r.relation_id, m.*' )->from ( self::MOVIES_TABLE )->as ( 'm' )->leftJoin (
			self::RELATED_MOVIES_TABLE )->as ( 'r' )
			            ->on ( 'r.movie_related_id = m.movie_id' )->where ( 'r.movie_id = %i', $id )->fetchAll ()
			;
		}

		public function searchMovie ( $name ) {
			return \dibi::select ( '*' )->from ( self::MOVIES_TABLE )->where ( 'movie_name LIKE %s', $name )->fetchAll ();
		}

		public function setLike ( $relation_id, $user_id ) {
			return \dibi::insert ( self::RELATED_MOVIES_LIKES_TABLE, [ 'relation_id' => $relation_id, 'user_id' =>
			$user_id,
			] )->execute ()
			;
		}

		public function unsetLike ( $relation_id, $user_id ) {
			return \dibi::delete ( self::RELATED_MOVIES_LIKES_TABLE )->where ( 'relation_id = %i', $relation_id )
			            ->where ( 'user_id = %i', $user_id )->execute ()
			;
		}

	}