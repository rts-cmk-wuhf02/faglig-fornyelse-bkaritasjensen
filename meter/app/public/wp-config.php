<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'PAmbGwbHDUlFNbWc4sH0JItW74yLYh4REXSxA77AbmH4+x6aujsHYRFe/gy52FWqi1WDQkrdEfWKBcCeJQ1DxQ==');
define('SECURE_AUTH_KEY',  '/ZGcgpmAP4UYhkpwjB6vkTFRxXSuO4jb24aNiHDdXFyGadzprheO1pXu4NdsklnUE74doGYqOhBTWmPjXQU1UQ==');
define('LOGGED_IN_KEY',    'I23BKOroNwA3c2Hqae/DWUxpOihQl1ZYxh/iQtDKf41heBpOB8XCWNpbmc+kEPyWgdshbcKCvVp7ULWYeao4UA==');
define('NONCE_KEY',        'AhC7c5cUyOkHvlrXfKUDwc/I074G3GNT4dZV+FVJeDtolClL87YQ0nRmSTWImwHw0It57J6Wqg+qyLwwynx4mA==');
define('AUTH_SALT',        'v3tkBe8nWDbVejlxGHX9SH1wjAwMFgy0HnTjHZ/XFqaRiG4kbTOQpHzl/2013wBwCKKhZ6P2gja7cEg5vZquCg==');
define('SECURE_AUTH_SALT', 'JW3iqvjbiaXimHEvZz+/Av1mlICOAdJju4hjr/nIgKH5Q9vWsRGc1MqC+n/j/i37e2Ob4j/k1gyl8MG1JOYkww==');
define('LOGGED_IN_SALT',   'LvFKIs+Z50kdLdcDMWcVhL1+m9qGctO6Zy4oZXQ2YNheRgwk6ajbZvjpBP3UsP+iyJgVYwwj2kzi6eahC1Q5oQ==');
define('NONCE_SALT',       '4PSk7NrkUzCN2jephlOSd6YuZVC4omvL2iEqKFb8O9FkCa0fLC/619nB7b2W9wVMgQxEJ+6YlkXGzelSmPmKHg==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
