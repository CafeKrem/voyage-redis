execution
execute
	| objectID jsonKey |
	objectID := repository keyOf: object.
	jsonKey := repository
		getRedisKeyFromObject: object className
		withID: objectID.
	repository pool
		connectionDo: [ :aRedisWrapper | 
			aRedisWrapper endpoint
				atomic: [ aRedisWrapper endpoint
						removeJSONAt: jsonKey;
						sRem: (repository redisQueryClassSetName: object class)
							member: jsonKey ] ]
		at: repository databaseName