execution
execute
	^ where
		ifNil: [ "with this I only ask to redis set his size" self countQueryClass: queryClass ]
		ifNotNil:
			[ "here i have to download the object in order to check if where is true"
			(VORedisSet queryClass: queryClass repository: repository)
				count: where ]