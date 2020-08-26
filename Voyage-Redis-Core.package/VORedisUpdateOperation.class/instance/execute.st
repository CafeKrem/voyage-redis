execution
execute
	repository
		withNewVersionFor: self
		do: [ serialized at: repository fieldRootId put: id.
			repository
				executeRedisCommand: [ :aRsRedis | 
					repository
						setJSONAt:
							(repository redisQueryClassName: (serialized at: '#instanceOf') ID: id)
						putDictionary: serialized
						wrapper: aRsRedis ] ]