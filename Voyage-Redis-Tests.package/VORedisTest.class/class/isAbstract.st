testing
isAbstract
	^ super isAbstract or: [ self name = #VORedisTest ]