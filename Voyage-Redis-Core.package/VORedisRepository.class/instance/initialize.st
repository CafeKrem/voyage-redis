initialize
initialize
	super initialize.
	pool := RsRedisConnectionPool default.
	pool userName: username password: password