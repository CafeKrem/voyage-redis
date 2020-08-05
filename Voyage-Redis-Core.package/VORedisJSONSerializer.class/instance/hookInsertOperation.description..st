hooks
hookInsertOperation: anOperation description: aDescription
	"hook method , initialy craeted for redis time to live"

	"you have to return an operation"

	self insertTTLFrom: aDescription into: anOperation.
	^ anOperation