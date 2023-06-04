<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки базы данных
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры базы данных: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'shop' );

/** Имя пользователя базы данных */
define( 'DB_USER', 'root' );

/** Пароль к базе данных */
define( 'DB_PASSWORD', '' );

/** Имя сервера базы данных */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'x({ZI`Ge/i^GeEE_!,C%`9x58RS_ShrfOx77I10a7G3u5 ]}tywHc8.S15Qj=2,?' );
define( 'SECURE_AUTH_KEY',  'mW7wa7fy#J&-t;ei~wDwAAnud``Fh:eBttSjQ[,YFD~.xkU`Yqs#;q`S]$d#Y|^~' );
define( 'LOGGED_IN_KEY',    '=%vziuC ,HNI)71p9QN[4=k9EDd~1Ek$k*-Ci!R1myzqg%v,9dFYE7[Wmw5f*F-O' );
define( 'NONCE_KEY',        'J]oHQr%9hE!k<vp;Z46b8`V5^J1{6#AtR}zOtp?$zgi/*uCu*4$|{.DNur;6w#8H' );
define( 'AUTH_SALT',        'S,I.?t<2|%_E.]mi+A9cD d2ndkNtyx,AiL%&8_4rf~x%)__]wA=aX4C0dqJIo!E' );
define( 'SECURE_AUTH_SALT', '%S1M()j.T%=$txEQ`3*!u6]R,S m &E}z>[=?o,F,Ly,70@/8[X..%/*z}?%etW.' );
define( 'LOGGED_IN_SALT',   '&CkvF`BUUIob1MD-RH. g%G,&`(t:SEwJrc+tr$65lVW0}jYC1cneo~NgK@++d%!' );
define( 'NONCE_SALT',       'ENQpn;Kf&N|Es*,IQo6%w)T/wEgiO~W{b&UpamcqKMBt3nBO.9h?},m_=?^s+,(;' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
