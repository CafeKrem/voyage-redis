execution
execute
	| result |
	self flag: #todo.
	result := self basicSelectOne.
	^ (result isKindOf: queryClass)
		ifTrue: [ result ]
		ifFalse: [ nil ]