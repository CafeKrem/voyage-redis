running
setUpRepository
	repository := VORedisRepository 
		host: self class mongoHost
		database: 'Voyage-Tests'.
	repository debug: true.