initialize
initialize
	super initialize.
	RsRedisConnectionPool primaryUrl: (redisUrls at: 1).
	pool := RsRedisConnectionPool default.
	pool userName: username password: password