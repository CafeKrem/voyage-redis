private-enumeration
iteration: aBlock
	"iterator next return a collection"

	iterator reset.
	[ iterator hasNext ]
		whileTrue: [ aBlock
				value:
					(iterator next
						collect: [ :each | 
							"transform collection of key into pharo object"
							self repository
								retrieveQueriedInstanceOf: queryClass
								serialized:
									(NeoJSONReader
										fromString:
											(repository pool
												connectionDo: [ :aRedisWrapper | aRedisWrapper endpoint getJSONAt: each ]
												at: repository databaseName)) ]) ]