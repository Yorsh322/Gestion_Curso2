-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2016 a las 14:28:57
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `resource_app_development`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academics`
--

CREATE TABLE IF NOT EXISTS `academics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `academics`
--

INSERT INTO `academics` (`id`, `subject_id`, `semester_id`, `group_id`, `course_id`, `created_at`, `updated_at`, `catalog_id`) VALUES
(1, 2, 1, 1, 1, '2016-04-11 03:43:34', '2016-04-11 03:43:34', NULL),
(2, 1, 1, 1, 1, '2016-04-11 03:44:06', '2016-04-11 03:44:06', NULL),
(3, 1, 1, 1, 2, '2016-04-11 03:58:11', '2016-04-11 03:58:11', NULL),
(4, 2, 1, 1, 2, '2016-04-11 03:59:09', '2016-04-11 03:59:09', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acquisitions`
--

CREATE TABLE IF NOT EXISTS `acquisitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `programa` text COLLATE utf8_unicode_ci,
  `real` text COLLATE utf8_unicode_ci,
  `observacion` text COLLATE utf8_unicode_ci,
  `revision` text COLLATE utf8_unicode_ci,
  `thp` int(11) DEFAULT NULL,
  `thr` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `acquisitions`
--

INSERT INTO `acquisitions` (`id`, `programa`, `real`, `observacion`, `revision`, `thp`, `thr`, `content_id`, `created_at`, `updated_at`) VALUES
(1, '- 18 Agosto\r\n- 19 Septiembre', '-', '-', '-', 20, 0, 1, '2016-04-06 16:54:44', '2016-04-06 16:54:44'),
(2, '- 22 Septiembre\r\n- 10 de Octubre', '-', '-', '-', 12, 0, 2, '2016-04-06 16:55:40', '2016-04-06 16:55:40'),
(3, '- 13 Octubre\r\n- 07 Noviembre', '-', '-', '-', 16, 0, 3, '2016-04-06 16:56:44', '2016-04-06 16:56:44'),
(4, '- 10 Noviembre\r\n- 05 Diciembre', '-', '-', '-', 16, 0, 4, '2016-04-06 16:57:38', '2016-04-06 16:57:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendars`
--

CREATE TABLE IF NOT EXISTS `calendars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inicia` date DEFAULT NULL,
  `finaliza` date DEFAULT NULL,
  `period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `calendars`
--

INSERT INTO `calendars` (`id`, `inicia`, `finaliza`, `period`, `year`, `status`, `created_at`, `updated_at`) VALUES
(1, '2015-08-24', '2015-12-18', 'Agosto - Diciembre', 2015, 1, '2016-04-05 19:44:11', '2016-04-05 19:44:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `careers`
--

CREATE TABLE IF NOT EXISTS `careers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `careers`
--

INSERT INTO `careers` (`id`, `name`, `plan`, `created_at`, `updated_at`) VALUES
(1, 'Ingeniería en Sistemas Computacionales', 'ISIC-2010', '2016-04-05 19:45:26', '2016-04-05 22:14:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogs`
--

CREATE TABLE IF NOT EXISTS `catalogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `professor_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `catalogs`
--

INSERT INTO `catalogs` (`id`, `subject_id`, `group_id`, `semester_id`, `professor_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, '2016-04-11 05:03:30', '2016-04-11 05:03:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competitions`
--

CREATE TABLE IF NOT EXISTS `competitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `generica` text COLLATE utf8_unicode_ci,
  `instrumental` text COLLATE utf8_unicode_ci,
  `interpersonal` text COLLATE utf8_unicode_ci,
  `sistematica` text COLLATE utf8_unicode_ci,
  `content_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `competitions`
--

INSERT INTO `competitions` (`id`, `generica`, `instrumental`, `interpersonal`, `sistematica`, `content_id`, `created_at`, `updated_at`) VALUES
(1, NULL, '<p style="text-align: justify;">&bull; Capacidad de an&aacute;lisis, s&iacute;ntesis y abstracci&oacute;n.</p>\r\n\r\n<p style="text-align: justify;">&bull; Capacidad de comunicaci&oacute;n oral y escrita.</p>\r\n\r\n<p style="text-align: justify;">&bull; Habilidad en el uso de TI y comunicaci&oacute;n.</p>\r\n', '<p style="text-align: justify;">&bull; Capacidad para trabajar en equipo.</p>\r\n', '<p style="text-align: justify;">&bull; Habilidades de investigaci&oacute;n.</p>\r\n\r\n<p style="text-align: justify;">&bull; Liderazgo.</p>\r\n\r\n<p style="text-align: justify;">&bull; Capacidad de generar nuevas ideas (creatividad).</p>\r\n', 1, '2016-04-06 17:29:03', '2016-04-06 17:59:05'),
(2, NULL, '<p>&bull; Capacidad de an&aacute;lisis, s&iacute;ntesis y abstracci&oacute;n.</p>\r\n\r\n<p>&bull; Capacidad de comunicaci&oacute;n oral y escrita.</p>\r\n\r\n<p>&bull; Habilidad en el uso de TI y comunicaci&oacute;n.</p>\r\n', '<p>&bull; Compromiso &eacute;tico.</p>\r\n', '<p>&bull; Habilidades de investigaci&oacute;n.</p>\r\n\r\n<p>&bull; Capacidad de aplicar los conocimientos en la pr&aacute;ctica.</p>\r\n\r\n<p>&bull; Capacidad de generar nuevas ideas (creatividad).</p>\r\n\r\n<p>&bull; B&uacute;squeda de logro.</p>\r\n', 2, '2016-04-06 17:30:26', '2016-04-06 17:59:43'),
(3, NULL, '<p>&bull; Capacidad de an&aacute;lisis, s&iacute;ntesis y abstracci&oacute;n.</p>\r\n\r\n<p>&bull; Capacidad de comunicaci&oacute;n oral y escrita.</p>\r\n\r\n<p>&bull; Habilidad en el uso de TI y comunicaci&oacute;n.</p>\r\n\r\n<p>&bull; Capacidad para identificar, plantear y resolver problemas.</p>\r\n\r\n<p>&bull; Capacidad para gestionar y formular proyectos.</p>\r\n', '<p>&bull; Capacidad para trabajar en equipo.</p>\r\n', '<p>&bull; Habilidades de investigaci&oacute;n.</p>\r\n\r\n<p>&bull; Capacidad de aplicar los conocimientos en la pr&aacute;ctica.</p>\r\n\r\n<p>&bull; Liderazgo.</p>\r\n\r\n<p>&bull; Capacidad de generar nuevas ideas (creatividad).</p>\r\n', 3, '2016-04-06 17:31:48', '2016-04-06 18:00:43'),
(4, NULL, '<p>&bull; Capacidad de an&aacute;lisis, s&iacute;ntesis y abstracci&oacute;n.</p>\r\n\r\n<p>&bull; Capacidad de comunicaci&oacute;n oral y escrita.</p>\r\n\r\n<p>&bull; Habilidad en el uso de TI y comunicaci&oacute;n.</p>\r\n\r\n<p>&bull; Capacidad para identificar, plantear y resolver problemas.</p>\r\n\r\n<p>&bull; Capacidad para gestionar y formular proyectos.</p>\r\n', '<p>&bull; Compromiso &eacute;tico.</p>\r\n', '<p>&bull; Habilidades de investigaci&oacute;n.</p>\r\n\r\n<p>&bull; Iniciativa y esp&iacute;ritu emprendedor.</p>\r\n', 4, '2016-04-06 17:32:39', '2016-04-06 18:01:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unidad` int(11) DEFAULT NULL,
  `tema` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtema` text COLLATE utf8_unicode_ci,
  `fuente` text COLLATE utf8_unicode_ci,
  `didactico` text COLLATE utf8_unicode_ci,
  `summary_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `contents`
--

INSERT INTO `contents` (`id`, `unidad`, `tema`, `subtema`, `fuente`, `didactico`, `summary_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Estudio del desarrollo de su profesión y su estado actual.', '<p style="text-align: justify;">1.1 Historia, desarrollo y estado actual de la&nbsp;profesi&oacute;n.<br />\r\n1.2 Los &aacute;mbitos del desarrollo de la profesi&oacute;n&nbsp;en el contexto social.<br />\r\n1.3 Las pr&aacute;cticas predominantes y emergentes&nbsp;de la profesi&oacute;n en el contexto internacional,&nbsp;nacional y local.<br />\r\n1.4 Sectores productivos y de servicios del&nbsp;entorno afines a la profesi&oacute;n.</p>\r\n', NULL, NULL, 1, '2016-04-06 16:45:43', '2016-04-06 16:45:43'),
(2, 2, 'La investigación como un proceso de construcción social.', '<p style="text-align: justify;">2.1 Conceptos b&aacute;sicos de la investigaci&oacute;n.<br />\r\n2.2 Identificaci&oacute;n de elementos que configuran&nbsp;las &nbsp;teor&iacute;as &nbsp;(conceptos, &nbsp;definiciones,&nbsp;problemas, &nbsp;hip&oacute;tesis, &nbsp;abstracciones,&nbsp;reflexiones, &nbsp;explicaciones, &nbsp;postulados,&nbsp;m&eacute;todos, leyes).<br />\r\n2.3 Tipos de m&eacute;todos (inductivo, deductivo,&nbsp;anal&iacute;tico, sint&eacute;tico, comparativo, dial&eacute;ctico,&nbsp;entre otros).<br />\r\n2.4 Conocimiento del proceso de investigaci&oacute;n&nbsp;(planteamiento del problema, marco te&oacute;rico,&nbsp;m&eacute;todos, resultados).</p>\r\n', NULL, NULL, 1, '2016-04-06 16:48:36', '2016-04-06 16:48:36'),
(3, 3, 'Herramientas de comunicación oral y escrita en la investigación.', '<p style="text-align: justify;">3.1 Normas &nbsp;y &nbsp;reglas &nbsp;ortogr&aacute;ficas &nbsp;y &nbsp;de&nbsp;puntuaci&oacute;n.<br />\r\n3.2 T&eacute;cnicas &nbsp;de &nbsp;redacci&oacute;n &nbsp;(coherencia,&nbsp;cohesi&oacute;n &nbsp;concordancia, &nbsp;p&aacute;rrafo,&nbsp;conectores, claridad, sencillez y precisi&oacute;n).<br />\r\n3.3 Caracter&iacute;sticas &nbsp;del &nbsp;lenguaje &nbsp;cient&iacute;fico&nbsp;(objetividad, universalidad y verificabilidad).<br />\r\n3.4 Tipolog&iacute;a de textos Acad&eacute;micos como&nbsp;medios &nbsp;de &nbsp;difusi&oacute;n &nbsp;del &nbsp;conocimiento&nbsp;cient&iacute;fico. (Monograf&iacute;a, ensayo, rese&ntilde;as,&nbsp;reportes. tesis, protocolo e informe de&nbsp;investigaci&oacute;n).</p>\r\n', NULL, NULL, 1, '2016-04-06 16:49:57', '2016-04-06 16:49:57'),
(4, 4, 'Gestión de la información para la investigación documental.', '<p style="text-align: justify;">4.1 Estructura de la Investigaci&oacute;n documental.</p>\r\n\r\n<p style="text-align: justify;">4.1.1 Elecci&oacute;n del tema y delimitaci&oacute;n.</p>\r\n\r\n<p style="text-align: justify;">4.1.2 Objetivos generales y espec&iacute;ficos.</p>\r\n\r\n<p style="text-align: justify;">4.1.3 Localizaci&oacute;n selecci&oacute;n y acopio de informaci&oacute;n de diferentes fuentes.</p>\r\n\r\n<p style="text-align: justify;">4.1.4 Dise&ntilde;o del esquema de trabajo.</p>\r\n\r\n<p style="text-align: justify;">4.1.5 B&uacute;squeda de informaci&oacute;n y toma de notas.</p>\r\n\r\n<p style="text-align: justify;">4.1.6 Redacci&oacute;n de un borrador.</p>\r\n\r\n<p style="text-align: justify;">4.1.7 Correcciones.</p>\r\n\r\n<p style="text-align: justify;">4.1.8 Redacci&oacute;n informe final escrito con aparato cr&iacute;tico.</p>\r\n\r\n<p style="text-align: justify;">4.1.9 Presentaci&oacute;n del informe en forma oral y escrita.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">4.2 Construcci&oacute;n del aparato cr&iacute;tico. (Uso de fuentes referenciales, utilizadas como fundamento, citas textuales: cortas, largas, aclaratorias, explicativas, par&aacute;frasis,&nbsp;comentario, an&aacute;lisis).</p>\r\n', NULL, NULL, 1, '2016-04-06 16:51:25', '2016-04-06 16:52:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `calendar_id` int(11) DEFAULT NULL,
  `career_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `student_id`, `calendar_id`, `career_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2016-04-11 03:43:16', '2016-04-11 03:43:16'),
(2, 2, 1, 1, '2016-04-11 03:58:43', '2016-04-11 03:58:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders`
--

CREATE TABLE IF NOT EXISTS `folders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `summary_id` int(11) DEFAULT NULL,
  `calendar_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `career_id` int(11) DEFAULT NULL,
  `grupo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `docente_id` int(11) DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `folders`
--

INSERT INTO `folders` (`id`, `summary_id`, `calendar_id`, `semester_id`, `career_id`, `grupo`, `docente_id`, `departamento`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'A y B', 1, 'Sistemas e Informática', '2016-04-06 17:44:54', '2016-04-06 17:44:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'A', '2016-04-05 19:44:39', '2016-04-05 19:44:39'),
(2, 'B', '2016-04-05 19:44:48', '2016-04-05 19:44:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `learnings`
--

CREATE TABLE IF NOT EXISTS `learnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `especifica` text COLLATE utf8_unicode_ci,
  `actividad` text COLLATE utf8_unicode_ci,
  `teaching` text COLLATE utf8_unicode_ci,
  `portafolio` text COLLATE utf8_unicode_ci,
  `content_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `learnings`
--

INSERT INTO `learnings` (`id`, `especifica`, `actividad`, `teaching`, `portafolio`, `content_id`, `created_at`, `updated_at`) VALUES
(1, '<p>Analizar el desarrollo de su profesi&oacute;n con fundamento en &aacute;mbito local y nacional con fundamento en la investigaci&oacute;n cient&iacute;fica.</p>\r\n', '<p>&bull; Buscar referentes en distintas fuentes de informaci&oacute;n que le permitan conocer el origen, evoluci&oacute;n y estado actual de su profesi&oacute;n.</p>\r\n\r\n<p>&bull; Elaborar un resumen que aborde de manera sint&eacute;tica la informaci&oacute;n de la actividad anterior.</p>\r\n\r\n<p>&bull; Representar por medio de un organizador gr&aacute;fico (mapa conceptual, l&iacute;nea del tiempo, tabla comparativa o diagrama de flujo) la evoluci&oacute;n hist&oacute;rica de su campo profesional.</p>\r\n\r\n<p>&bull; Realizar consulta a base de datos y organismos p&uacute;blicos acerca del Sector productivo y de servicios del entorno afines a la profesi&oacute;n.</p>\r\n\r\n<p>&bull; Hacer cat&aacute;logo de empresas y servicios que requieren de su pr&aacute;ctica profesional.</p>\r\n', '<p>&bull; Integrar&aacute; a los alumnos en equipos de m&iacute;nimo tres o de acuerdo a la cantidad total del grupo (Trabajo en equipo)</p>\r\n\r\n<p>&bull; Coordinar&aacute;, supervisar&aacute;, orientar&aacute; y retroalimentar&aacute; el trabajo de los equipos. (Aprendizaje colaborativo)</p>\r\n\r\n<p>&bull; Proporcionar&aacute; a los alumnos informaci&oacute;n acerca del origen e historia de la carrera.</p>\r\n', '<p>Plasmadas en documentos escritos:</p>\r\n\r\n<p>&bull; Evaluaci&oacute;n Diagnostica</p>\r\n\r\n<p>&bull; Resumen</p>\r\n\r\n<p>&bull; L&iacute;nea de tiempo</p>\r\n\r\n<p>&bull; Cat&aacute;logo</p>\r\n', 1, '2016-04-06 17:01:46', '2016-04-06 18:03:23'),
(2, '<p style="text-align:justify">Comprender la investigaci&oacute;n como&nbsp;un proceso de construcci&oacute;n social&nbsp;con fundamento en las normas de&nbsp;de la investigaci&oacute;n documental.</p>\r\n', '<p style="text-align:justify">&bull; Investigar los significados de los conceptos&nbsp;cient&iacute;ficos involucrados en el proceso de la&nbsp;investigaci&oacute;n y elaborar un reporte.<br />\r\n&bull; Realizar un glosario de t&eacute;rminos del&nbsp;proceso de investigaci&oacute;n y los elementos&nbsp;que componen las teor&iacute;as que le permitan&nbsp;comprender e incrementar el lenguaje&nbsp;cient&iacute;fico.<br />\r\n&bull; Identificar &nbsp;los &nbsp;m&eacute;todos &nbsp;aplicados &nbsp;en&nbsp;investigaciones, art&iacute;culos, libros, revistas,&nbsp;en red, entre otros, y demostrar que son&nbsp;fundamentales en la construcci&oacute;n social del&nbsp;conocimiento y exponerlos en un foro&nbsp;(presencial o virtual).<br />\r\n&bull; Resolver &nbsp;un &nbsp;cuestionario &nbsp;sobre &nbsp;los&nbsp;principales m&eacute;todos involucrados en el&nbsp;manejo de la investigaci&oacute;n y soluci&oacute;n de&nbsp;problemas y socializar los resultados.<br />\r\n&bull; Analizar investigaciones y tesis del campo&nbsp;profesional que demuestren el c&oacute;mo y&nbsp;d&oacute;nde la investigaci&oacute;n ha contribuido a la&nbsp;soluci&oacute;n de un problema (Recuperar&nbsp;proyectos de&nbsp;CONACYT, IPN, UNAM,&nbsp;CIIDET, SNI, Colegios y Asociaciones&nbsp;propias de cada carrera) y entregar un&nbsp;reporte.<br />\r\n&bull; Participar en un debate sobre las ideas y&nbsp;hallazgos encontrados en relaci&oacute;n con la&nbsp;problem&aacute;tica de la profesi&oacute;n en el contexto&nbsp;social.</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 2, '2016-04-06 17:13:33', '2016-04-06 18:03:53'),
(3, '<p>Aplicar herramientas formales de comunicaci&oacute;n oral y escrita de acuerdo a par&aacute;metros de validez previamente establecidos.</p>\r\n', '<p>&bull; Reconocer normas y reglas ortogr&aacute;ficas al realizar la lectura de textos acad&eacute;micos y cient&iacute;ficos y socializar su uso.</p>\r\n\r\n<p>&bull; Indagar las t&eacute;cnicas de redacci&oacute;n que se aplican en la redacci&oacute;n de textos y elaborar mediante un organizador gr&aacute;fico sus principales caracter&iacute;sticas y procedimientos.</p>\r\n\r\n<p>&bull; Elaborar crucigramas con las normas y reglas ortogr&aacute;ficas y las t&eacute;cnicas de redacci&oacute;n.</p>\r\n\r\n<p>&bull; Comparar el resultado de su trabajo con otros compa&ntilde;eros (Trabajo en equipo).</p>\r\n\r\n<p>&bull; Elaborar un tr&iacute;ptico con las t&eacute;cnicas de redacci&oacute;n encontradas y compartir con el grupo ejemplares de su trabajo.</p>\r\n\r\n<p>&bull; Conocer las caracter&iacute;sticas del lenguaje cient&iacute;fico a trav&eacute;s de la lectura y an&aacute;lisis de art&iacute;culos arbitrados.</p>\r\n\r\n<p>&bull; Identificar algunos t&eacute;rminos cient&iacute;ficos relacionados con su profesi&oacute;n y elaborar un di&aacute;logo en donde los incluya, sin errores ortogr&aacute;ficos.</p>\r\n\r\n<p>&bull; Construir un collage donde ejemplifique los tipos de textos acad&eacute;micos y los relacione con sus principales caracter&iacute;sticas.</p>\r\n\r\n<p>&bull; Redactar un ensayo con un tema de inter&eacute;s profesional y aplicar en &eacute;l las normas y reglas ortogr&aacute;ficas, las t&eacute;cnicas de redacci&oacute;n y el lenguaje t&eacute;cnico aprendido.</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 3, '2016-04-06 17:24:32', '2016-04-06 18:04:38'),
(4, '<p>Gestionar informaci&oacute;n acerca de su profesi&oacute;n en una investigaci&oacute;n documental.</p>\r\n', '<p>&bull; Seleccionar un tema relacionado con el perfil profesional de su carrera en funci&oacute;n de su inter&eacute;s, y/o recuperando trabajos previos.</p>\r\n\r\n<p>&bull; Delimitar el problema considerando la complejidad del tema, el tiempo de realizaci&oacute;n, los recursos, los conocimientos previos y los objetivos.</p>\r\n\r\n<p>&bull; Identificar objetivos de investigaci&oacute;n planteados en trabajos acad&eacute;micos, tesis, proyectos de investigaci&oacute;n, informes de residencia y determinar su estructura.</p>\r\n\r\n<p>&bull; Redactar los objetivos de su investigaci&oacute;n documental y presentarlos al grupo de trabajo.</p>\r\n\r\n<p>&bull; Identificar las caracter&iacute;sticas de buscadores, metabuscadores y sitios de Internet que contengan informaci&oacute;n sobre profesi&oacute;n y tem&aacute;tica a investigar, y exponer los resultados de su b&uacute;squeda en una presentaci&oacute;n electr&oacute;nica.</p>\r\n\r\n<p>&bull; Realizar una b&uacute;squeda de informaci&oacute;n especializada interconectada con su tema de investigaci&oacute;n y hacer acopio de la misma en una bit&aacute;cora.</p>\r\n\r\n<p>&bull; Leer la informaci&oacute;n recabada, utilizando alguna t&eacute;cnica para extraer lo m&aacute;s importante, por ejemplo; subrayado, identificaci&oacute;n de conceptos clave y notas al margen.</p>\r\n\r\n<p>&bull; Consultar diferentes fuentes de informaci&oacute;n, para ubicar, el modelo de citaci&oacute;n (aparato cr&iacute;tico propio de su disciplina) y presentar su aplicaci&oacute;n.</p>\r\n\r\n<p>&bull; Citar dentro del cuerpo de la investigaci&oacute;n documental a los autores consultados.</p>\r\n\r\n<p>&bull; Establecer relaciones entre la informaci&oacute;n utilizando alg&uacute;n criterio de clasificaci&oacute;n (cronol&oacute;gico, causa-efecto, por tema, usando un m&eacute;todo inductivo o deductivo) en la investigaci&oacute;n documental. Para denotar el grado de apropiaci&oacute;n, y dominio del lenguaje.</p>\r\n\r\n<p>&bull; Presentar y defender las ideas incluidas en el trabajo propio ante la cr&iacute;tica de sus compa&ntilde;eros y maestros.</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 4, '2016-04-06 17:27:00', '2016-04-06 18:06:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `professors`
--

CREATE TABLE IF NOT EXISTS `professors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) DEFAULT NULL,
  `calendar_id` int(11) DEFAULT NULL,
  `career_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `professors`
--

INSERT INTO `professors` (`id`, `teacher_id`, `calendar_id`, `career_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2016-04-11 04:56:39', '2016-04-11 04:56:39'),
(2, 2, 1, 1, '2016-04-11 05:00:50', '2016-04-11 05:00:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160316223018'),
('20160316223458'),
('20160316223759'),
('20160316224414'),
('20160316232251'),
('20160318195633'),
('20160318200140'),
('20160318200421'),
('20160318201523'),
('20160320022206'),
('20160320022427'),
('20160320022607'),
('20160324051945'),
('20160324052054'),
('20160324052145'),
('20160324053153'),
('20160325041143'),
('20160325203145'),
('20160405184224'),
('20160405184253'),
('20160405185154'),
('20160405192807'),
('20160411051043');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score_one` float DEFAULT '0',
  `score_two` float DEFAULT '0',
  `score_three` float DEFAULT '0',
  `score_four` float DEFAULT '0',
  `score_test` float DEFAULT '0',
  `score_final` float DEFAULT '0',
  `subject_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `scores`
--

INSERT INTO `scores` (`id`, `score_one`, `score_two`, `score_three`, `score_four`, `score_test`, `score_final`, `subject_id`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 75, 80, 90, 85, 85, 83, 1, 1, '2016-04-11 12:23:36', '2016-04-11 12:23:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semesters`
--

CREATE TABLE IF NOT EXISTS `semesters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current` tinyint(1) DEFAULT NULL,
  `calendar_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `semesters`
--

INSERT INTO `semesters` (`id`, `grado`, `current`, `calendar_id`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 1, '2016-04-05 19:44:25', '2016-04-07 18:39:56'),
(2, '3', 1, 1, '2016-04-06 18:17:09', '2016-04-06 18:17:18'),
(3, '5', 1, 1, '2016-04-06 18:17:31', '2016-04-06 18:17:31'),
(4, '7', 1, 1, '2016-04-06 18:18:02', '2016-04-06 18:18:02'),
(5, '9', 1, 1, '2016-04-06 18:18:13', '2016-04-06 18:18:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sources`
--

CREATE TABLE IF NOT EXISTS `sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuente` text COLLATE utf8_unicode_ci,
  `didactic` text COLLATE utf8_unicode_ci,
  `content_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `sources`
--

INSERT INTO `sources` (`id`, `fuente`, `didactic`, `content_id`, `created_at`, `updated_at`) VALUES
(1, '<p>&bull; &nbsp;CINVESTAV (2010). 50 a&ntilde;os de la computaci&oacute;n en M&eacute;xico.<br />\r\nConsultado en Agosto, 2010 en<br />\r\nwww.cs.cinvestav.mx/SemanaComputoCINVESTAV/Computo.html</p>\r\n', '<p>Marcadores, pintarr&oacute;n, laptop, ca&ntilde;&oacute;n, v&iacute;deos y copias fotost&aacute;ticas del libro:<br />\r\n&bull; &nbsp;Lara Mu&ntilde;oz, Erica Mar&iacute;a. (2011) Fundamentos de investigaci&oacute;n.<br />\r\nUn enfoque por competencias. M&eacute;xico: Alfaomega.</p>\r\n', 1, '2016-04-06 17:39:41', '2016-04-06 17:39:41'),
(2, '-', '-', 2, '2016-04-06 17:39:54', '2016-04-06 17:39:54'),
(3, '-', '-', 3, '2016-04-06 17:40:21', '2016-04-06 17:40:34'),
(4, '<p>Se esta agregando la informaci&oacute;n de prueba.</p>\r\n', '<p>-</p>\r\n', 4, '2016-04-06 17:40:50', '2016-04-07 18:27:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `standards`
--

CREATE TABLE IF NOT EXISTS `standards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conceptual` text COLLATE utf8_unicode_ci,
  `procedimental` text COLLATE utf8_unicode_ci,
  `actitudinal` text COLLATE utf8_unicode_ci,
  `content_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `standards`
--

INSERT INTO `standards` (`id`, `conceptual`, `procedimental`, `actitudinal`, `content_id`, `created_at`, `updated_at`) VALUES
(1, '-', '-', '-', 1, '2016-04-06 17:33:15', '2016-04-06 17:33:15'),
(2, '-', '-', '-', 2, '2016-04-06 17:33:26', '2016-04-06 17:33:26'),
(3, '-', '-', '-', 3, '2016-04-06 17:33:38', '2016-04-06 17:33:38'),
(4, '-', '-', '-', 4, '2016-04-06 17:33:51', '2016-04-06 17:33:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `control` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `career_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_students_on_email` (`email`),
  UNIQUE KEY `index_students_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `control`, `nombre`, `apellido`, `sexo`, `semester_id`, `group_id`, `career_id`, `created_at`, `updated_at`) VALUES
(1, 'a@a.com', '$2a$10$neh8flqOxzlMEVVrKQDNQeq3DptoKEjAZLwcVYmngcpniMvEAtgD.', NULL, NULL, NULL, 10, '2016-04-11 12:26:53', '2016-04-11 07:48:59', '127.0.0.1', '127.0.0.1', 'S10120014', 'Mayte Ludwika', 'Tito Ramírez', 'F', 1, 1, 1, '2016-04-09 18:53:26', '2016-04-11 12:26:53'),
(2, 'b@b.com', '$2a$10$9qvpwihZQ4TTilhg9UZfNuoulPV7sCC8ES7esg7WAIcBHNkWEmSZa', NULL, NULL, NULL, 4, '2016-04-11 12:27:32', '2016-04-11 03:57:14', '127.0.0.1', '127.0.0.1', 'S10120058', 'Anel', 'Mosso García', 'F', 1, 1, 1, '2016-04-09 19:23:43', '2016-04-11 12:27:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `practica` int(11) DEFAULT NULL,
  `teorica` int(11) DEFAULT NULL,
  `credito` int(11) DEFAULT NULL,
  `caracterizacion` text COLLATE utf8_unicode_ci,
  `objetivo` text COLLATE utf8_unicode_ci,
  `unit` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `career_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `subjects`
--

INSERT INTO `subjects` (`id`, `nombre`, `clave`, `practica`, `teorica`, `credito`, `caracterizacion`, `objetivo`, `unit`, `teacher_id`, `semester_id`, `career_id`, `created_at`, `updated_at`) VALUES
(1, 'Fundamentos de Investigación', 'ACC-0906', 2, 2, 4, '<p style="text-align:justify">El programa de la asignatura de Fundamentos de investigaci&oacute;n, est&aacute; dise&ntilde;ado para&nbsp;contribuir en la formaci&oacute;n integral de los estudiantes del Sistema Nacional de&nbsp;Educaci&oacute;n Superior Tecnol&oacute;gica (SNEST) porque desarrolla las competencias&nbsp;investigativas que se utilizar&aacute;n para el aprendizaje conceptual, procedimental y&nbsp;actitudinal contenidos en los planes de estudio de las carreras que oferta.&nbsp;</p>\r\n\r\n<p style="text-align:justify">La formaci&oacute;n de ingenieros en un mundo globalizado, exige dominio de&nbsp;herramientas b&aacute;sicas de investigaci&oacute;n para gestionar, aplicar y transformar&nbsp;informaci&oacute;n a contextos&nbsp;complejos y plurales, cuya soluci&oacute;n de problem&aacute;ticas de&nbsp;manera sustentable, es fundamental para la configuraci&oacute;n de la sociedad del&nbsp;conocimiento.</p>\r\n\r\n<p style="text-align:justify">La investigaci&oacute;n es una herramienta que habilita al ingeniero para conocer, analizar&nbsp;y explicar la realidad, transformarla y descubrir &aacute;reas de oportunidad en los &aacute;mbitos&nbsp;sociales en donde desarrollar&aacute; su vida profesional y proponer soluciones&nbsp;interdisciplinarias, hol&iacute;sticas y colaborativas con fundamento en las ciencias b&aacute;sicas&nbsp;y de la ingenier&iacute;a, la &eacute;tica y la sustentabilidad.</p>\r\n\r\n<p style="text-align:justify">Esta asignatura se ubica en primer semestre de las carreras del SNEST, cuya&nbsp;pretensi&oacute;n es integrar competencias de investigaci&oacute;n en el proceso de formaci&oacute;n&nbsp;profesional&nbsp;durante la carrera, adem&aacute;s de tener implicaciones no s&oacute;lo para aprender&nbsp;conceptos cient&iacute;ficos y tecnol&oacute;gicos, sino tambi&eacute;n, para configurar actitudes y&nbsp;valores de compromiso humano y social inherentes a su pr&aacute;ctica profesional.</p>\r\n', '<p style="text-align:justify">Aplicar herramientas metodol&oacute;gicas de investigaci&oacute;n en la elaboraci&oacute;n de escritos&nbsp;acad&eacute;micos, producto del desarrollo de la investigaci&oacute;n documental en tem&aacute;ticas&nbsp;de su &aacute;rea, que lo habiliten para ser aut&oacute;nomo en la adquisici&oacute;n y construcci&oacute;n de&nbsp;conocimientos que fortalezcan su desarrollo profesional.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n', 4, 1, 1, 1, '2016-04-05 20:40:14', '2016-04-06 17:57:18'),
(2, 'Ingeniería de Requerimientos', 'ISC-12-01', 2, 2, 4, 'Como parte de las actividades de la ingeniería del software en el desarrollo de proyectos,\r\nla ingeniería de requerimientos proporciona el mecanismo apropiado para la obtención y\r\ndeterminación de los requisitos y funcionalidad del software, que son parte fundamental\r\npara el éxito del mismo.', 'La ingeniería de requerimientos proporciona los elementos necesarios para proveer al\r\nestudiante conocimientos para aplicar las bases del modelado de negocios y analizar la\r\ncomplejidad de las organizaciones, poniendo en práctica técnicas de obtención de\r\ninformación a fin de determinar cada uno de los requerimientos existentes dentro del\r\ndesarrollo del proyecto de software.', 5, NULL, 1, 1, '2016-04-05 22:12:25', '2016-04-05 22:12:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `summaries`
--

CREATE TABLE IF NOT EXISTS `summaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `summaries`
--

INSERT INTO `summaries` (`id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2016-04-06 16:43:14', '2016-04-06 16:43:14'),
(2, 2, '2016-04-06 16:43:54', '2016-04-06 16:43:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_teachers_on_email` (`email`),
  UNIQUE KEY `index_teachers_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `teachers`
--

INSERT INTO `teachers` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `clave`, `nombre`, `apellido`, `created_at`, `updated_at`) VALUES
(1, 'abelm03@hotmail.com', '$2a$10$IxlUcsejqZO3..qbWHGhQ.aj43ox9zJqT3Adk9V84wiYeO6II88FK', NULL, NULL, NULL, 10, '2016-04-11 12:11:38', '2016-04-11 05:48:00', '127.0.0.1', '127.0.0.1', 'DCEF-1234', 'Abel', 'Moreno Basilio', '2016-04-05 19:42:56', '2016-04-11 12:11:38'),
(2, 'freddy_itsm@hotmail.com', '$2a$10$fusZISFCWCQvdG.IP1rFJuJP6/nmRLmDAiPit/fwWhYU8ZQ/7Gts.', NULL, NULL, NULL, 2, '2016-04-11 12:24:09', '2016-04-11 05:40:17', '127.0.0.1', '127.0.0.1', 'FGHI-2345', 'Freddy', 'Ramírez Villalobos', '2016-04-05 22:42:40', '2016-04-11 12:24:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `clave`, `nombre`, `apellido`, `created_at`, `updated_at`) VALUES
(1, 'obetflores@hotmail.com', '$2a$10$dwlCWEQdGFyDFINuSVbI7.6/CojxhT9sNXeZhTCuUlZrEsZRC4YG.', NULL, NULL, NULL, 14, '2016-04-11 07:51:11', '2016-04-11 06:39:21', '127.0.0.1', '127.0.0.1', 'ABCD-1234', 'Luis Obet', 'Flores García', '2016-04-05 19:40:56', '2016-04-11 07:51:11');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
