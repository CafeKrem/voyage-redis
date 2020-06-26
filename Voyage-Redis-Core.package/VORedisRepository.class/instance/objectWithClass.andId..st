as yet unclassified
objectWithClass: aClass andId: aString
	^ self
		retrieveQueriedInstanceOf: aClass
		serialized:
			(NeoJSONReader
				fromString:
					(self
						executeRedisCommand: [ :aRedisWrapper | 
							aRedisWrapper endpoint
								getJSONAt: (self redisQueryClassName: aClass name ID: aString) ]))