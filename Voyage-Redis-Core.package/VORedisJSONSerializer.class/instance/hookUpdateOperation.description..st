hooks
hookUpdateOperation: anOperation description: aDescription
	"I'm a hook , initialy I was created in order to add Time to Live propety for redis"

	"you have to return an operation"

	self insertTTLFrom: aDescription into: anOperation.
	^ anOperation