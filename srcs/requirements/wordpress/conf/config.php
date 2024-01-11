
<?php
	define("DB_NAME",				getenv("MARIADB_DATABASE"));
	define("DB_USER",				getenv("MARIADB_USER"));
	define("DB_PASSWORD",			getenv("MARIADB_PASSWORD"));
	define("DB_HOST",				getenv("WORDPRESS_MARIADB_HOST") . ":3306");
	define("DB_CHARSET",			getenv("MARIADB_CHARSET"));
	define("DB_COLLATE",			getenv("MARIADB_COLLATE"));

	define('AUTH_KEY',         getenv("AUTH_KEY"));
	define('SECURE_AUTH_KEY',  getenv("SECURE_AUTH_KEY"));
	define('LOGGED_IN_KEY',    getenv("LOGGED_IN_KEY"));
	define('NONCE_KEY',        getenv("NONCE_KEY"));
	define('AUTH_SALT',        getenv("AUTH_SALT"));
	define('SECURE_AUTH_SALT', getenv("SECURE_AUTH_SALT"));
	define('LOGGED_IN_SALT',   getenv("LOGGED_IN_SALT"));
	define('NONCE_SALT',       getenv("NONCE_SALT"));
	define("CONCATENATE_SCRIPTS",	false);
	$table_prefix =					getenv("MARIADB_PREFIX");

	define("WP_DEBUG", true);
	if (!defined("ABSPATH"))
		define("ABSPATH", __DIR__ . "/");

	require_once ABSPATH . "wp-settings.php";
