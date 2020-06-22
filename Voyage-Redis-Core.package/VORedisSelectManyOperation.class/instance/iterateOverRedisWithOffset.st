as yet unclassified
iterateOverRedisWithOffset
	| collection counter offsetCounter |
	counter := 0.
	offsetCounter := 0.
	collection := OrderedCollection new.
	(VOSet queryClass: queryClass repository: repository)
		do: [ :each | 
			offsetCounter < offset
				ifTrue: [ offsetCounter := offsetCounter + 1 ]
				ifFalse: [ collection add: each.
					counter := counter + 1.
					counter = limit
						ifTrue: [ ^ collection ] ] ]