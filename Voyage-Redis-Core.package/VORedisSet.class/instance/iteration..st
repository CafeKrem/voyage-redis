private-enumeration
iteration: aBlock
	"iterator next return a collection"

	self
		internalIteration: [ aBlock
				value:
					((iterator next
						collect: [ :each | 
							"transform collection of key into pharo object"
							| result |
							result := self getJSONObject: each.
							result
								ifNotNil: [ result := self repository
										retrieveQueriedInstanceOf: queryClass
										serialized: (NeoJSONReader fromString: result) ].
							result ]) reject: #isNil) ]