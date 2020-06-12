tests
testReadOneOperation
	| testPilotVincent testPilotRedXIII |
	testPilotVincent := VOTestPilot new name: 'Vincent'.
	testPilotVincent save.
	testPilotRedXIII := VOTestPilot new name: 'red_XIII'.
	testPilotRedXIII save.
	self
		assert: (repository selectOne: VOTestPilot where: {('name' -> 'red_XIII')} asDictionary )
		equals: testPilotRedXIII