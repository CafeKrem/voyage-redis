private-enumeration
iteration: aBlock
	self
		internalIteration: [ aBlock
				value:
					((iterator next
						collect: [ :eachRedisKey | self convertToObject: eachRedisKey ])
						reject: #isNil) ]