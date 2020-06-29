private-enumeration
internalIteration: aBlock
	iterator reset.
	[ iterator hasNext ] whileTrue: aBlock