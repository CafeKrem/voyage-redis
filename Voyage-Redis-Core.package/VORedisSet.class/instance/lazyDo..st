enumeration
lazyDo: aBlockClosure
	"aBlockClosure have a redis key as argument"

	^ self
		lazyIteration: [ :aCollection | aCollection do: aBlockClosure ]