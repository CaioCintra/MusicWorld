-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Dez-2018 às 15:50
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicworld`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `banda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `albums`
--

INSERT INTO `albums` (`id`, `nome`, `banda`) VALUES
(1, 'Venom', 6),
(2, 'Mezmerize', 31),
(3, 'Highway To Hell', 33),
(4, 'Back In Black', 33),
(5, 'Paranoid', 27);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bandas`
--

CREATE TABLE `bandas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `estilo` int(11) DEFAULT NULL,
  `pais` int(11) DEFAULT NULL,
  `inicio` char(4) DEFAULT NULL,
  `fim` char(4) DEFAULT NULL,
  `spotify` varchar(25) DEFAULT NULL,
  `descricao` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bandas`
--

INSERT INTO `bandas` (`id`, `nome`, `estilo`, `pais`, `inicio`, `fim`, `spotify`, `descricao`) VALUES
(6, 'Bullet For My Valentine', 8, 205, '1998', 'Hoje', '7iWiAD5LLKyiox2grgfmUT?', 'Bullet for My Valentine é uma banda de metalcore galesa de Bridgend, formada em 1998. Fazendo parte da cena musical de Cardiff, a banda é composta atualmente por Matt Tuck, Michael Paget, Jason Bowld e Jamie Mathias.'),
(12, 'Five Finger Death Punch', 8, 68, '2005', 'Hoje', '5t28BP42x2axFnqOOMg3CM?', 'Five Finger Death Punch Ã© uma banda de metal norte-americana de Las Vegas, Nevada, fundada em 2005. A banda foi batizada com esse nome, como um aceno para o clÃ¡ssico Kung Fu Cinema.'),
(15, 'P!nk', 10, 68, '2000', 'Hoje', '1KCSPY1glIKqW2TotWuXOR?', 'Alecia Beth Moore Hart, mais conhecida por seu nome artÃ­stico Pink, Ã© uma cantora e compositora norte-americana de pop, vencedora de trÃªs Grammys. LanÃ§ou o seu primeiro single There You Go e o seu primeiro Ã¡lbum, Cant take Me Home em 2000 pela LaFace Records.'),
(16, 'Rebeldes', 10, 31, '2011', '2013', '0B2Gvmgp2Euih3cAB8PvDc?', 'Rebeldes (tambÃ©m estilizada como RebeldeS) foi um grupo musical brasileiro surgido em 2011, na telenovela brasileira Rebelde (produzida pela Rede Record em parceria com a empresa mexicana Televisa e exibida pela primeira).[1] Na trama, os seis personagens principais â€” Alice, Carla, Diego, Pedro, Roberta e TomÃ¡s â€” formam uma banda fictÃ­cia, e os seis atores que interpretam tais personagens â€” respectivamente, Sophia AbrahÃ£o, Mel Fronckowiak, Arthur Aguiar, Micael Borges, Lua Blanco e Chay Suede â€” passaram a atuar como uma banda real.'),
(17, 'ZZ Top', 1, 68, '1969', 'Hoje', '2AM4ilv6UzW0uMRuqKtDgN', 'ZZ Top Ã© uma banda que mistura blues-rock com southern rock norte-americana, formada em 1969 em Houston, Texas. Os membros da banda sÃ£o: Billy Gibbons (vocal e guitarra), Dusty Hill (vocal e baixo) e Frank Beard (bateria). ZZ Top quase sempre aparece em pÃºblico usando Ã³culos escuros. Gibbons e Hill vestem roupas pretas semelhantes (geralmente couro de motociclista) e chapÃ©us de vaqueiro pretos ou bonÃ©s. Gibbons geralmente usa botas de motociclista pretas e correntes no pescoÃ§o com abridores de lata de cerveja. Apesar de Gibbons e Hill usarem barbas compridas, o baterista Beard usa apenas um bigode aparado.'),
(18, 'Far From Alaska', 1, 31, '2012', 'Hoje', '1ztNPX8z169arfAY0TWFLB', 'Far From Alaska Ã© uma banda brasileira de stoner rock fundada em 2012 em Natal, Rio Grande do Norte.'),
(19, 'Marilyn Manson', 8, 68, '1989', 'Hoje', '2VYQTNDsvvKN9wmU5W7xpj', 'Marilyn Manson Ã© um mÃºsico americano, lÃ­der e vocalista de uma banda epÃ´nima, conhecido por sua personalidade escandalosa. Seu nome artÃ­stico foi formado a partir dos nomes Marilyn Monroe e Charles Manson, mostrando o que ele considerava o Ãºltimo e mais perturbador dualismo da cultura estadunidense.'),
(20, 'Halestorm', 8, 68, '1997', 'Hoje', '6om12Ev5ppgoMy3OYSoech', 'Halestorm Ã© uma banda americana de hard rock formada em 1997, na cidade de York, PensilvÃ¢nia, pelos irmÃ£os Lzzy Hale e Arejay Hale. Imediatamente apÃ³s a formaÃ§Ã£o da banda, comeÃ§aram a compor mÃºsicas, trabalhar em novas demos e fazendo shows locais. Foi extremamente bem sucedido na PensilvÃ¢nia.'),
(21, 'Disturbed', 8, 68, '1994', 'Hoje', '3TOqt5oJwL9BE2NG9MEwDa', 'Disturbed Ã© uma banda de metal de Chicago, Illinois, formada em 1994 quando os mÃºsicos Dan Donegan, Steve  Kmak e Mike Wengren contrataram David Draiman como vocalista. A banda jÃ¡ lanÃ§ou seis Ã¡lbuns de estÃºdio; os cinco Ãºltimos estrearam consecutivamente no primeiro lugar na Billboard'),
(22, 'Hollywood Undead', 3, 68, '2005', 'Hoje', '0CEFCo8288kQU7mJi25s6E', 'Hollywood Undead Ã© uma banda de rap rock norte americana de Los Angeles, CalifÃ³rnia. A banda jÃ¡ vendeu mais de 2 milhÃµes de discos nos Estados Unidos, e cerca de 3 milhÃµes de discos em todo o mundo.'),
(23, 'Ego Kill Talent', 1, 31, '2014', 'Hoje', '2FkHoIxJdhomebqlsXKZ3i', 'Ego Kill Talent Ã© uma banda de rock brasileira de SÃ£o Paulo. A banda foi fundada em 2014 por Jean Dolabella e Theo van der Loo. O nome da banda Ã© uma versÃ£o encurtada do ditado Too much ego will kill your talent.'),
(24, 'Shinedown', 1, 68, '2001', 'Hoje', '70BYFdaZbEKbeauJ670ysI', 'Shinedown Ã© uma banda norte-americana de Jacksonville, FlÃ³rida formada atualmente por Brent Smith, Zach Myers, Eric Bass e Barry Kerch. O grupo lanÃ§ou o seu Ã¡lbum de estreia, Leave a Whisper, em 2003.'),
(25, 'Rammstein', 8, 9, '1994', 'Hoje', '6wWVKhxIU2cEi0K81v7HvP', 'Rammstein Ã© uma banda alemÃ£ formada em Berlim, em Janeiro de 1994. As mÃºsicas sÃ£o em sua maioria em alemÃ£o, mas tambÃ©m algumas em outros idiomas como inglÃªs, espanhol, francÃªs e russo e podem ser classificadas sob os estilos rock, Industrial metal, Neue Deutsche HÃ¤rte e Heavy Metal.'),
(26, 'Kiss', 1, 68, '1973', 'Hoje', '07XSN3sPlIlB2L2XNcTwJw', 'Kiss Ã© uma banda de hard rock dos Estados Unidos, formada em Nova Iorque em 1973 por Paul Stanley e Gene Simmons. Conhecida mundialmente por suas maquiagens, e por seus concertos que incluem guitarras esfumaÃ§antes, cuspir fogo e sangue, pirotecnias e outros efeitos.'),
(27, 'Black Sabbath', 1, 153, '1968', '2017', '5M52tdBnJaKSvOpJGz8mfZ', 'Black Sabbath foi uma banda de heavy metal britÃ¢nica formada no ano de 1968 em Birmingham pelo guitarrista e principal compositor Tony Iommi, o baixista e principal letrista Geezer Butler, o vocalista Ozzy Osbourne e o baterista Bill Ward.'),
(28, 'The Doors', 1, 68, '1965', '1972', '22WZ7M8sxp5THdruNY3gXt', 'The Doors foi uma banda de rock psicodÃ©lico norte-americana formada em 1965 em Los Angeles, na CalifÃ³rnia. O grupo era composto por Jim Morrison, Ray Manzarek, Robby Krieger e John Densmore. A banda recebeu esse nome por sugestÃ£o de Morrison do tÃ­tulo do livro de Aldous Huxley, The Doors of Perception.'),
(29, 'Queen', 1, 153, '1970', '1991', '1dfeR4HaWDbWqFHLkxsg1d', 'Queen foi uma banda britÃ¢nica de rock, fundada em 1970 e ativa, sob sua formaÃ§Ã£o clÃ¡ssica, atÃ© 1991. O grupo, formado por Brian May, Freddie Mercury, John Deacon e Roger Taylor Ã© frequentemente citado como um dos expoentes do seu estilo, tambÃ©m sendo um dos recordistas de vendas de discos a nÃ­vel mundial.'),
(30, 'The Police', 1, 153, '1976', '2008', '5NGO30tJxFlKixkPSgXcFE', 'The Police foi uma banda inglesa de rock, formada pelo baixista e vocalista Sting, o guitarrista Andy Summers e o baterista Stewart Copeland na cidade de Londres em 1976.'),
(31, 'System of a Down', 8, 68, '1994', 'Hoje', '5eAWCfyUhZtHHtBdNk56l1', 'System of a Down Ã© uma banda de metal formada em Glendale, CalifÃ³rnia em 1994. Ã‰ composta por Serj Tankian, Daron Malakian, Shavo Odadjian e John Dolmayan. O grupo Ã© conhecido pelas visÃµes polÃ­ticas e sociais que inserem nas letras de suas canÃ§Ãµes.'),
(32, 'The Rolling Stones', 1, 153, '1962', 'Hoje', '22bE4uQ6baNwSHPVcDxLCe', 'The Rolling Stones Ã© uma banda de rock britÃ¢nica formada em Londres em 1962 e considerada um dos maiores e mais bem sucedidos grupos musicais de todos os tempos. Ao lado dos Beatles, sÃ£o considerados a banda mais importante da chamada InvasÃ£o BritÃ¢nica ocorrida nos anos 1960.'),
(33, 'AC/DC', 1, 17, '1973', 'Hoje', '711MCceyCBcFnzjGY4Q7Un', 'AC/DC Ã© uma banda australiana de rock formada em Sydney, AustrÃ¡lia em 1973, pelos irmÃ£os escoceses Malcolm e Angus Young, sendo considerada umas das maiores e mais bem sucedidas bandas australianas de rock de todos os tempos. O estilo musical da banda Ã© normalmente classificado como hard rock e atÃ© mesmo blues rock.'),
(34, 'Metallica', 8, 68, '1981', 'Hoje', '2ye2Wgw4gimLv2eAKyk1NB', 'Metallica Ã© uma banda norte-americana de heavy metal originÃ¡ria de Los Angeles, mas com base em San Francisco.'),
(35, 'Scorpions', 1, 9, '1965', 'Hoje', '27T030eWyCQRmDyuvr1kxY', 'Scorpions Ã© uma banda de rock originÃ¡ria de HanÃ´ver, Alemanha fundada em 1965 pelo guitarrista Rudolf Schenker, sendo a primeira banda de hard rock formada no paÃ­s germÃ¢nico. No inÃ­cio eram chamadas de Nameless, depois passou para The Scorpions atÃ© o final de 1969, depois foram chamados simplesmente de Scorpions.'),
(36, 'Avril Lavigne', 1, 40, '2001', 'Hoje', '0p4nmQO2msCgU4IF37Wi3j', 'Avril Ramona Lavigne Ã© uma cantora, compositora e instrumentista canadense. TambÃ©m desenvolve trabalhos paralelos na Ã¡rea do design de moda, da filantropia e, ocasionalmente, como atriz.'),
(37, 'MC GuimÃª', 5, 31, '2010', 'Hoje', '3ge4xOaKvWfhRwgx0Rldov', 'Guilherme Aparecido Dantas, mais conhecido pelo nome artÃ­stico MC GuimÃª, Ã© um cantor e compositor brasileiro.'),
(38, 'MC Pedrinho', 5, 31, '2015', 'Hoje', '1etNnR2SdlelBQAICa2Q5m', 'Pedro Maia Tempester, mais conhecido pelo nome artÃ­stico MC Pedrinho, Ã© um cantor brasileiro de funk ousadia, conhecido nacionalmente pelo hit \"Dom Dom Dom\", o qual acumula mais de vinte milhÃµes de visualizaÃ§Ãµes em seu clipe oficial.'),
(39, 'MC Brinquedo', 5, 31, '2014', 'Hoje', '1SZXYhJz4sqEss888VmWLP', 'Vinicius Ricardo de Santos Moura, mais conhecido pelo nome artÃ­stico MC Brinquedo, Ã© um cantor brasileiro de funk ousadia.'),
(40, 'MC Lan', 5, 31, '2011', 'Hoje', '4mb1xtQVGSK5dh8AbtwBiR', 'Caio Alexandre Cruz, mais conhecido pelo nome artÃ­stico MC Lan, Ã© um cantor brasileiro de funk paulista.'),
(41, 'Turma do Pagode', 9, 31, '2001', 'Hoje', '5JG9GISYjRLQUJMH2C6iJ5', 'Turma do Pagode Ã© um grupo brasileiro de samba e pagode formado em 2001 no bairro de Parada Inglesa, Zona Norte de SÃ£o Paulo. Famosos pela sua mÃºsica que alcanÃ§ou o primeiro lugar nas paradas de sucesso \"Lancinho\".'),
(42, 'Molejo', 9, 31, '1988', 'Hoje', '7yl05GUXqcUA3mfpowr1fe', 'Molejo, tambÃ©m conhecido como MolejÃ£o, Ã© um grupo musical carioca de pagode formado em 1988 no bairro do MÃ©ier. por Anderson Leonardo, Andrezinho, William AraÃºjo, Claumirzinho, LÃºcio Nascimento e Vadinho.'),
(43, 'Exaltasamba', 9, 31, '1982', '2012', '6VPRGmbZ0dupZrbwwEDRRw', 'Exaltasamba ou Exalta Ã© um grupo brasileiro de pagode. Formado em SÃ£o Bernardo do Campo em 1982, sendo que a sua primeira formaÃ§Ã£o sempre foi desconhecida.'),
(44, 'Thiaguinho', 9, 31, '2012', 'Hoje', '1vppDmG3i5sXf3DJzrK4T1', 'Thiago AndrÃ© Barbosa, mais conhecido como Thiaguinho, Ã© um cantor, compositor e apresentador brasileiro. Ficou famoso por participar do reality show Fama e por ter sido integrante do grupo de Samba e Pagode Exaltasamba.'),
(45, 'Wolfgang Amadeus Mozart', 4, 18, '1761', '1791', '4NJhFmfw43RLBLjQvxDuRS', 'Wolfgang Amadeus Mozart foi um prolÃ­fico e influente compositor austrÃ­aco do perÃ­odo clÃ¡ssico. Mozart mostrou uma habilidade musical prodigiosa desde sua infÃ¢ncia.'),
(46, 'Ludwig van Beethoven', 4, 9, '1783', '1827', '2wOqMjp9TyABvtHdOSOTUS', 'Ludwig van Beethoven foi um compositor alemÃ£o, do perÃ­odo de transiÃ§Ã£o entre o Classicismo e o Romantismo.'),
(47, 'Antonio Vivaldi', 4, 99, '1705', '1741', '2QOIawHpSlOwXDvSqQ9YJR', 'Antonio Lucio Vivaldi foi um grande compositor e mÃºsico do estilo barroco tardio oriundo da RepÃºblica de Veneza, atual ItÃ¡lia. Tinha a alcunha de il Prete Rosso por ser um sacerdote catÃ³lico de cabelos ruivos. CompÃ´s 770 obras, entre as quais 477 concertos e 46 Ã³peras.'),
(48, 'Heitor Villa-Lobos', 4, 31, '1915', '1958', '01UzgUtDa2NqWuvUjrrl3p', 'Heitor Villa-Lobos foi um compositor brasileiro. Destaca-se por ter sido o principal responsÃ¡vel pela descoberta de uma linguagem peculiarmente brasileira em mÃºsica.'),
(49, 'Martin Garrix', 7, 141, '2007', 'Hoje', '60d24wfXkVzDSfLS6hyCjZ', 'Martijn Gerard Garritsen, mais conhecido pelo nome artÃ­stico de Martin Garrix, Ã© um produtor, DJ e remixer holandÃªs. Ele Ã© especialmente conhecido pela canÃ§Ã£o \"Animals\", que atingiu o topo de listas musicais em mais de dez paÃ­ses e conta com mais de 3 bilhÃµes de visualizaÃ§Ãµes no YouTube.'),
(50, 'KSHMR', 7, 68, '2006', 'Hoje', '2wX6xSig4Rig5kZU6ePlWe', 'Traduzido do inglÃªs-Niles Hollowell-Dhar, mais conhecido por seu nome artÃ­stico Kshmr, Ã© um mÃºsico americano, produtor musical e DJ de Berkeley, CalifÃ³rnia. Ele foi classificado em 23Âº no Top 100 DJs de 2015 da DJ Mag e foi premiado com \"The Highest New Entry\".'),
(51, 'Alok', 7, 31, '2004', 'Hoje', '0NGAZxHanS9e0iNHpR8f2W', 'Alok Achkar Peres Petrillo Ã© um DJ e produtor musical brasileiro de mÃºsica eletrÃ´nica e 13Âº melhor DJ do mundo segundo a revista DJ Mag. Ele acompanhava seus pais ao lado de seu irmÃ£o gÃªmeo Bhaskar , em suas apresentaÃ§Ãµes de psy trance pelo paÃ­s, depois decidiram formar o projeto ao vivo de trance LÃ³gica.'),
(52, 'Marshmello', 7, 68, '2015', 'Hoje', '64KEffDW9EtZ1y2vBYgq8T', 'Marshmello Ã© um DJ e produtor de mÃºsica norte-americano. Ficou amplamente conhecido apÃ³s a mÃºsica \"Alone\" alcanÃ§ar o Billboard Hot 100. O DJ costuma fazer remixes de mÃºsicas de outros cantores, mas tambÃ©m as compÃµe. Seus fÃ£s sÃ£o conhecidos por Mellogang.'),
(53, 'Skrillex', 7, 68, '2004', 'Hoje', '5he5w2lnU9x7JFhnwcekXX', 'Sonny John Moore, mais conhecido como Skrillex, Ã© um produtor musical norte americano de mÃºsica eletrÃ´nica do gÃªnero dubstep e trap, cantor e compositor.'),
(54, 'Michael Jackson', 10, 68, '1964', '2009', '3fMbdgg4jU18AjLCKBhRSm', 'Michael Joseph Jackson foi um cantor, compositor, danÃ§arino, produtor, empresÃ¡rio, arranjador vocal, filantropo, pacifista e ativista estadunidense. Segundo a revista Rolling Stone, faturou em vida cerca de sete bilhÃµes de dÃ³lares, tornando-se o artista mais rico da histÃ³ria.'),
(55, 'Katy Perry', 10, 68, '2001', 'Hoje', '6jJ0s89eD6GaHleKKya26X', 'Katheryn Elizabeth Hudson, conhecida pelo nome artÃ­stico Katy Perry, Ã© uma cantora, compositora e atriz norte-americana. '),
(56, 'Taylor Swift', 10, 68, '2006', 'Hoje', '06HL4z0CvFAxyc27GXpf02', 'Taylor Alison Swift Ã© uma cantora e compositora norte-americana. Uma das mais populares cantoras da atualidade, ela Ã© conhecida por canÃ§Ãµes narrativas sobre sua vida pessoal, que receberam bastante atenÃ§Ã£o da mÃ­dia. Conhecida tambÃ©m por ter um clipe gravado por Matheus Batinelas.'),
(57, 'Ramones', 11, 68, '1974', '1996', '1co4F2pPNH8JjTutZkmgSm', 'Os Ramones foram uma banda norte-americana de punk rock formada em Forest Hills, no distrito de Queens, Nova York, no ano de 1974. Considerada como precursora do estilo e uma das bandas mais influentes e importantes da histÃ³ria do rock.'),
(58, 'Sex Pistols', 11, 153, '1975', '2008', '1u7kkVrr14iBvrpYnZILJR', 'Sex Pistols foi uma banda inglesa de punk rock formada em Londres em 1975, considerada responsÃ¡vel por ter comeÃ§ado o movimento punk no Reino Unido e ter influenciado muitos mÃºsicos de punk rock e rock alternativo.'),
(59, 'Green Day', 11, 68, '1987', 'Hoje', '7oPftvlwr6VrsViSDV7fJY', 'Green Day Ã© uma banda de punk rock dos Estados Unidos formada em 1986 em Berkeley, CalifÃ³rnia. A banda Ã© composta por 3 membros: Billie Joe Armstrong, Mike Dirnt e TrÃ© Cool. A banda foi formada no inÃ­cio de 1987 com o nome de Sweet Children, com o baterista Al Sobrante.'),
(60, 'The Offspring', 11, 68, '1984', 'Hoje', '5LfGQac0EIXyAN8aUwmNAQ', 'The Offspring Ã© uma banda de punk rock dos Estados Unidos formada em 1984 na cidade de Huntington Beach, CalifÃ³rnia. Seus membros atuais sÃ£o: Dexter Holland, Greg K., Kevin \"Noodles\" Wasserman e Pete Parada.'),
(61, 'Reality', 1, 31, '2018', 'Hoje', '', 'A banda reality Ã© uma banda formada em 2018 durante o periodo universitÃ¡rio dos integrantes Caio Cintra, Enzo Italiano e Guilherme Senise. Conhecida por distorcer a realidade e seu estilo de musica romÃ¢ntico. Seu primeiro show foi no festival de musicas da UTFPR Fetamut em 2018.'),
(62, 'Ray Charles', 6, 68, '1955', '2004', '1eYhYunlNJlDoQhtYBvPsi', 'Ray Charles Robinson foi um pianista norte-americano, pioneiro e cantor de mÃºsica soul, blues, jazz que ajudou a definir o seu formato ainda no fim dos anos 50, alÃ©m de um inovador intÃ©rprete de R&B.'),
(63, 'Frank Sinatra', 6, 68, '1935', '1998', '1Mxqyy3pSjf8kZZL4QVxS0', 'Francis Albert \"Frank\" Sinatra foi um cantor, ator, e produtor americano, sendo considerado um dos mais populares e influentes artistas musicais do sÃ©culo 20. Ele Ã© um dos maiores recordistas de vendas de discos de todos os tempos, com mais de 150 milhÃµes de discos vendidos.'),
(64, 'Dexter Gordon', 6, 68, '1940', '1980', '3NUsiT2JSyaWAnWaXxDzhQ', 'Dexter Gordon foi um mÃºsico de jazz estadunidense, considerado um dos pioneiros do bebop. Entre 1940 e 1980 tocou com grandes nomes, tais como Lionel Hampton, Tadd Dameron, Charles Mingus, Louis Armstrong e Billy Eckstine. TambÃ©m tocou, durante alguns meses de 1947, com a banda de Fletcher Henderson.'),
(65, 'Bruno & Marrone', 12, 31, '1985', 'Hoje', '5JXhkyafynxCvxtov7C1PV', 'Bruno & Marrone Ã© uma dupla brasileira de mÃºsica sertaneja formada pelos cantores VinÃ­cius FÃ©lix de Miranda, conhecido artisticamente como Bruno, e JosÃ© Roberto Ferreira, conhecido artisticamente como Marrone. Com sua formaÃ§Ã£o em 1985, a dupla tem mais de 30 anos de carreira.'),
(66, 'ZÃ© Neto & Cristiano', 12, 31, '2011', 'Hoje', '487N2T9nIPEHrlTZLL3SQs', 'ZÃ© Neto & Cristiano Ã© uma dupla sertaneja brasileira formada por JosÃ© Toscano Martins Neto e Irineu TÃ¡paro Vaccari, ambos nascidos em SÃ£o JosÃ© do Rio Preto em SÃ£o Paulo.\r\n'),
(67, 'Jorge & Mateus', 12, 31, '2005', 'Hoje', '1elUiq4X7pxej6FRlrEzjM', 'Jorge & Mateus Ã© uma dupla de mÃºsica sertaneja Brasileira, formada pelos cantores goianos Jorge Alves Barcelos e Mateus Pedro LiduÃ¡rio Oliveira, que jÃ¡ venderam em mÃ©dia 6 milhÃµes de cÃ³pias, alÃ©m de possuÃ­rem um patrimÃ´nio avaliado em mais de 90 milhÃµes e serem considerados uma das maiores duplas sertanejas do Brasil.'),
(68, 'Krawk', 3, 31, '2015', 'Hoje', '7a99I3BHPvsv4aBVNqb4g4', 'Krawk Ã© um rapper brasileiro que comeÃ§ou improvizando na Batalha Da Aldeia em 2015, agora Ã© compositor de suas prÃ³prias musicas.'),
(69, 'Lil Peep', 3, 68, '2014', '2017', '2kCcBybjl3SAtIcwdWpUe3', 'Gustav Elijah Ã…hr, mais conhecido pelo nome artÃ­stico Lil Peep, foi um cantor e rapper norte-americano. Suas canÃ§Ãµes \"Awful Things\", \"Benz Truck\" \"Star Shopping\", \"Cry baby\" \"The Way I See Things\", \"Save That Shit\", entre outras ganharam muita fama no SoundCloud e YouTube.'),
(70, 'XXXTentacion', 3, 68, '2013', '2018', '15UsOTVnJzReFVN1VCnxy4', 'Jahseh Dwayne Ricardo Onfroy, mais conhecido pelo seu nome artÃ­stico XXXTentacion, foi um rapper, cantor e compositor americano. Ficou conhecido pela canÃ§Ã£o \"Look at Me!\" e por constantes polÃªmicas envolvendo agressÃµes fÃ­sicas e, por uma desavenÃ§a com o rapper Rob Stone, junto com seu amigo Ski Mask, the Slump God. '),
(71, 'Post Malone', 3, 68, '2015', 'Hoje', '246dkjvS1zLTtiykXe5h60', 'Post Malone, nome artÃ­stico de Austin Richard Post, Ã© um rapper americano. Ele ganhou reconhecimento em fevereiro de 2015, quando lanÃ§ou seu single de estreia, \"White Iverson\".'),
(72, 'Lil Pump', 3, 68, '2016', 'Hoje', '3wyVrVrFCkukjdVIdirGVY', 'Gazzy Garcia, conhecido artisticamente como Lil Pump, Ã© um rapper e compositor americano. Pump comeÃ§ou sua carreira em 2016, enviando canÃ§Ãµes ao site SoundCloud'),
(73, 'Avenged Sevenfold', 8, 68, '1999', 'Hoje', '0nmQIMXWTXfhgOBdNzhGOs', 'Avenged Sevenfold Ã© uma banda norte-americana de heavy metal de Huntington Beach, CalifÃ³rnia. Formada em 1999, a banda consiste no vocalista M. Shadows, os guitarristas Zacky Vengeance e Synyster Gates, o baixista Johnny Christ e o baterista Brooks Wackerman.'),
(74, 'Armin van Buuren', 7, 141, '1995', 'Hoje', '0SfsnGyD8FpIN4U4WCkBZ5', 'Armin van Buuren Ã© um DJ e produtor musical dos PaÃ­ses Baixos, especialista em trance. Ele foi eleito o DJ nÃºmero 1 em 2007, 2008, 2009, 2010 e 2012; por votaÃ§Ã£o dos Top 100 DJs da DJ Magazine, um recorde de 5 vezes. ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estilo`
--

