-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 28. čen 2017, 19:30
-- Verze serveru: 10.1.21-MariaDB
-- Verze PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `movie`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_csfd_id` int(11) NOT NULL,
  `movie_name_czech` varchar(200) COLLATE utf8_czech_ci NOT NULL,
  `movie_name_origin` varchar(200) COLLATE utf8_czech_ci NOT NULL,
  `movie_year` year(4) NOT NULL,
  `movie_picture` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `movie_description` text COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `movies`
--

INSERT INTO `movies` (`movie_id`, `user_id`, `movie_csfd_id`, `movie_name_czech`, `movie_name_origin`, `movie_year`, `movie_picture`, `movie_description`) VALUES
(1, 1, 263921, 'Terminator Genisys ', 'Terminator: Genisys ', 2015, '237a435532b8923543e5affbedc36a25', 'Budoucnost je temná. Soudný den v devadesátých letech minulého století zlikvidoval polovinu lidstva a ti, kdo přežili, se od té doby snaží marně vzdorovat počítačovému systému Skynet. Nejsilnější hnutí odporu se zformovalo kolem Johna Connora (Jason…'),
(2, 1, 6642, 'Smrtonosná past ', 'Die Hard ', 1988, '46627b8d916b5445ca854638560e58ae', 'Newyorský policista John McClane (Bruce Willis) přijel do Los Angles navštívit svou ženu, která je zrovna na vánočním večírku v nedostavěné budově firmy Nakatomi. Do budovy však vtrhne německý terorista Hans Gruber (Alan Rickman) se svou jednotkou a…'),
(3, 1, 4158, 'Smrtonosná past 2 ', 'Die Hard 2 ', 1990, '0d54f372944ce72ffc49b9935e1ccbf5', 'S policistou Johnem McClanem se setkáváme i v druhém pokračování úspěšného akčního thrilleru, tentokrát v režii Rennyho Harlina. Přesně rok po dramatické misi v Los Angeles John plánuje klidné vánoční svátky. Na Štědrý den jede na newyorské letiště…'),
(4, 1, 1248, 'Terminátor 2: Den zúčtování ', 'Terminator 2: Judgment Day ', 1991, '247fa6963997097e4b7981d4ab08dbc4', 'Deset let po neúspěšném pokusu zabít Sarah Connorovou, matku budoucího vůdce lidstva ve válce proti strojům, se do Los Angeles vrací z budoucnosti nový Terminátor, typ T-1000, aby zlikvidoval už narozeného Johna Connora. Dospělý Connor v roce 2029…'),
(5, 1, 1626, 'Harry Potter a Kámen mudrců ', 'Harry Potter and the Philosopher&amp;#039;s Stone ', 2001, '7989eb91c1275ff5bb20edefbad22f2f', 'Kdo by dnes už alespoň nezaslechl jméno Harryho Pottera, čarodejnického učně, jehož neskutečná popularita mezi dětmi během krátké doby zasáhla i dospělé. Filmovou verzi jeho prvního příběhu zrežíroval Chris Columbus ve spolupráci s autorkou …'),
(6, 1, 42949, 'Harry Potter a Ohnivý pohár ', 'Harry Potter and the Goblet of Fire ', 2005, '499264425f3fa16ca8b333377589d9a5', 'Harry Potter zahajuje svůj čtvrtý školní rok na Škole čar a kouzel v Bradavicích. Ani tentokrát tam není v bezpečí. Bradavice hostí významnou událost - Turnaj tří kouzelnických škol. Z každé vybere toho nejvhodnějšího uchazeče Ohnivý pohár. Proti…'),
(7, 1, 224184, 'Harry Potter a Princ dvojí krve ', 'Harry Potter and the Half-Blood Prince ', 2009, '68fcbce939b92caa031ff709ab6337db', 'Povzbuzeni návratem Lorda Voldemorta působí Smrtijedi spoušť jak ve světě mudlů, tak ve světě kouzelníků a Bradavice už dávno nejsou tím bezpečným místem, jakým kdysi bývaly. Harry má podezření, že nebezpečí je přímo v Bradavicích, ale Brumbál se…'),
(8, 1, 1624, 'Harry Potter a Tajemná komnata ', 'Harry Potter and the Chamber of Secrets ', 2002, 'bdabf2dac3bb50f0cb5483fb0a5ab069', 'Harry Potter se po prázdninách vrací do Bradavic a nastupuje do druhého ročníku. A to i přes varování domácího skřítka Dobbyho, podle kterého mu v čarodějné škole hrozí smrt. Harry nedbá nářků skřítka působícího víc škody než užitku, ale potom se…'),
(9, 1, 1625, 'Harry Potter a vězeň z Azkabanu ', 'Harry Potter and the Prisoner of Azkaban ', 2004, 'e9dabb96c77f8d42e1ad4b16f07cd7a2', 'Třináctiletý Harry Potter znovu nerad tráví své další prázdniny u rodiny Dursleyových, letos navíc se zlou tetou Marge. I přes přísný zákaz používání kouzel jí Harry promění v obrovský balón a v noci uteče záchranným autobusem do hospody Děravý…'),
(10, 1, 230063, 'Harry Potter a Relikvie smrti - část 1 ', 'Harry Potter and the Deathly Hallows: Part 1 ', 2010, '87d31951380e0074702f7b8bbfdbfc35', 'Harry Potter a Relikvie smrti je sedmým a posledním pokračováním dobrodružství Harryho Pottera, které je očekávanou událostí a bude rozděleno do dvou celovečerních filmů. První část začíná, když se Harry, Ron a Hermiona vydávají na nebezpečnou misi,…'),
(11, 1, 239950, 'Harry Potter a Relikvie smrti - část 2 ', 'Harry Potter and the Deathly Hallows: Part 2 ', 2011, 'e6abbf05c2241364abba0cc71bb81e4b', 'Přichází poslední dobrodružství ságy o Harry Potterovi. V tomto výpravném finále eskaluje bitva mezi dobrem a zlem do otevřené války čarodějného světa. Nikdy nebylo v sázce tolik jako teď. Nikdo už není v bezpečí. Je to ale Harry Potter, kdo možná…'),
(12, 1, 1249, 'Terminátor ', 'The Terminator ', 1984, '01c3953cb87dc36e1f8b7d5c1fece840', 'Z roku 2029 je do Los Angeles roku 1984 vyslán zabijácký stroj podobný člověku. Má za úkol zabít Sarah Connorovou dřív, než přivede na svět syna, který se má později stát vůdcem lidí ve válce proti strojům. Lidé žijící v budoucnosti ovšem do…'),
(13, 1, 15908, 'Terminátor 3: Vzpoura strojů ', 'Terminator 3: Rise of the Machines ', 2003, 'ed397e4ba51632efc72b54443b0ad177', 'Od momentu, keď sa Johnovi Connorovi (Nick Stahl) podarilo odvrátiť súdny deň a zachrániť ľudstvo pred zničením, uplynulo 10 rokov. V súčasnosti dvadsaťdva ročný Connor žije inak, ako väčšina ľudí - bez domova, bez kreditných kariet, bez mobilného…'),
(14, 1, 227774, 'Terminator Salvation', 'Terminator Salvation', 2009, '54701949cd3c54f7b6b40ccbb537414f', 'Film „Terminator Salvation“ je zasazen do post-apokalyptického roku 2018. Christian Bale hraje Johna Connora, muže určeného osudem k tomu, aby vedl lidský odpor vůči Skynetu a jeho armádě Terminátorů. Ale budoucnost, na kterou byl Conner připravován…'),
(15, 1, 2294, 'Vykoupení z věznice Shawshank ', 'The Shawshank Redemption ', 1994, '21c22b918470a7dec14bb53a8c33654d', 'Strach dělá z lidí vězně. Naděje jim dává křídla. Film natočený podle novely Stephena Kinga. Strhující příběh o přátelství, naději a moudrosti s velmi výraznými hereckými i charakterovými osobnostmi. Andy Dufresne (Tim Robbins) přichází do vězení v…'),
(16, 1, 10135, 'Forrest Gump', 'Forrest Gump', 1994, '8315bf9de087902711f7b27ea2b25bb2', 'Zemeckisův film je brilantním shrnutím dosavadních režisérových poznatků o možnostech &amp;quot;comicsového&amp;quot; vyprávění. Formálně i obsahově nejméně konvenční z jeho snímků přesvědčuje komediálními gagy i naléhavě patetickým tónem. Jeho hrdinou je prosťáček…'),
(17, 1, 2292, 'Zelená míle ', 'The Green Mile ', 1999, 'a32de95ea6caab861bc4d5cad68dc29e', 'Na začátku příběhu se potkáme se starým mužem Paulem Edgecombem (Dabbs Greer). Žije v domově s pečovatelskou službou a právě se dojatě dívá na starý film s Fredem Astairem. Snad až příliš dojatě, protože jedna ze sester ho musí zkontrolovat, když…'),
(18, 1, 2982, 'Přelet nad kukaččím hnízdem ', 'One Flew Over the Cuckoo&amp;#039;s Nest ', 1975, '982507ea9bbc3787d18cc20f88f67d07', 'Když svobodomyslný malý podvodníček Randle P. McMurphy (Jack Nicholson) přichází do státní psychiatrické nemocnice, jeho nakažlivý odpor k disciplíně otřese rutinou celého zařízení. On je jednou stranou nastávající války. Uhlazená, chladně…'),
(19, 1, 2671, 'Sedm ', 'Se7en ', 1995, 'b0737064409917e49b8892d7fe959c18', 'Obžerství, lakota, lenost, závist, hněv, pýcha a smilstvo. Sedm smrtelných hříchů, o nichž kázali církevní hodnostáři ve středověkých kázáních s varováním, jak mohou nábožné lidi odvádět od víry. Tyto hříchy se objevily jako předloha spousty…'),
(20, 1, 8653, 'Schindlerův seznam ', 'Schindler&amp;#039;s List ', 1993, 'f333a854af7f0a2ce851ac5545f4b18e', 'Hluboce šokující, nemilosrdné drama o noční můře holocaustu, založené na skutečných událostech. Na záchranu 1100 životů obětoval Oskar Schindler veškeré své jmění... Polský Krakov 1939. Židovská obec je vystavována stále se zvyšujícímu tlaku ze…'),
(21, 1, 1644, 'Kmotr ', 'The Godfather ', 1972, 'a7f3c74cd055fe0d4f19454b2304252d', 'Gangsterské drama Kmotr, natočené podle stejnojmenného bestselleru Maria Puza, patří mezi přelomová díla tzv. Nového Hollywoodu, a to jak komerčně, tak umělecky. Příběh newyorské mafiánské rodiny Corleonů, jíž tvrdou rukou šéfuje starý don Vito …'),
(22, 1, 8242, 'Casino', 'Casino', 1995, '511e7b177544f141a80f4deb62125188', 'Odvrácená strana lidské povahy je dominantním tématem tvorby Martina Scorseseho: platí to i o jeho posledním díle z prostředí Las Vegas Casino, jež v mnohém navazuje na úspěšné Scorseseho drama MAFIÁNI. V dlouhé, takřka dokumentárně pojaté expozici…'),
(23, 1, 4711, 'Pán prstenů: Společenstvo Prstenu ', 'The Lord of the Rings: The Fellowship of the Ring ', 2001, 'ebe76e9f3d26dc11c9a4eab0facbee3c', 'Hlavním hrdinou je hobit Frodo Pytlík, který se ve své vlastní domovině zvané Středozemě dostal do samotného centra bitvy mytických proporcí. Bude muset během svého putování prokázat, že moc přátelství a individuální odvahy dokáže úspěšně čelit i…'),
(24, 1, 240479, 'Gran Torino', 'Gran Torino', 2008, '93f521eacdb80266ebccb229ef6f0804', 'Film vypráví příběh neústupného válečného veterána Walta Kowalského, který si s přibývajícím věkem uvědomuje, že na nový svět už nestačí. Musí se konfrontovat jak se sousedy rozličného etnického původu, tak se svými hluboce zakořeněnými předsudky.…'),
(25, 1, 4712, 'Pán prstenů: Návrat krále ', 'The Lord of the Rings: The Return of the King ', 2003, '0d83af4b1073e86c4936996f132cb956', 'Nadchází čas rozhodující bitvy o přežití Středozemě. Putování jednotlivých členů Společenstva prstenu se dostává do poslední a rozhodující fáze. Čaroděj Gandalf, elf Legolas a trpaslík Gimli spěchají s dědicem trůnu Aragornem na pomoc zemi Gondor,…'),
(26, 1, 5910, 'Hodný, zlý a ošklivý ', 'Il buono, il brutto, il cattivo ', 1966, 'd03d16e91b731af57b2969e46870d4ca', 'Tři pistolníci, nepřátelé na život a na smrt, a každý zná část tajemství, bez něhož ti ostatní nikdy nenajdou ukrytý zlatý poklad. Jako první se o něm dozví zabiják Sentenza zvaný Krásnoočko, kterého najal desperát Baker, aby z jednoho farmáře…'),
(27, 1, 4713, 'Pán prstenů: Dvě věže ', 'The Lord of the Rings: The Two Towers ', 2002, '71d01079c7c8caa49f4dca97f2237bb8', 'Druhý díl filmové ságy o nebezpečném putování jehož cílem má být zničení prokletého prstenu moci začíná tam kde první skončil. Opět je hlavním hrdinou hobit Frodo. Ten se získal od svého příbuzného Bilba magický prsten po kterém touží temný Sauron a…'),
(28, 1, 18367, 'Pan Bean jde do města ', 'Exciting Escapades of Mr. Bean, The ', 1990, 'fe8fe6d3950b0cb9834864745370e7ab', 'Prekliatie Mr. Beana: Plaváreň, snaha o útek z parkoviska bez zaplatenia, výroba sendviču v parku, návšteva hororového kina s priateľkou.Mr. Bean ide do mesta: Ladenie televízora, topánka na streche auta, stretávka s priateľkou na diskotéke.'),
(29, 1, 6178, 'Dvanáct rozhněvaných mužů ', '12 Angry Men ', 1957, '4e7a3882034525526f86bfe13f267c18', 'Dramatický příběh natočený původně jako televizní film, což ovlivnilo jeho výraz, který se zdánlivě vymyká filmové praxi, neboť se celý odehrává v průběhu devadesáti minut v uzavřené soudní síni. Dvanáct porotců má jednomyslně rozhodnout o vině či…'),
(30, 1, 306731, 'Nedotknutelní ', 'Intouchables ', 2011, '51ca45374a1f504afdafcf53dea3662a', 'Ochrnutý a bohatý aristokrat Philippe si za svého nového opatrovníka vybere Drisse, živelného mladíka z předměstí, kterého právě propustili z vězení. Jinými slovy - najde si na tuto práci tu nejméně vhodnou osobu. Podaří se jim však propojit nemožné…'),
(31, 1, 4570, 'Pelíšky', 'Pelíšky', 1999, 'a6e68bd1f30f9201177017ee5a91e6a3', 'Příběhy jedné historické generace - stárnoucích rodičů, dospívající mládeže a malých dětí. Děj je zasazen do konce šedesátých let - podzim 67 až léto 68 s krátkým epilogem přesahujícím do let sedmdesátých. Pražská vilová čtvrť Hanspaulka, jemná…'),
(32, 1, 1645, 'Kmotr II ', 'The Godfather: Part II ', 1974, '9731a03cc1767246748f781914fad605', 'Jsme větší než U. S. Steel. Al Pacino a Robert De Niro v hlavních rolích pokračování slavné mafiánské ságy, oceněné šesti Oscary. Mimořádný úspěch Kmotra (1972) ve světových kinech logicky vedl k okamžitým úvahám o natočení pokračování, k němuž…'),
(33, 1, 5911, 'Tenkrát na Západě ', 'C&amp;#039;era una volta il West ', 1968, '3d5642f4398807c08bc8b5cb0ab3a150', 'Opuštěná železniční stanice, na které tři muži trpělivě čekají na příjezd vlaku, je legendárním prologem jednoho z nejslavnějších westernů v historii světové kinematografie. Ty tři poslal bezcitný modrooký pistolník Frank, aby se postarali o muže,…'),
(34, 1, 8852, 'Pulp Fiction: Historky z podsvětí ', 'Pulp Fiction ', 1994, '9227d2c5dc1c6edfb9f8bb9ad3145702', 'Nejkultovnější z kultovních filmů 90. let je autorskou Biblí Quentina Tarantina, který v tomto opusu definoval základní prvky své režisérské poetiky a vytvořil dílo rozněcující náročné kritiky na festivalu v Cannes, levicové a pravicové intelektuály…'),
(35, 1, 2356, 'Mlčení jehňátek ', 'The Silence of the Lambs ', 1991, 'c52e0126e729a2ef8ac309ce1329eb79', 'Clarice Starlingová, nadaná studentka akademie FBI, je přidělena agentu Crawfordovi vyšetřujícímu případ masového vraha Buffalo Billa, který své oběti stahuje z kůže. Clarice navštíví v baltimorské vězeňské nemocnici bývalého vynikajícího psychiatra…'),
(36, 1, 223734, 'Temný rytíř ', 'The Dark Knight ', 2008, 'c2b0d01f0368f25d559c7a5d2f0cda79', 'Christian Bale se pod režijní taktovkou Christophera Nolana vrací v roli Bruce Waynea, který v kostýmu netopýřího muže Batmana pokračuje v boji se zločinem ve městě Gotham. A jeho nejnebezpečnějším protivníkem je král zločinců Joker (Heath Ledger)…'),
(37, 1, 9499, 'Matrix ', 'The Matrix ', 1999, '27e08d769ffae18ee5eaeb3f03afc1fa', 'Uvěříte neuvěřitelnému! Představte si, že vaše realita je jen iluzí a vaše nejtemnější noční můry jsou ve skutečnosti pravdivé. Představte si, že vaše současnost je vlastně minulostí a to budoucí se děje právě teď. Když si to dokážete představit,…'),
(38, 1, 8650, 'Dobyvatelé ztracené archy ', 'Raiders of the Lost Ark ', 1981, 'cb824f8a7f5978f13bb7eee9434abb4a', 'Rok 1936, Amazon/Tibet/Egypt. Legendární filmoví tvůrci, Steven Spielberg a George Lucas spojili své talenty a vytvořili Indiana Jonese, archeologa dovedně se ohánějícího bičem. Indy (Harrison Ford) je pověřen vládou Spojených států, aby našel Archu…'),
(39, 1, 5954, 'Rain Man', 'Rain Man', 1988, '6ed4b340ac1291514a955aa9aca70b7f', 'Charlie Babbitt (Cruise) právě zjistil, že má autistického bratra Raymonda (Hoffman) a čeká ho fantastická jízda jeho života. Nebo okružní výlet? Všechno začne ve chvíli, kdy Raymond odmítne letět letadlem a tak nezbývá než jet autem. Poprvé totiž…'),
(40, 1, 301401, 'Rivalové ', 'Rush ', 2013, '8982f1a738c250a811450ef381da785e', 'Závratná rychlost, adrenalin proudící v žilách, krásné dívky a nezkrotná touha po vítězství. Závody Formule 1 jsou místem, kde jediná chyba může znamenat smrt. Na těchto okruzích spolu soupeří dva odvěcí rivalové. James Hunt je neřízená střela,…'),
(41, 1, 18780, 'Sedm statečných ', 'The Magnificent Seven ', 1960, 'ee5e007507064df8fa30d3c70f402dea', 'Vesnice Ixcatlan trpí nájezdy banditů vedených nelítostným Calverou, který vesničany každý rok připraví o většinu sklizně a zásob. Proto se vesničané rozhodnou nakoupit v nejbližším městečku zbraně a bránit se. Chtějí o svém plánu poradit s…'),
(42, 1, 15046, 'Podraz ', 'The Sting ', 1973, 'bec68e69d245b3d040767992e0ca6dea', 'Robert Redford a Paul Newman v legendární filmu o jednom geniálním dostihovém podrazu. Film je příběhem o přátelství dvou roztomilých podvodníků. Johny, malý šikovný podvodník a jeho kumpán Luther omylem okradou poslíčka, který pracuje pro jednoho z…'),
(43, 1, 5342, 'Vyšší princip', 'Vyšší princip', 1960, 'bb5a5df7d24575ea177beb3904551ef7', 'Vyšší princip Jiřího Krejčíka stál spolu s Weissovým filmem Romeo, Julie a tma (1959) v naší kinematografii u zrodu toho, co se v literatuře charakterizuje jako druhá vlna válečné prózy. Po letech schematizmu a zplošťujícího heroického patosu se na…'),
(44, 1, 8265, 'Vetřelec ', 'Alien ', 1979, '187afe85a4d49bb9a8c8703c72589a07', 'V první části kultovní sci-fi ságy se setkáváme se Sigourney Weaver v roli statečné Ripleyové, která jako jediná z posádky vesmírné lodi Nostromo zůstává naživu v souboji s hrůznou bytostí, jejíž zárodek se dostal na palubu z líhně na neznámé…'),
(45, 1, 1245, 'Vetřelci ', 'Aliens ', 1986, 'c75702b1bc5a8bb7a83e063a0f0a5679', 'Důstojnice Ripleyová, která jako jediná přežila boj na život a na smrt v nákladní lodi Nostromo s vesmírným vetřelcem, je po několika letech nalezena záchrannou lodí a vrací se zpět na Zemi. Když už se zdá, že je po všem, začíná horror znova,…'),
(46, 1, 8641, 'Indiana Jones a Poslední křížová výprava ', 'Indiana Jones and the Last Crusade ', 1989, '1b2c8fe1a0a7bba1f74e752c8afd0c9a', 'Rok 1938, Priceton/Venice the Holy Land. Indiana Jones si už potřetí nasazuje svůj pomačkaný klobouk, jenomže tentokrát se k němu v tomto napínavém filmu přidává i jeho tatínek (Sean Connery). Tvůrci filmu se postarali o to, aby duo otec - syn…'),
(47, 1, 15031, 'Butch Cassidy a Sundance Kid ', 'Butch Cassidy and the Sundance Kid ', 1969, 'ab8c1e211c52fc26bbbab82db6af8991', 'Rok 1900, Divoký západ. Bandité Butch a Sundance se zde rozhodnou přepadnout slavný Union Pacific Express - a to hned dvakrát za sebou. Poprvé jde všechno jako na drátkách, ale při druhém pokusu je překvapí strážci zákona. Od té doby jsou na útěku a…'),
(48, 1, 773, 'Leon ', 'Léon ', 1994, 'a4347ef6cf9dc570d1e13ef25f600be1', 'Strhující thriller o dvanáctileté dívce, která osudově zasáhne do života stárnoucího profesionálního zabijáka. Neobyčejný milostný příběh profesionálního vraha a mladé dívky. Leon je nájemný vrah, člověk, kterého nedokáže nic zastavit před splněním…'),
(49, 1, 4123, 'L. A. - Přísně tajné ', 'L. A. Confidential ', 1997, '993b10ac32ade93f94aae9b2382d9d4b', 'Všechno je úplně jinak, ale zkuste to dokázat! Kevin Spacey, Kim Basingerová a Danny DeVito v policejním případu plném neřešitelných záhad.Kriminální příběhy &amp;quot;drsné školy&amp;quot; měly v minulosti nejen velký úspěch mezi čtenáři, ale také získaly dlouhou…'),
(50, 1, 3092, 'Cesta do hlubin študákovy duše', 'Cesta do hlubin študákovy duše', 1939, '2876fac7e7d5891f8c7149cc1dde7c9d', 'Profesor gymnázia Rabiška už léta zapisuje události na gymnáziu a sbírá kuriózní předměty zabavené studentům při vyučování. V septimě se sešly různé typy: talentovaný fotbalista, ale špatný student Kulík, snaživý Mazánek, premiantka Chalupová a…'),
(51, 1, 88625, 'Město bohů ', 'Cidade de Deus ', 2002, '4da1bd67724e35e0286b8da4b7aec6d9', 'Cidade de Deus je nejstarší a nejnebezpečnější slum Ria de Janeira, nejbolavější místo metropole karnevalů. Buscapé se zde narodil, aby žil, místo toho je však zavlečen do světa, v němž se jeho nejlepší kamarádi místo s hračkami baví s nabitými…'),
(52, 1, 5238, 'Star Wars: Epizoda V - Impérium vrací úder ', 'Star Wars: Episode V - The Empire Strikes Back ', 1980, '7299dbdb7f1a2451eac411d367c3f027', 'Nastaly temné časy pro Povstání. I přes to, že &amp;quot;Hvězda smrti&amp;quot; byla zničena, imperiální jednotky vyhnaly Rebely z jejich tajné základny a pronásledovaly je po celé Galaxii. Aby se vyhnula střetu s hrůzostrašnou Imperiální flotilou, skupina svobodných…'),
(53, 1, 2971, 'Amadeus', 'Amadeus', 1984, '39c6cfa37d68fd6bf479ec1722c9cfd0', 'Píše se rok 1781 a Antonio Salieri (Abraham) působí jako dvorní skladatel císaře Josefa II (Jeffrey Jones). Když ke dvoru přijede Mozart (Tom Hulce, nominovaný na Oscara), Salieri si s hrůzou uvědomí, že božské hudební nadání, které si přál mít on…'),
(54, 1, 8806, 'Obecná škola', 'Obecná škola', 1991, 'd40de0cf11bc86d4498a1fd44b5d1fc1', 'Je krátce po válce a do chlapecké třídy jedné ze škol na předměstí Prahy chodí také desetiletý Eda Souček se svým kamarádem Tondou. Stejně jako ostatní spolužáci, také Eda s Tondou zcela ignorují pokusy rezignované učitelky Maxové o výuku a spíš než…'),
(55, 1, 5992, '„Marečku, podejte mi pero!“', '„Marečku, podejte mi pero!“', 1976, '447219bd73c700380bced08724501493', 'Jiří Kroupa, mistr v továrně na zemědělské stroje, by mohl povýšit - musel by ovšem vystudovat večerní průmyslovku. Pan Kroupa se tomu vehementně brání, nakonec však podlehne naléhání členů dílenského výboru a na školu se dá zapsat. Stejný…'),
(56, 1, 8652, 'Zachraňte vojína Ryana ', 'Saving Private Ryan ', 1998, '61c1b14bc3a2c87212f40f5902f9c19f', 'Druhá světová válka byla rozhodující událostí 20. století a pro Ameriku se stala určujícím dějinným zvratem. Změnila tehdy hranice světa a dnes je nazývána &amp;quot;poslední velkou válkou&amp;quot;. Ani sebelepší výcvik však nemohl spojenecké vojáky připravit na to,…'),
(57, 1, 821, 'S čerty nejsou žerty', 'S čerty nejsou žerty', 1984, '3981d592dc7c22794e2fc82eecda2e7f', 'Chamtivá macecha připraví svého nevlastního syna Petra o všechno, včetně dědictví po jeho otci. Petr se mezitím seznámí s dcerami místního knížete, když je zachrání při projížďce, při které se jim splašili koně a zaujme ho vyzývavá Angelína. Petr…'),
(58, 1, 4244, 'Spalovač mrtvol', 'Spalovač mrtvol', 1968, 'a15251a95f319955ee424c9920a50ce7', 'Konec 30. let: Pan Karel Kopfrkingl je obětavý zaměstnanec pražského krematoria a vzorný otec rodiny, který důsledně dbá o řádný chod domácnosti a všestrannou výchovu svých dětí. Rád předčítá ze své oblíbené knihy o Tibetu. Tíživá atmosféra napjaté…'),
(59, 1, 4543, 'Čistá duše ', 'A Beautiful Mind ', 2001, 'a848308ca69f49ed2314bf02767a4d58', 'Film inspirovaný autentickým životním příběhem Johna Forbese Nashe ml., nositele Nobelovy ceny za ekonomii. V roce 1947 byl John přijat na prominentní univerzitu v Princetonu s pověstí zcela mimořádně talentovaného matematika. Nepodobá se svým…'),
(60, 1, 1747, 'Tanec s vlky ', 'Dances with Wolves ', 1990, '17508140f7aa2cf6cf178faca2953f23', 'Poručík Dunbar, těžce zraněný v bitvě s konfederační armádou, je dekorován jako hrdina a poslán na vlastní žádost do opuštěné pevnosti na západní hranici. Spřátelí se s osamělým vlkem a pokouší se navázat kontakt s poblíž žijícím kmenem Siouxů.…'),
(61, 1, 254156, 'Počátek ', 'Inception ', 2010, '9b7d686fd6fa553fc8253514f94c3fde', 'Dom Cobb (Leonardo DiCaprio) je zkušený zloděj, absolutní špička v nebezpečném umění extrakce: krádeže cenných tajemství z hloubi podvědomí během snění, kdy je mysl nejzranitelnější. Cobbova vzácná schopnost z něj učinila vyhledávaného hráče v…'),
(62, 1, 10128, 'Návrat do budoucnosti ', 'Back to the Future ', 1985, '4342daaceca211b279bdfd6b4e229f35', 'O tom, jak se stát strůjcem svého štěstí, vypráví jeden z nejlepších a nejoriginálnějších sci-fi filmů v historii.  Christopher Lloyd sestrojil stroj na cestování časem a Michael J. Fox s jeho pomocí odcestuje do minulosti. Omylem se ale ocitne v…'),
(63, 1, 6444, 'Nelítostný souboj ', 'Heat ', 1995, '6a1917db86f857a582fe62bb24d3b17d', 'Neil McCauley (Robert de Niro) dělá to, co umí nejlépe. Živí se jako profesionální lupič. Společně se svou bandou ukradl dluhopisy peněžního magnáta Rogera van Zanta (William Fichtner). Akce však nedopadla zrovna nejlépe, protože jeden ze členů…'),
(64, 1, 6672, 'Vesničko má středisková', 'Vesničko má středisková', 1985, '08f2d3e2a660dab2159db256dd0d3ff8', 'Můžete se tu setkat se svérázným a okouzlujícím doktorem Skružným, řidičem družstevního náklaďáku Pávkem a jeho závozníkem, mentálně zaostalým Otíkem, ke kterému se Pávek chová jako k vlastnímu, i když mu Otík ve své prostotě připravuje jeden malér…'),
(65, 1, 5407, 'Osvícení ', 'The Shining ', 1980, '1c7b6b6b94b53d1c0a6c9596d93be035', 'Spisovatel Jack Torrance hledá klidné místo pro psaní svého nového románu, a tak přijímá nabídku dělat správce odlehlého horského hotelu. Při úvodním pohovoru se dozvídá mimo jiné hrůznou historku o svém předchůdci, který zešílel ze samoty a…'),
(66, 1, 7355, 'Pianista ', 'The Pianist ', 2002, 'f98112327731909883dd585992fc29d7', 'Film Pianista je příběhem Wladyslawa Szpilmana, skvělého pianisty a uznávaného interpreta Chopinových skladeb. Příběh začíná v okamžiku, kdy ve varšavském rádiu zní Chopinovo Nokturno v C# moll v jeho podání. Píše se rok 1939 a Szpilmanovi je 28 let…'),
(67, 1, 5069, 'Kult hákového kříže ', 'American History X ', 1998, '172bdb69662d8cd1ce53fdaa86491484', 'Po smrti otce, zastřeleného v černošském ghettu, se Derek stane aktivním stoupencem neonacismu, touží po pomstě. Jeho činy vyvrcholí vraždou dvou černochů, za niž si odsedí tři roky ve vězení. Odtud se vrací jako jiný člověk, ale doma zjišťuje, že…'),
(68, 1, 642, 'Život je krásný ', 'Vita è bella, La ', 1997, 'bff2ddd3becc9b077a5ed14948de6064', 'Píše se rok 1939. Italský číšník Guido Orefice, překypující energií a hýřící bláznivými nápady, přijíždí z venkova do velkého města. Na první pohled se tu zamiluje do půvabné učitelky Dory. Ta už sice nápadníka má, on však udělá vše, aby ji…'),
(69, 1, 8271, 'Gladiátor ', 'Gladiator ', 2000, '1846078872b031b601f38d04b383d955', 'Římský generál Maximus (Russell Crowe) opět dovedl své legie k vítězství na bitevním poli. Válka je vyhrána a Maximus sní o domově. Nepřeje si nic jiného, než se vrátit k ženě a svému synovi. Umírající vládce Marcus Aurelius (Richard Harris) pro něj…'),
(70, 1, 2667, 'Klub rváčů ', 'Fight Club ', 1999, '88ff661256906ced91556989a2e61b7f', 'Když nemůžete půl roku usnout, celý okolní svět vám začne připadat jako nekonečný sen. Všechno kolem vás je nedokonalou xeroxovou kopií sebe sama. Chodíte do práce, díváte se na televizi a jste vděčni za to, když občas ztratíte vědomí a nevíte o…'),
(71, 1, 8411, 'Obvyklí podezřelí ', 'The Usual Suspects ', 1995, '20df1194f0712e64b479750e33927668', 'Stalo se to jedné noci v kalifornském přístavu San Pedro, kde byla zmasakrována posádka argentinské pašerácké lodi. Stop pro policii zůstalo proklatě málo: loď vyletěla do povětří a z dvaceti sedmi mužů tu přežili jen dva: kulhavý pouliční…'),
(72, 1, 8364, 'Šestý smysl ', 'The Sixth Sense ', 1999, 'c6e59253e535c1611818b145eb448631', 'Vynikající psycholog Malcolm Crowe (Bruce Willis) má za sebou traumatizující zážitek. Bývalý pacient se vloupal do jeho domu a dříve než sám spáchal sebevraždu, pokusil se ho zastřelit. Šlo zřejmě o trest za to, že mu nedokázal správným způsobem…'),
(73, 1, 8759, 'Četa ', 'Platoon ', 1986, 'd711c96c2dc489013d7fd07702cd4b97', 'Držitel čtyř Cen Akademie® včetně ocenění pro nejlepší film a režii – drásavě realistický válečný film (který podle bezprostředních zážitků natočil režisér Oliver Stone) poprvé vychází na Blu-ray u příležitosti 25. výročí svého vzniku. Speciální…'),
(74, 1, 182363, 'Million Dollar Baby', 'Million Dollar Baby', 2004, 'd0742ebb6a51d00e7b65c70c4016420f', 'Stárnoucí Frankie Dunn (Clint Eastwood) se pokouší usmířit se svou dcerou, nemá však štěstí. Frankie trénuje mladé a nadějné boxery. Nedaří se mu je ale dostat k mistrovskému zápasu.  Okolo ringu Dunnovi pomáhá Eddie Scrap-Iron Dupris (Morgan…'),
(75, 1, 9926, 'Prázdniny v Římě ', 'Roman Holiday ', 1953, '6d63ca821bac446ea293ffee2e3e939f', 'Romantická komedie s A. Hepburn a G. Peckem v hlavních rolích. Prázdniny v Římě byly nominovány na 10 Oscarů a Audrey Hepburn získala Oscara za svou roli novodobé princezny, která se vzpřela svým panovnickým povinnostem a díky americkému novináři (G…'),
(76, 1, 5914, 'Tenkrát v Americe ', 'Once Upon a Time in America ', 1984, '235a10a9ca428d965e9c013b487676e2', 'Jako kluci si slíbili, že jeden pro druhého zemřou. Jako muži slib dodrželi. Robert De Niro v hlavní roli legendární gangsterské ságy Sergia Leoneho.Newyorský gangster David Aaronson, přezdívaný Noodles, uprchne z města před federálními agenty.…'),
(78, 4, 111, 'awdaw', 'afww2', 2121, 'awdaw', 'awdawdwa'),
(90, 1, 222013, 'N.V.Ú. - Loser', 'N.V.Ú. - Loser', 0000, NULL, ''),
(91, 1, 222012, 'Pani Heléne', 'Pani Heléne', 0000, '52505051763d82292108e891fac2b41f', 'Televízny film &amp;quot;Pani Heléne&amp;quot; je inšpirovaný novelou Milana Mitrovského, maliara a spisovateľa, ktorého často nazývali &amp;quot;posledným z rodu romantikov&amp;quot;. Príbeh zasadený do prostredia Florencie v roku 1899, mesta so stáročnou umeleckou históriou a…'),
(92, 1, 222011, 'Ja, Max Planck', 'Ja, Max Planck', 0000, NULL, ''),
(93, 1, 222009, 'Spievajme Slováci', 'Spievajme Slováci', 0000, NULL, 'Vo Vojvodine žije v súčasnosti okolo 56 tisíc našich krajanov. Je to určite jedna z najaktívnejších vetiev Slovákov žijúca v zahraničí, ale ich počet sa neustále mení, zmenšuje kvôli nepriaznivým spoločensko-politickým podmienkam v Srbsku. A tak…'),
(94, 1, 222008, 'České stopy', 'České stopy', 0000, '4a0ce817f1fdde7a821e89507acffde3', '1. Na břehu BajkaluPo vědeckém, publicistickém i filmařském úspěchu expedice k pramenům Amazonky zamířili manželé Šimkovi spolu se skupinou hydrogeologů docenta Janského k Bajkalskému jezeru, aby tu vedle vědeckých měření sledovali i některé české…'),
(95, 1, 222007, 'Cousteauova odysea ', 'Cousteau Odyssey, The ', 0000, NULL, ''),
(96, 1, 222006, 'Kieślowski - La Lecon De Cinema', 'Kieślowski - La Lecon De Cinema', 1994, NULL, ''),
(97, 1, 222005, 'Aein', 'Aein', 2005, '1637be66d59c9f20f6aa8c10af7280a9', 'Ve výtahu se potkávají dva lidé. Ona zírá na brožurku o Zanzibaru, která mu spadla na zem, On ji několik vteřin poté zve na skleničku. Ona odmítá a vyráží tam, kam měla namířeno. Jenže tam opět potkává Jeho. Po několika krátkých slovních…'),
(98, 1, 222004, 'Na cestě po Madeiře', 'Na cestě po Madeiře', 0000, '1933f0b8443813847cbe8f2fa2224be2', 'Madeira není ke koupání, ale ke koukání. Žádné pláže s bílými písky tam sice nejsou, ale zato příroda se na tomto malém ostrově uprostřed Atlantiku skutečně vyřádila. Chvíli si připadáte jako na norských fjordech, pak jako někde v Alpách, za chvíli…'),
(99, 1, 222003, 'Místo činu: Strážce pramene ', 'Tatort - Der Wächter der Quelle ', 0000, 'b65c2ed50806bb5cfe817b6ca3327298', 'Aktivistu pro ochranu životního prostředí Herman Wegscheider, který je kvůli svému prudkému odporu proti komercializaci minerálního pramene trnem v oku mnoha lidí ve vesnici, našla třináctiletá Marie v potoce mrtvého. Dívka nevěří, že by jeho smrt…'),
(100, 1, 222002, 'Ssawoomeui gisool', 'Ssawoomeui gisool', 2006, '298430fd4d79ecf0e9b0333b7fa987bf', 'Příběh mladého chlapce Byung-Tae, který je na učilišti šikanován, ponižovám a mlácen snad každým kdo ma ruce a nohy. Jeho snaha se vymanit ze sevření ocelových pěstí svých spolužáků ho přivádí až do místní knihovny. Tam se setkává s mužem jehož…'),
(101, 1, 222001, 'Pán bederní roušky ', 'Lord of the G-Strings: The Femaleship of the String, The ', 2003, 'd3c4ee737da7603e1387b7420c4a808a', 'Dokážete si představit Pána prstenů v eroticky lechtivém kabátku? Pokud ne, vydejte se spolu s trojicí velmi půvabných dívek na pouť za zničením nebezpečné bederní roušky. Dětem nepřístupno, dospělým doporučeno.'),
(102, 1, 221006, 'Vratné lahve', 'Vratné lahve', 2006, '78fbe0d38d9b8d7bf598a69978ef9310', 'Snímek podle scénáře Zdeňka Svěráka. Hrdinou příběhu je učitel v důchodu, který přijme brigádnické místo ve výkupu lahví v jednom pražském supermarketu. „Nová verze scénáře se víc točí kolem hlavní postavy a jeho rodiny. Táta zapojil do příběhu…'),
(103, 1, 211006, 'Comicalamities', 'Comicalamities', 1928, NULL, ''),
(104, 1, 122014, 'En un París imaginario', 'En un París imaginario', 1975, NULL, ''),
(105, 1, 112014, 'Once in a New Moon', 'Once in a New Moon', 1935, NULL, ''),
(106, 1, 112514, 'Ai: Tabidachi', 'Ai: Tabidachi', 1985, NULL, ''),
(107, 1, 112566, 'Man Outside, The', 'Man Outside, The', 1933, NULL, ''),
(108, 1, 112569, 'Nothing Barred', 'Nothing Barred', 1961, NULL, ''),
(109, 1, 112369, 'Satsujin kyo jidai', 'Satsujin kyo jidai', 1967, '6304bf4bf1eecef218e838c18cb2ca3f', ''),
(110, 1, 222014, 'Křídla přírody ', 'Les ailes de la nature ', 0000, '6d4d3dafc5b81be2e495240e14192f61', 'Létat jako ptáci... Poznat tajemství jejich cest... A jednou se s nimi možná vznášet nad oceány, horami a pouštěmi... A spolu s nimi shlížet na zemi, spatřit ji jejich očima. Filmaři, kteří se podíleli na tomto unikátním přírodovědném projektu,…'),
(111, 1, 223014, 'Dovolená v nebezpečné oblasti ', 'Holidays in the Danger Zone ', 0000, NULL, 'Abcházie, Jižní Osetsko, Transdněstersko, Somaliland, Puntland, Taiwan. Žádný z těchto odštěpených států není na mezinárodní úrovni uznávaný, přesto mají vlastní armádu i politiku a některé dokonce tisknou vlastní poštovní známky. Fanaticky…'),
(112, 1, 221014, 'Most k srdci ', 'Brücke zum Herzen ', 0000, 'bbd1d32093e0511c5779a84901f3c28f', 'Před dvaceti lety profesor Paul Hermes, uznávaný biolog a expert na filmování zvířat, ztratil při tragické nehodě milovanou manželku. Rozhodl se bolest přehlušit prací, to však znamenalo opustit svou malou dcerku Karen, kterou svěřil do opatrování k…'),
(114, 1, 293377, 'Pawn Shop Chronicles: Historky ze zastavárny ', 'Pawn Shop Chronicles ', 2013, NULL, 'O tom vás přesvědčí tři drsné „černočerné&quot; minipříběhy s extrémně vtipnými momenty, které mají jedno společné: začaly v zastavárně jednoho malého města... Richard (Matt Dillon) zde při průjezdu městem nalézá snubní prsten patřící jeho ženě, který…'),
(116, 1, 463873, 'Díra v hlavě ', 'Diera v hlave ', 2016, NULL, 'O tragédii Romů a Sinti za druhé světové války se nikdy a nikde příliš nemluvilo. Byli přitom vražděni po desítkách, stovkách, tisících. Na krajích masových hrobů, v koncentračních táborech, při cestách, puškami, kladivy nebo plynem. Mlčelo se o…'),
(118, 1, 225873, 'Ponyo z útesu nad mořem ', 'Gake no ue no Ponyo ', 2008, NULL, 'Vítejte ve světě, kde nic není nemožné. Neobyčejná animovaná pohádka se odehrává v malém městečku u moře, kde syn námořníka, pětiletý Sosuke, žije poklidný život v domě na útesu ses vou matkou Lisou. Jednoho osudného dne objeví Sosuke na pláži…'),
(119, 1, 78656, 'Viva', 'Viva', 2015, '14404488b099b5c4582d76db0bad8ac5', 'Mladý Jesus pracuje jako kadeřník v nočním travesty klubu v Havaně a sní o tom, že se jednou stane hvězdou. Díky svému učiteli se mu podaří udělat konkurz a dostane první šanci na pódiu, pak se ale zjeví jeho léta nepřítomný otec - bývalý boxer ,…'),
(120, 1, 73656, 'Vaana', 'Vaana', 2008, '7d71bb49235c35274441987dd77e7547', ''),
(121, 1, 73636, 'The Nifty Nineties', 'The Nifty Nineties', 1941, '1ced1b8ad36f60066436d10ff19761c0', ''),
(122, 1, 309648, 'Blind', 'Blind', 2017, '36a4e6338f93524501ab57bd999729ec', ''),
(124, 1, 295104, 'The Echo Game', 'The Echo Game', 2009, 'eb20d0ed0f1b70f2dfe50969e4a48d4c', ''),
(125, 1, 295103, 'Domek z karet ', 'House of Cards', 2013, '5c5a913f3b347cda95773bff1182cbc5', 'Francis Underwood (Kevin Spacey) vás vezme na dlouhou cestu, během níž si vybírá svou pomstu na těch, kteří ho zradili – včetně členů jeho vlastní vlády i prezidenta Spojených států osobně. Elegantní, prohnaný, metodické a zlý Frank Underwood spolu…'),
(126, 1, 295108, 'Signál', 'Signál', 2012, 'd107820e3985c4ed7d4abc39b66c5392', 'Poklidnou idylu rázovité vesničky, která je tak trochu odříznutá od světa, nečekaně rozčeří sympatičtí mladíci Kája (Kryštof Hádek) a Filos (Vojta Dyk). Přijeli prý proto, aby vyhledali nejlepší místo pro instalaci nového mobilního vysílače. Vidina…'),
(127, 1, 295106, 'Interrogatorio, L&amp;#039;', 'Interrogatorio, L&amp;#039;', 1970, '4715a48fbeca4664d37be96a81078dd8', ''),
(128, 1, 295107, 'Seme di Caino, II', 'Seme di Caino, II', 1972, '76347d47dc553b86941ae94def37b289', ''),
(129, 1, 295109, 'Gli amici degli amici hanno saputo', 'Gli amici degli amici hanno saputo', 1973, '74718ac6f249d24e672419683a5b218f', ''),
(130, 1, 295110, 'Pugni nudi, A', 'Pugni nudi, A', 1974, '489ca36993d62bb919facf9b0109bab5', 'Po krátké smutné zkušenosti z vězení pro mladistvé začal Paolo normální život. Ne, že by zanechal boxu, vyhrál dvacet osm zápasů v řadě, ale život venku jej zanedlouho znovu vrátil do podsvětí. Jeho druhá šance napravit se neměla tedy dlouhého…');

-- --------------------------------------------------------

--
-- Struktura tabulky `related_movies`
--

CREATE TABLE `related_movies` (
  `relation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `movie_related_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `related_movies`
--

INSERT INTO `related_movies` (`relation_id`, `user_id`, `movie_id`, `movie_related_id`) VALUES
(1, 1, 1, 2),
(3, 1, 1, 3),
(4, 1, 1, 4),
(5, 1, 1, 6),
(6, 1, 2, 3);

-- --------------------------------------------------------

--
-- Struktura tabulky `related_movies_likes`
--

CREATE TABLE `related_movies_likes` (
  `relation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `related_movies_likes`
