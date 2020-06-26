running
countQueryClass: aQueryClass
	"recursive fonction to compute each aQueryClass and it's subclasses in redis"
	| count |
	repository
		executeRedisCommand: [ :aRedisWrapper | 
			count := aRedisWrapper endpoint
				sCard: (repository redisQueryClassSetName: aQueryClass).
			aQueryClass
				subclassesDo: [ :subclass | count := count + (self countQueryClass: subclass) ] ].
	^ count