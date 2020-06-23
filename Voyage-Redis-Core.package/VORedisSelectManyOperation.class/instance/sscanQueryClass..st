as yet unclassified
sscanQueryClass: aQueryClass
	| collection |
	collection := OrderedCollection new.
	(VOSet queryClass: aQueryClass repository: repository)
		do: [ :each | 
			limitCounter >= limit
				ifTrue: [ ^ collection ].
			offsetCounter < offset
				ifTrue: [ offsetCounter := offsetCounter + 1 ]
				ifFalse: [ collection add: each.
					limitCounter := limitCounter + 1 ] ].
	aQueryClass
		subclassesDo: [ :subclass | 
			collection addAll: (self sscanQueryClass: subclass).
			limitCounter >= limit
				ifTrue: [ ^ collection ] ].
	^ collection