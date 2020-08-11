running
setUpRepository
	RsRedisConnectionPool initialize.
	repository := VORedisRepository
		host: self class redisHost
		port: VORedisRepository defaultPort
		database: 'Voyage-Tests'
		username: nil
		password: self goodPassword.
	repository debug: true.
	VORepository setRepository: repository