private-enumeration
lazyIteration: aBlock
	"this method will iter on a Collection of redis key"
	"iterator next will return aSetOf('MyClassStoreInRedis:HisID' , ...)"

	self internalIteration: [ aBlock value: iterator next ]