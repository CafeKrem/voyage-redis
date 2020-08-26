execution
execute
	| jsonKey |
	jsonKey := repository
		redisQueryClassName: object className
		ID: (repository keyOf: object).
	repository
		executeRedisCommand: [ :aRedisWrapper | 
			aRedisWrapper endpoint
				atomic: [ aRedisWrapper endpoint
						del: jsonKey;
						sRem: (repository redisQueryClassSetName: object class)
							member: jsonKey ] ]