--

INSERT INTO `related_movies_likes` (`relation_id`, `user_id`) VALUES
(1, 1),
(1, 4),
(3, 1),
(4, 2),
(4, 5),
(5, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'administrator'),
(2, 'user');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `user_password` varchar(200) CHARACTER SET latin1 NOT NULL,
  `user_mail` varchar(200) CHARACTER SET latin1 NOT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_mail`, `user_role_id`) VALUES
(1, 'xpt26', 'e526778f9d934c7a2a3804e71dda623f4caeecade47042427b57c933375f08197ee6258ca86b42b7ce6d7cb77b823e0cbde045c8a9187654cd3bfd9da7143c7e', '', 1),
(2, 'romanIron', 'e526778f9d934c7a2a3804e71dda623f4caeecade47042427b57c933375f08197ee6258ca86b42b7ce6d7cb77b823e0cbde045c8a9187654cd3bfd9da7143c7e', '', 1),
(4, 'wdawdwaadaw', 'awdwa', 'awwawdwadwa', 2),
(5, 'awdawdwadwafgse', '12b03226a6d8be9c6e8cd5e55dc6c7920caaa39df14aab92d5e3ea9340d1c8a4d3d0b8e4314f1f6ef131ba4bf1ceb9186ab87c801af0d5c95b1befb8cedae2b9', '', 2);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD UNIQUE KEY `movie_csfd_id` (`movie_csfd_id`),
  ADD KEY `user_id` (`user_id`);
ALTER TABLE `movies` ADD FULLTEXT KEY `movie_name_czech` (`movie_name_czech`);
ALTER TABLE `movies` ADD FULLTEXT KEY `movie_name_origin` (`movie_name_origin`);
ALTER TABLE `movies` ADD FULLTEXT KEY `movie_name_czech_2` (`movie_name_czech`,`movie_name_origin`);

--
-- Klíče pro tabulku `related_movies`
--
ALTER TABLE `related_movies`
  ADD PRIMARY KEY (`relation_id`),
  ADD KEY `relatedMovie` (`movie_id`,`movie_related_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`),
  ADD KEY `fk_relatedMovies` (`movie_related_id`);

--
-- Klíče pro tabulku `related_movies_likes`
--
ALTER TABLE `related_movies_likes`
  ADD PRIMARY KEY (`relation_id`,`user_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`);

--
-- Klíče pro tabulku `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Klíče pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_role_id` (`user_role_id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT pro tabulku `related_movies`
--
ALTER TABLE `related_movies`
  MODIFY `relation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pro tabulku `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `fk_user_movies` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `related_movies`
--
ALTER TABLE `related_movies`
  ADD CONSTRAINT `fk_relatedMovies` FOREIGN KEY (`movie_related_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatedMovies2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_add_related_movies` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `related_movies_likes`
--
ALTER TABLE `related_movies_likes`
  ADD CONSTRAINT `fk_relation` FOREIGN KEY (`relation_id`) REFERENCES `related_movies` (`relation_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_likes` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
