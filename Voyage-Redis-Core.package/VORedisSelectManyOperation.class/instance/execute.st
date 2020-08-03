execution
execute
	"ugly !!!!!!!"
	self flag: #VOTODO.
	self flag: 'break conditional'.
	(offset = 0 or: [ offset isNil ])
		ifTrue: [ limit ifNil: [ ^ self scanQueryClassNoLimitNoOffset: queryClass ].
			^ self scanQueryClassNoOffset: queryClass ]
		ifFalse: [ limit ifNil: [ ^ self sscanQueryClassNoLimit: queryClass ].
			^ self sscanQueryClass: queryClass ]