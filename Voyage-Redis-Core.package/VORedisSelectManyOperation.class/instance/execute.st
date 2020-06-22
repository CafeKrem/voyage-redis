execution
execute
	(offset = 0 or: [ offset isNil ])
		ifFalse: [ ^ self iterateOverRedisWithOffset ].
	^ self iterateOverRedisWithoutOffset