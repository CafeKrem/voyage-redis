execution
execute
	"ugly !!!!!!!"
	
	(offset = 0 or: [ offset isNil ])
		ifTrue: [ limit ifNil: [ ^ self scanQueryClassNoLimitNoOffset: queryClass ].
			^ self scanQueryClassNoOffset: queryClass ]
		ifFalse: [ limit ifNil: [ ^ self sscanQueryClassNoLimit: queryClass ].
			^ self sscanQueryClass: queryClass ]