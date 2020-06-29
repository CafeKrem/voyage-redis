private
objectWithClass: aClass andId: aString
	"return : an instance of aClass store in redis with key"
	^ self
		retrieveQueriedInstanceOf: aClass
		serialized:
			(NeoJSONReader
				fromString:
					(self
						executeRedisCommand: [ :aRedisWrapper | 
							aRedisWrapper endpoint
								getJSONAt: (self redisQueryClassName: aClass name ID: aString) ]))