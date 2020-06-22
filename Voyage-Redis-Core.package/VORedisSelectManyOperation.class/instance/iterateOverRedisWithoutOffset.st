running
iterateOverRedisWithoutOffset
	| collection counter |
	counter := 0.
	collection := OrderedCollection new.
	(VOSet queryClass: queryClass repository: repository)
		do: [ :each | 
			collection add: each.
			counter := counter + 1.
			counter = limit
				ifTrue: [ ^ collection ] ].
	^ collection