as yet unclassified
sscanQueryClass: aQueryClass
	| objectDetected |
	objectDetected := (VOSet
		queryClass: aQueryClass
		repository: repository) detect: where.
	objectDetected ifNotNil: [ ^ objectDetected ].	"in case of readOneOperation I take the first occurence"
	aQueryClass hasSubclasses
		ifTrue: [ aQueryClass
				subclassesDo: [ :subclass | 
					objectDetected := self sscanQueryClass: subclass.
					objectDetected ifNotNil: [ ^ objectDetected ] ] ]
		ifFalse: [ ^ objectDetected ]