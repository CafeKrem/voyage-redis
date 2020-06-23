execution
execute
	repository
		withNewVersionFor: self
		do: [ serialized at: repository fieldRootId put: id.
			repository pool
				connectionDo: [ :aRedisWrapper | 
					aRedisWrapper endpoint
						setJSONAt:
							(repository
								getRedisKeyFromObject: (serialized at: '#instanceOf')
								withID: id)
						putDictionary: serialized ]
				at: repository databaseName ]