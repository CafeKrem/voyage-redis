running
removeAllQueryClass: aClass
	repository
		executeRedisCommand: [ :aRsRedis | 
			(VORedisSet queryClass: aClass repository: repository)
				lazyDo: [ :each | aRsRedis del: each ].
			aRsRedis endpoint del: (repository redisQueryClassSetName: aClass) ].
	aClass
		subclassesDo: [ :subclass | self removeAllQueryClass: subclass ]