private
queryClass: aClass repository: aRepository
	^ self new
		setName: (aRepository redisQueryClassSetName: aClass);
		redisRepository: aRepository