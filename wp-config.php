<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'wordpress2');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'ww fXj`Thp6)URQ$1|<pezLG n1~#q-E-{5%4#PXdt_w/uywoWO-M,l<YRKhVMsW');
define('SECURE_AUTH_KEY',  'p0[gwzn@_@[%s[dV`.Y=+ULHoxxo2@xbrnF2t)|^HVa,QZYjS5]yKg quDiUy@*y');
define('LOGGED_IN_KEY',    'IKXqg!E:hR?A@Rl6zi:(|pm,2`H^ay!g;[{`u=4Ouk[Q:d6%xFA.DTH|4bHoutWm');
define('NONCE_KEY',        'kpCwnS:8Vv%lcyA6NxK)0{l7c?R*Ak;o6heYsGH1sFuLQqw&^lWNKE%k:Xno8Be#');
define('AUTH_SALT',        '6r#%S(<_FXr^gW+LgSzeQ6><aK4_9&]0:lu@RG099icDBva(ismcbd@?r`GWgjwt');
define('SECURE_AUTH_SALT', '2#lU-cwi83vm0W2,T3ZH(|Sh~2X`2EpA75C|Eo/$PzN.f|gN_QM.[;NSTl#8A&_C');
define('LOGGED_IN_SALT',   'rrt[xA(0G5~5 K/?h9iQ6*S5[J;9.Xya$j{sVLy+l&(FNepu4$ u`h}S4?we#AyB');
define('NONCE_SALT',       'LVg]:}}n gL8kC`JuQ~g7owx%&I*Lre[Lx%QuxWVX OQO/=PP:@sV;HEGN</?O+R');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_2';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 * 
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
