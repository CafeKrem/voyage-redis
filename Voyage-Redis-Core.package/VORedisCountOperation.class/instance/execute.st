execution
execute
	^ where
		ifNil: [ self countQueryClass: queryClass ]
		ifNotNil: [ (VOSet queryClass: queryClass repository: repository) count: where ]