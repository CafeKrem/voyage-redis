tests
testReadOneOperation
	| testPilotVincent testPilotRedXIII |
	self flag: #removeIt.
	testPilotVincent := VOTestPilot new name: 'Vincent'.
	testPilotVincent save.
	testPilotRedXIII := VOTestPilot new name: 'red_XIII'.
	testPilotRedXIII save.
	self
		assert:
			(repository
				selectOne: VOTestPilot
				where: [ :anObject | anObject name = testPilotVincent name ]) name 
		equals: testPilotVincent name