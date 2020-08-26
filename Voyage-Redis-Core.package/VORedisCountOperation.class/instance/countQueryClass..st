running
countQueryClass: aQueryClass
	"recursive fonction to compute each aQueryClass and his subclasses"
	| count |
	repository
		executeRedisCommand: [ :aRsRedis | 
			count := aRsRedis endpoint
				sCard: (repository redisQueryClassSetName: aQueryClass).
			aQueryClass
				subclassesDo: [ :subclass | count := count + (self countQueryClass: subclass) ] ].
	^ count