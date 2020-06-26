running
removeAllQueryClass: aClass
	repository
		executeRedisCommand: [ :aRedisWrapper | 
			(VORedisSet queryClass: aClass repository: repository)
				lazyDo: [ :each | aRedisWrapper del: each ].
			aRedisWrapper endpoint del: (repository redisQueryClassSetName: aClass) ].
	aClass
		subclassesDo: [ :subclass | self removeAllQueryClass: subclass ]