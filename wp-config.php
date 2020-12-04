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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '^)t_ps_,^BKoo=mw7bN:gW_Bl>mWS}s*tDC( ANd/=]#Zjc}7p#76U};l3/dp@,h' );
define( 'SECURE_AUTH_KEY',  'DV:L#$+l@%dQ_ZIh5min{yyp`ECj^pa:fN`~ntrQ-p%$R39CE q=cdkb,X`)4bFb' );
define( 'LOGGED_IN_KEY',    '`z+zlFLVZ7$NT283@ i,(8i;s&ddg[epNYx.G}[4UVs6-u?vl&t#O$crXKS[9ZXM' );
define( 'NONCE_KEY',        'ib+4^&OTPhbA*}4Fd:da79@z[>zey6S%$*`yU&64c=2A8yc30Pz`Hgs2wqMKtM/A' );
define( 'AUTH_SALT',        'f?agm{<.i)<3mmh7K,E,W:7e*,9=dV:uD/5{r-R.JWo?YwI7/)pL}Zm;vN$}Y!}H' );
define( 'SECURE_AUTH_SALT', 'RjT.B3%c50>l`X[8:V=uU{[u]SG/YIYN,TV1&`5D/[oK?i0dl;i^9`I-~Vt5qF=#' );
define( 'LOGGED_IN_SALT',   '%#.%v1ZFvt*54SZ`k.]|&GR:pxf*JJL6CZrc7%}MNgJha)[&Z<{[~9M*]^99,w,4' );
define( 'NONCE_SALT',       ',}2-`t$#<ke{8yoiATrG&$F?3n4,a:J[PzqM</tk,/!hdLfS{nKoj_(J+Sku0e26' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );
// define( 'WP_DEBUG_DISPLAY', false );
// define( 'WP_DEBUG_LOG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
