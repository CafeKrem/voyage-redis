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
							self halt.
							self flag: 'need to extends RsRedisEndpoint'.
							aRedisWrapper endpoint
								getJSONAt: (self redisQueryClassName: aClass name ID: aString) ]))