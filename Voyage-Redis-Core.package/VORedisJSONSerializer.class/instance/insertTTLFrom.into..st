hooks
insertTTLFrom: aDescription into: operation
	operation
		ttl:
			(aDescription properties
				at: VORedisContainerNameProperties ttlValue
				ifAbsentPut: [ nil ])