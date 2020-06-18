persistence
detectWith: aRedisWrapper
	| resultCollectionDetect resultScan iterator setIDName |
	iterator := 0.
	setIDName := self redisQueryClassSetName: queryClass.
	[ resultScan := aRedisWrapper endpoint
		sScanKey: setIDName
		cursor: iterator.
	iterator := resultScan at: 1.
	resultCollectionDetect := (resultScan at: 2)
		detect: [ :each | 
			where
				value:
					(self repository
						retrieveQueriedInstanceOf: queryClass
						serialized: (NeoJSONReader fromString: (aRedisWrapper endpoint getJSONAt: each))) ].
	resultCollectionDetect isNotNil or: [ iterator = 0 asString ] ]
		whileFalse.
	^ NeoJSONReader
		fromString: (aRedisWrapper endpoint getJSONAt: resultCollectionDetect)