as yet unclassified
scanQueryClassNoOffset: aQueryClass
	| collection |
	collection := OrderedCollection new.
	(VORedisSet queryClass: aQueryClass repository: repository)
		do: [ :each | 
			limitCounter >= limit
				ifTrue: [ ^ collection ].
			collection add: each.
			limitCounter := limitCounter + 1 ].
	aQueryClass
		subclassesDo: [ :subclass | 
			collection addAll: (self scanQueryClassNoOffset: subclass).
			limitCounter >= limit
				ifTrue: [ ^ collection ] ]