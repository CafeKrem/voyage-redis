enumerating
detect: aBlock
	self
		do: [ :each | 
			(aBlock value: each)
				ifTrue: [ ^ each ] ].
	^ nil	"not detected"