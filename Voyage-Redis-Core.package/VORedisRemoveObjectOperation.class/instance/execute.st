execution
execute
	| objectID jsonKey |
	objectID := repository keyOf: object.
	jsonKey := repository
		redisQueryClassName: object className
		ID: objectID.
	repository
		executeRedisCommand: [ :aRedisWrapper | 
			aRedisWrapper endpoint
				atomic: [ aRedisWrapper endpoint
						removeJSONAt: jsonKey;
						sRem: (repository redisQueryClassSetName: object class)
							member: jsonKey ] ]