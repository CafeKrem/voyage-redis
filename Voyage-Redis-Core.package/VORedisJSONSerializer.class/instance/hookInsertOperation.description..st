hooks
hookInsertOperation: operation description: aDescription
	"hook method , initialy craeted for redis time to live"

	"you have to return an operation"

	^ operation
		ttl:
			(aDescription properties
				at: VORedisContainerNameProperties ttlValue
				ifAbsentPut: [ nil ]);
		yourself