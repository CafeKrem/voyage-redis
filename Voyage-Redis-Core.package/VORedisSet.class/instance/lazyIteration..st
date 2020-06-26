private-enumeration
lazyIteration: aBlock
	"a lazy iteration iterate only on set without downloading the object"

	self internalIteration: [ aBlock value: iterator next ]