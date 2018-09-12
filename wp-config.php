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
define('DB_NAME', 'N-Cars');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'secret');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**  ftp connection   */
define('FS_METHOD', 'direct');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'OrQV|NcV#Tne=+[U,s:d{xb]VKe%[!XpY9jMG#qdhW%]v$X)~60#3>8kO0nbX~KC');
define('SECURE_AUTH_KEY',  '!;;F%RE5/<9Nv3x39luu-67F6<_];!:JB{OeLfZW>n`3Hz.*$/}9!o+tqZkJfsX6');
define('LOGGED_IN_KEY',    'fsaP^+}c7/L7lM!W<@yrkAId7o`K#j]Jkh>[oKZtB% 13xI]KRntXJ- u2WH88BG');
define('NONCE_KEY',        '$}3Fa*Gr`rF(_O3*{<tUPxN-EL:EuYs;*>Dx.Z 9zK+E^IV|{[74&yjLfRxj/N<?');
define('AUTH_SALT',        'aW{,(a}81P+Zq.]$zLUDsr .wpO 7fr=q(E(-0YJ0Fj9Rl)aHCTX~]S_M}0`?-=V');
define('SECURE_AUTH_SALT', 'iGi(^F%Gx ]^<fl^JT>Gscn$@Gzr|e(H;zIV=>{fD=<-PO9#5fkFXB1Vht`:X3_q');
define('LOGGED_IN_SALT',   'cif?^%)a_<@OrS~7r/}_Dn5$5u~xq8PUzj!Nf$WBI0M6)BC`QHc_Laz-LQpVc^k_');
define('NONCE_SALT',       'ic{]Rw;eGLc5=%}>qVJ_d=z@TNQ3T(2xvEQY8fXj;+MdkH/fa3]H*OJ6ciEc^cj=');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'cars_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
