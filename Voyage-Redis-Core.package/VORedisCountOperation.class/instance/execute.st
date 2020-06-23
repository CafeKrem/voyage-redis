execution
execute
	^ where
		ifNil: [ repository pool
				connectionDo: [ :aRedisWrapper | 
					aRedisWrapper endpoint
						sCard: (repository redisQueryClassSetName: queryClass) ]
				at: repository databaseName ]
		ifNotNil:
			[ (VOSet queryClass: queryClass repository: repository) count: where ]