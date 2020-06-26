execution
execute
	"I decide to overide this method because to iterate we download Object in order to check where block"
	| result |
	result := self basicSelectOne.
	^ (result isKindOf: queryClass)
		ifTrue: [ result ]
		ifFalse: [ nil ]