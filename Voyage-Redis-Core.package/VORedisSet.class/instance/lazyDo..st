enumarating-redisKey
lazyDo: aBlockClosure
	"lazyDo: [:aRedisKey | ... ] will iterate on redis key without resolving key reference"

	^ self
		lazyIteration: [ :aCollection | aCollection do: aBlockClosure ]