running
countQueryClass: aQueryClass
	| count |
	repository pool
		connectionDo: [ :aRedisWrapper | 
			count := aRedisWrapper endpoint
				sCard: (repository redisQueryClassSetName: aQueryClass).
			aQueryClass
				subclassesDo: [ :subclass | count := count + (self countQueryClass: subclass) ] ]
		at: repository databaseName.
	^ count