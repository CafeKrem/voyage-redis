persistence
basicSelectOne
	^ where
		at: repository fieldRootId
		ifPresent: [ :anID | repository readAtKey: queryClass withID: anID ]
		ifAbsent: [ repository readInDataBaseClass: queryClass where: where ]