CREATE TABLE `estilo` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estilo`
--

INSERT INTO `estilo` (`id`, `nome`) VALUES
(1, 'Rock'),
(3, 'Rap'),
(4, 'ClÃ¡ssica'),
(5, 'Funk'),
(6, 'Jazz'),
(7, 'EletrÃ´nica'),
(8, 'Metal'),
(9, 'Pagode'),
(10, 'Pop'),
(11, 'Punk'),
(12, 'Sertanejo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `instrumentos`
--

CREATE TABLE `instrumentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `instrumentos`
--

INSERT INTO `instrumentos` (`id`, `nome`) VALUES
(1, 'Guitarra'),
(2, 'Baixo'),
(3, 'Voz'),
(4, 'Bateria'),
(5, 'Teclado'),
(6, 'Piano'),
(13, 'Saxofone');

-- --------------------------------------------------------

--
-- Estrutura da tabela `integrantes`
--

CREATE TABLE `integrantes` (
  `id` int(11) NOT NULL,
  `pessoa` int(11) NOT NULL,
  `banda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `integrantes`
--

INSERT INTO `integrantes` (`id`, `pessoa`, `banda`) VALUES
(1, 1, 31),
(2, 2, 31),
(3, 3, 33),
(4, 4, 33),
(5, 5, 33),
(6, 6, 33),
(7, 7, 33);

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicas`
--

CREATE TABLE `musicas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `album` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `musicas`
--

INSERT INTO `musicas` (`id`, `nome`, `album`) VALUES
(7, 'B.Y.O.B', 2),
(8, 'No Way Out', 1),
(9, 'Highway To Hell', 3),
(10, 'Girls Got Rhythm', 3),
(11, 'Walk All Over You', 3),
(12, 'Touch Too Much', 3),
(13, 'Beating Around The Bush', 3),
(14, 'Shot Down in Flames', 3),
(15, 'Get It Hot', 3),
(16, 'Hells Bells', 4),
(17, 'Shoot to Thrill', 4),
(18, 'What Do You Do For Money Honey', 4),
(19, 'Givin The Dog A Bone', 4),
(20, 'Paranoid', 5),
(21, 'War Pigs', 5),
(22, 'Iron Man', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`id`, `nome`) VALUES
(6, 'AfeganistÃ£o'),
(7, 'Ãfrica do Sul'),
(8, 'AlbÃ¢nia'),
(9, 'Alemanha'),
(10, 'Andorra'),
(11, 'Angola'),
(12, 'Antiga e Barbuda'),
(13, 'ArÃ¡bia Saudita'),
(14, 'ArgÃ©lia'),
(15, 'Argentina'),
(16, 'ArmÃ©nia'),
(17, 'AustrÃ¡lia'),
(18, 'Ãustria'),
(19, 'AzerbaijÃ£o'),
(20, 'Bahamas'),
(21, 'Bangladexe'),
(22, 'Barbados'),
(23, 'BarÃ©m'),
(24, 'BÃ©lgica'),
(25, 'Belize'),
(26, 'Benim'),
(27, 'BielorrÃºssia'),
(28, 'BolÃ­via'),
(29, 'BÃ³snia e Herzegovina'),
(30, 'Botsuana'),
(31, 'Brasil'),
(32, 'Brunei'),
(33, 'BulgÃ¡ria'),
(34, 'Burquina Faso'),
(35, 'BurÃºndi'),
(36, 'ButÃ£o'),
(37, 'Cabo Verde'),
(38, 'CamarÃµes'),
(39, 'Camboja'),
(40, 'CanadÃ¡'),
(41, 'Catar'),
(42, 'CazaquistÃ£o'),
(43, 'Chade'),
(44, 'Chile'),
(45, 'China'),
(46, 'Chipre'),
(47, 'ColÃ´mbia'),
(48, 'Comores'),
(49, 'Congo-Brazzaville'),
(50, 'Coreia do Norte'),
(51, 'Coreia do Sul'),
(52, 'Cosovo'),
(53, 'Costa do Marfim'),
(54, 'Costa Rica'),
(55, 'CroÃ¡cia'),
(56, 'Cuaite'),
(57, 'Cuba'),
(58, 'Dinamarca'),
(59, 'Dominica'),
(60, 'Egito'),
(61, 'Emirados Ãrabes Unidos'),
(62, 'Equador'),
(63, 'Eritreia'),
(64, 'EslovÃ¡quia'),
(65, 'EslovÃ©nia'),
(66, 'Espanha'),
(67, 'Estado da Palestina'),
(68, 'Estados Unidos'),
(69, 'EstÃ³nia'),
(70, 'EtiÃ³pia'),
(71, 'Fiji'),
(72, 'Filipinas'),
(73, 'FinlÃ¢ndia'),
(74, 'FranÃ§a'),
(75, 'GabÃ£o'),
(76, 'GÃ¢mbia'),
(77, 'Gana'),
(78, 'GeÃ³rgia'),
(79, 'Granada'),
(80, 'GrÃ©cia'),
(81, 'Guatemala'),
(82, 'Guiana'),
(83, 'GuinÃ©'),
(84, 'GuinÃ© Equatorial'),
(85, 'GuinÃ©-Bissau'),
(86, 'Haiti'),
(87, 'Honduras'),
(89, 'Hungria'),
(90, 'IÃ©men'),
(91, 'Ilhas Marechal'),
(92, 'Ãndia'),
(93, 'IndonÃ©sia'),
(94, 'IrÃ£'),
(95, 'Iraque'),
(96, 'Irlanda'),
(97, 'IslÃ¢ndia'),
(98, 'Israel'),
(99, 'ItÃ¡lia'),
(100, 'Jamaica'),
(101, 'JapÃ£o'),
(102, 'Jibuti'),
(103, 'JordÃ¢nia'),
(104, 'Laus'),
(105, 'Lesoto'),
(106, 'LetÃ³nia'),
(107, 'LÃ­bano'),
(108, 'LibÃ©ria'),
(109, 'LÃ­bia'),
(110, 'Listenstaine'),
(111, 'LituÃ¢nia'),
(112, 'Luxemburgo'),
(113, 'MacedÃ³nia'),
(114, 'MadagÃ¡scar'),
(115, 'MalÃ¡sia'),
(116, 'MalÃ¡ui'),
(117, 'Maldivas'),
(118, 'Mali'),
(119, 'Malta'),
(120, 'Marrocos'),
(121, 'MaurÃ­cia'),
(122, 'MauritÃ¢nia'),
(123, 'MÃ©xico'),
(124, 'Mianmar'),
(125, 'MicronÃ©sia'),
(126, 'MoÃ§ambique'),
(127, 'MoldÃ¡via'),
(128, 'MÃ³naco'),
(129, 'MongÃ³lia'),
(130, 'Montenegro'),
(131, 'NamÃ­bia'),
(132, 'Nauru'),
(133, 'Nepal'),
(134, 'NicarÃ¡gua'),
(135, 'NÃ­ger'),
(136, 'NigÃ©ria'),
(138, 'Noruega'),
(139, 'Nova ZelÃ¢ndia'),
(140, 'OmÃ£'),
(141, 'PaÃ­ses Baixos'),
(142, 'Palau'),
(143, 'PanamÃ¡'),
(144, 'Papua Nova GuinÃ©'),
(145, 'PaquistÃ£o'),
(146, 'Paraguai'),
(147, 'Peru'),
(148, 'PolÃ³nia'),
(149, 'Portugal'),
(150, 'QuÃ©nia'),
(151, 'QuirguistÃ£o'),
(152, 'QuiribÃ¡ti'),
(153, 'Reino Unido'),
(154, 'RepÃºblica Centro-Africana'),
(155, 'RepÃºblica Checa'),
(156, 'RepÃºblica DemocrÃ¡tica do Congo'),
(157, 'RepÃºblica Dominicana'),
(158, 'RomÃ©nia'),
(159, 'Ruanda'),
(160, 'RÃºssia'),
(161, 'SalomÃ£o'),
(162, 'Salvador'),
(163, 'Samoa'),
(164, 'Santa LÃºcia'),
(165, 'SÃ£o CristÃ³vÃ£o e Neves'),
(166, 'SÃ£o Marinho'),
(167, 'SÃ£o TomÃ© e PrÃ­ncipe'),
(168, 'SÃ£o Vicente e Granadinas'),
(169, 'Seicheles'),
(170, 'Senegal'),
(171, 'Serra Leoa'),
(172, 'SÃ©rvia'),
(173, 'Singapura'),
(174, 'SÃ­ria'),
(175, 'SomÃ¡lia'),
(176, 'Sri Lanca'),
(177, 'SuazilÃ¢ndia'),
(178, 'SudÃ£o'),
(179, 'SudÃ£o do Sul'),
(180, 'SuÃ©cia'),
(181, 'SuÃ­Ã§a'),
(182, 'Suriname'),
(183, 'TailÃ¢ndia'),
(184, 'TaiuÃ£'),
(185, 'TajiquistÃ£o'),
(186, 'TanzÃ¢nia'),
(187, 'Timor-Leste'),
(188, 'Togo'),
(189, 'Tonga'),
(190, 'Trindade e Tobago'),
(191, 'TunÃ­sia'),
(192, 'TurcomenistÃ£o'),
(193, 'Turquia'),
(194, 'Tuvalu'),
(195, 'UcrÃ¢nia'),
(196, 'Uganda'),
(197, 'Uruguai'),
(198, 'UsbequistÃ£o'),
(199, 'Vanuatu'),
(200, 'Vaticano'),
(201, 'Venezuela'),
(202, 'Vietname'),
(203, 'ZÃ¢mbia'),
(204, 'ZimbÃ¡bue'),
(205, 'País De Gales');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`) VALUES
(1, 'Serj Tankian'),
(2, 'Daron Malakian'),
(3, 'Angus Young'),
(4, 'Brian Johnson'),
(5, 'Malcolm Young'),
(6, 'Phil Rudd'),
(7, 'Cliff Williams');

