private
convertToObject: aRedisKey
	| result |
	result := self getJSONObject: aRedisKey.
	result
		ifNotNil: [ result := self repository
				retrieveQueriedInstanceOf: queryClass
				serialized: (NeoJSONReader fromString: result) ].
	^ result