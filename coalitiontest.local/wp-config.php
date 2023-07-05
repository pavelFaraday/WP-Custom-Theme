<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'coalitiontest.local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'nI--^jPdi$I`<v,5r$QlG73=n4zG c.,,sQ)qppl%V(OdyFM ohTn(LW-W.cE+/n' );
define( 'SECURE_AUTH_KEY',  'uX.@e[m~=E`A2xprUO;6xJbm#6pSkdeCz*=djf?V|JLp3vKNTNJN4H32G6dZ+~,T' );
define( 'LOGGED_IN_KEY',    'V9%w{H&W5fL#BnxSMqg1%fK16aZ_1<%[)Pojh5Tomch=7;<g#)~BawKixc{~hDlA' );
define( 'NONCE_KEY',        '2H3]cEoEQF5zyieJaI`s)y-*Dz}=*fjB5YVu,[9]fS?U7onJ:,ym++k+_FWQ^zE.' );
define( 'AUTH_SALT',        '+<c2Ha-Y6(|CqwQWn#m2SlrQ(#bNML)Q!#3_Se:zaWt4* efT0j^v)y@<lLfml/)' );
define( 'SECURE_AUTH_SALT', '`q8%/I<AE {YPy2a=WQ?!jN8A@&-Kzarj`95mSh|tJ3fa+W$G4MYc?D$18FKC zP' );
define( 'LOGGED_IN_SALT',   '?}pb_>gN;sa/NHy:vZa:t1{9Y}tBMU07(83]/:6<vD|CLX.QBCs^]4FpGjQ.M`eC' );
define( 'NONCE_SALT',       '3KTpiS+ST.pmx/]KA:e*|r%#Z_.wn$u(!YJMNH65R~9.qwt;#N?8Az dmNnoD9~(' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