-- --------------------------------------------------------

--
-- Estrutura da tabela `recomendacao`
--

CREATE TABLE `recomendacao` (
  `idb1` int(11) NOT NULL,
  `idb2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `recomendacao`
--

INSERT INTO `recomendacao` (`idb1`, `idb2`) VALUES
(23, 18),
(31, 21),
(33, 27),
(27, 33),
(36, 61),
(6, 73);

-- --------------------------------------------------------

--
-- Estrutura da tabela `toca`
--

CREATE TABLE `toca` (
  `pessoa` int(11) NOT NULL,
  `instrumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `toca`
--

INSERT INTO `toca` (`pessoa`, `instrumento`) VALUES
(1, 31),
(1, 3),
(2, 1),
(2, 3),
(4, 3),
(6, 4),
(3, 1),
(6, 4),
(7, 2),
(5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banda` (`banda`);

--
-- Indexes for table `bandas`
--
ALTER TABLE `bandas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pais` (`pais`),
  ADD KEY `estilo` (`estilo`);

--
-- Indexes for table `estilo`
--
ALTER TABLE `estilo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `integrantes`
--
ALTER TABLE `integrantes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musicas`
--
ALTER TABLE `musicas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album` (`album`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recomendacao`
--
ALTER TABLE `recomendacao`
  ADD PRIMARY KEY (`idb1`),
  ADD KEY `FK_idb2` (`idb2`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `bandas`
--
ALTER TABLE `bandas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `estilo`
--
ALTER TABLE `estilo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `instrumentos`
--
ALTER TABLE `instrumentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `integrantes`
--
ALTER TABLE `integrantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `musicas`
--
ALTER TABLE `musicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`banda`) REFERENCES `bandas` (`id`);

--
-- Limitadores para a tabela `recomendacao`
--
ALTER TABLE `recomendacao`
  ADD CONSTRAINT `FK_idb` FOREIGN KEY (`idb1`) REFERENCES `bandas` (`id`),
  ADD CONSTRAINT `FK_idb2` FOREIGN KEY (`idb2`) REFERENCES `bandas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
