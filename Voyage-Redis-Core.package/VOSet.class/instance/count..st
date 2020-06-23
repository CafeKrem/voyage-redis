API
count: aBlockClosure
	| counter |
	counter := 0.
	self
		do: [ :each | 
			(aBlockClosure value: each)
				ifTrue: [ counter := counter + 1 ] ].
	^ counter