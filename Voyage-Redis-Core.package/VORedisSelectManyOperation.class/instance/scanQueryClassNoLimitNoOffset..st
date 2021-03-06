private
scanQueryClassNoLimitNoOffset: aQueryClass
	| collection |
	collection := OrderedCollection new.
	(VORedisSet queryClass: aQueryClass repository: repository)
		do: [ :each | collection add: each ].
	aQueryClass
		subclassesDo:
			[ :subclass | collection addAll: (self scanQueryClassNoLimitNoOffset: subclass) ].
	^ collection