running
setUpRepository
	RsRedisConnectionPool initialize.
	repository := VORedisRepository
		host: self class redisHost
		database: 'Voyage-Tests'.
	repository debug: true.
	VORepository setRepository: repository