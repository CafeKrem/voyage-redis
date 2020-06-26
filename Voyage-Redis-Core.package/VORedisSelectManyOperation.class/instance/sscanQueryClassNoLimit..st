as yet unclassified
sscanQueryClassNoLimit: aQueryClass
	| collection |
	collection := OrderedCollection new.
	(VORedisSet queryClass: aQueryClass repository: repository)
		do: [ :each | 
			offsetCounter < offset
				ifTrue: [ offsetCounter := offsetCounter + 1 ]
				ifFalse: [ collection add: each ] ].
	aQueryClass
		subclassesDo:
			[ :subclass | collection addAll: (self sscanQueryClassNoLimit: subclass) ]