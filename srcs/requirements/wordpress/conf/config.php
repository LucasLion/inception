
<?php
	define("DB_NAME",				getenv("MARIADB_DATABASE"));
	define("DB_USER",				getenv("MARIADB_USER"));
	define("DB_PASSWORD",			getenv("MARIADB_PASSWORD"));
	define("DB_HOST",				getenv("WORDPRESS_MARIADB_HOST") . ":3306");
	define("DB_CHARSET",			getenv("MARIADB_CHARSET"));
	define("DB_COLLATE",			getenv("MARIADB_COLLATE"));

	define('AUTH_KEY',         'dkf5>k_AxOZu,M{FZBsX]s_KmC|,L>?&<|E86Yl#cW.4U=MS,n_(W]&l_,(}0`2$');
	define('SECURE_AUTH_KEY',  '0ee$pPaN;Jpdli-p^E8fLy`owxqW*6G`NG.Gw3<0fggi[Z6T[GG+RS1A .qvkDQ9');
	define('LOGGED_IN_KEY',    'Oawp+D~;6UIHan 6y[!`B5&5,j;{<D+}~-$A*6R-nEsTZ`|n3,<wr^/4[&U[<,2-');
	define('NONCE_KEY',        'Qv%^,D!TPxQ-.>eUnH1r,xr/YyZRf DbN[]{OE{|L?mNh{v+EvIKdUGi,p7Y8Q #');
	define('AUTH_SALT',        'T_t:QoS{|Makac UCnLM_|XrD;,8r<j/G[_TmP_vsaAZ~bt_xwR!&~y2r9W[A3m;');
	define('SECURE_AUTH_SALT', 'L*7l+iQQ3zA.T9!iq{H%(X^f@F-B~.]V o-nt*&SO9G^+R+fUYcC*?t}0,iBC[Ex');
	define('LOGGED_IN_SALT',   'H!Ik-k%DvW8Lfa^Q(6=kTj-FNMQ$zC?;0b[M%918JiXi,tuIXbB`?a*2uJ&;?R,V');
	define('NONCE_SALT',       'f:vJBYBP!uhd#B.Oa3D,23CZ*||eP-N*ErScTa4uU]~k?cKgY3kFcq/ea^i_HK4|');
	define("CONCATENATE_SCRIPTS",	false);

	$table_prefix =					getenv("MARIADB_PREFIX");

	define("WP_DEBUG", true);
	if (!defined("ABSPATH"))
		define("ABSPATH", __DIR__ . "/");

	require_once ABSPATH . "wp-settings.php";
