tests
testIteratorOnNotEmptySet
	| roger |
	roger := VOTestPilot new name: 'Roger'.
	roger save.
	setIterator setName: 'VOTestPilot' , repository setIDsName.
	self assert: setIterator hasNext.
	self assert: setIterator next size equals: 1