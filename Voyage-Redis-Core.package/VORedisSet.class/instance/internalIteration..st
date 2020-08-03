private-enumeration
internalIteration: aBlock
	self flag: #RENAME.
	self flag: 'I think this name is not good but I don"t know what name I can put instead'.
	iterator reset.
	[ iterator hasNext ] whileTrue: aBlock