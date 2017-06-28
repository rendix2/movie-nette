<?php

	namespace App\Presenters;

	use App\Model\MovieManager;
	use App\simple_html_dom;
	use Nette\Application\UI\Form;
	use Nette\Utils\ArrayHash;

	/**
	 * Created by PhpStorm.
	 * User: Tomáš
	 * Date: 18. 6. 2017
	 * Time: 14:15
	 */
	class MoviePresenter extends BasePresenter {

		/**
		 * @var MovieManager
		 */
		private $movieManager;

		public function __construct ( MovieManager $movieManager ) {
			parent::__construct();
			$this->movieManager = $movieManager;
		}

		public function __destruct () {
			$this->movieManager = NULL;
			// TODO: Implement __destruct() method.
		}

		private static function getCsfdId ( $input ) {
			$csfdId = explode ( '/', $input );

			return explode ( '-', $csfdId[ 4 ] )[ 0 ];
		}

		private static function saveImage ( $address ) {
			if ( $address == NULL ) return NULL;

			$image     = file_get_contents ( $address );
			$imageName = self::generateHash ();
			file_put_contents ( dirname ( __DIR__ ) . '/../www/images/' . $imageName . '.jpg', $image );

			return $imageName;
		}

		public static function validateCsfdLink ( $address ) {
			return preg_match ( '#^(http|https):\/\/(www.){0,1}csfd\.cz\/film\/[0-9]{1,6}-[a-z-0-9]*\/prehled\/$#',
			$address );
		}

		public function addMovieSuccess ( $form, $values ) {
			$error   = 0;
			$csfd_id = self::getCsfdId ( $values->csfd_link );

			if ( $this->movieManager->checkCsfdIdExists ( $csfd_id ) ) {
				$this->flashMessage ( 'Odkaz na film již existuje, zvolte jiný odkaz na film.' );
				$error = 1;
			}

			if ( $error == 0 ) {
				$movieData                    = $this->getMovieInfo ( $values->csfd_link );
				$movieData[ 'movie_csfd_id' ] = $csfd_id;
				$movieData[ 'user_id' ]       = $this->getUser ()->getId ();

				$res = $this->movieManager->addMovie ( $movieData );

				if ( $res ) {
					$this->flashMessage ( 'Film byl úspěšně přidán.' );
				} else {
					$this->flashMessage ( 'Film se nepodařilo přidat.' );
				}

				$this->redirect ( 'Movie:showOneMovie', $res );
			}
		}

		public function addRelationMovieSuccess ( Form $form, ArrayHash $values ) {
			$related_movie_id = ( $values->csfd_link ) ? $values->csfd_link : $values->related_movie_id;
			$res              = $this->movieManager->addRelatedMovie ( $this->getParameter ( 'id' ), $related_movie_id, $this->getUser ()
			                                                                                                                 ->getId () );

			if ( $res ) {
				$this->flashMessage ( 'Vazba přidána' );
			}

			$this->redirect ( 'Movie:showOneMovie', $this->getParameter ( 'id' ) );
		}

		protected function createComponentAddMovie () {
			$form = new Form();

			$form->addText ( 'csfd_link', 'CSFD.cz odkaz:' );
			$form->addSubmit ( 'submit', 'Uložit' );
			$form->addProtection ();
			$form->onSuccess[] = [ $this, 'addMovieSuccess' ];

			return $form;
		}

		protected function createComponentAddRelationMovie ( $id ) {
			$form = new Form();

			$form->addText ( 'related_movie_id', '' );
			$form->addText ( 'csfd_link', 'Odkaz na ČSFD:' )->setRequired ( FALSE );

			$form->onSuccess[] = [ $this, 'addRelationMovieSuccess' ];

			return $form;
		}

		private function getMovieInfo ( $link ) {
			$result = [ ];

			foreach ( $this->startParseData ( $link )->find ( 'meta' ) as $element ) {
				if ( $element->name == 'description' ) {
					$result[ 'description' ] = $element->content;
					continue;
				}

				if ( $element->property == 'og:title' ) {
					$result[ 'title' ] = $element->content;
					continue;
				}

				// preg_quote
				if ( preg_match ( '#^(http|https):\/\/img\.csfd\.cz\/files\/images\/film\/#',
				$element->content ) ) {
					$result[ 'image' ] = $element->content;
					continue;
				}
			}

			if ( !isset( $result[ 'image' ] ) )
				$result[ 'image' ] = NULL;

			if ( preg_match ( '#\/#', preg_quote ( $result[ 'title' ], '#' ) ) ) {
				$names = $result[ 'title' ];
				$names = str_replace ( ' (TV seriál) ', '', $names );
				$names = explode ( '/ ', $names );

				$czechName = ucfirst ( $names[ 0 ] );
				$engName   = $names[ 1 ];
				$tmp       = explode ( '(', $engName );
				$engName   = ucfirst ( $tmp[ 0 ] );

				// check!!!!!!
				$year  = $tmp[ 1 ];
				$year2 = substr ( $year, 0, 4 );
			} else {
				$name      = explode ( ' \|', $result[ 'title' ] );
				$name      = explode ( ' (', $name[ 0 ] );
				$names     = $name[ 0 ];
				$czechName = $names;
				$engName   = $names;

				$year2 = substr ( $name[ 1 ], 0, 4 );
			}

			$imageName = self::saveImage ( $result[ 'image' ] );

			return [ 'movie_name_czech' => $czechName, 'movie_name_origin' => $engName, 'movie_year' => $year2, 'movie_description' => $result[ 'description' ],
			         'movie_picture'    => $imageName,
			];
		}

		public function handleSearchMovie ( $name ) {
			$search = $this->movieManager->searchMovie ( $name );

			if ( !$search ) {
				echo 'NIC :(';
			}
		}

		public function handleSetLike ( $relation_id ) {
			if ( $this->isAjax () ) {
				$this->movieManager->setLike ( $relation_id, $this->getUser ()->getId () );
			}
		}

		public function handleUnsetLike ( $relation_id ) {
			if ( $this->isAjax () ) {
				$this->movieManager->unsetLike ( $relation_id, $this->getUser ()->getId () );
			}
		}

		public function renderAddRelationMovie ( $movie_id ) {

		}

		public function renderShowOneMovie ( $id ) {
			$movie         = $this->movieManager->getOneMovie ( $id );
			$relatedMovies = $this->movieManager->getRelatedMovies ( $id );

			if ( !$movie ) {
				$this->error ( 'Neexistujicí záznam filmu :(' );
			}

			if ( !$relatedMovies ) {
				$this->flashMessage ( 'Žádné filmy k doporučení' );
			}

			$this->template->movie         = $movie;
			$this->template->relatedMovies = $relatedMovies;
		}

		private function startParseData ( $link ) {
			$html = file_get_contents ( $link );

			/// check if used gzip or not!!
			$html = ord ( $html[ 0 ] ) == 31 ? gzdecode ( $html ) : $html;

			$dom = new simple_html_dom();
			$dom->load ( $html );

			return $dom;
		}
	}