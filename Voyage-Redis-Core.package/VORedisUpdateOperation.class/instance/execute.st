execution
execute
	repository
		withNewVersionFor: self
		do: [ serialized at: repository fieldRootId put: id.
			repository
				executeRedisCommand: [ :aRedisWrapper | 
					aRedisWrapper endpoint
						setJSONAt:
							(repository
								redisQueryClassName: (serialized at: '#instanceOf')
								ID: id)
						putDictionary: serialized ] ]