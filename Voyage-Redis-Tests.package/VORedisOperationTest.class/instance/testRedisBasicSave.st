tests
testRedisBasicSave
	"here I'm testing if there is the correct data structure in redis"

	| wizard wizardKey voTestPilotSetKey |
	wizard := VOTestPilot new name: 'Rincewind'.
	repository save: wizard.
	voTestPilotSetKey := repository redisQueryClassSetName: VOTestPilot.
	wizardKey := repository
		redisQueryClassName: VOTestPilot name
		ID: (repository cache keyAtValue: wizard).
	self
		assert:
			(repository
				executeRedisCommand: [ :aRedisWrapper | aRedisWrapper endpoint exists: voTestPilotSetKey ]);
		assert:
			(repository
				executeRedisCommand: [ :aRedisWrapper | aRedisWrapper endpoint type: voTestPilotSetKey ])
			equals: 'set'.
	self
		assert:
			(repository
				executeRedisCommand: [ :aRedisWrapper | aRedisWrapper endpoint exists: wizardKey ]);
		assert:
			(repository
				executeRedisCommand: [ :aRedisWrapper | aRedisWrapper endpoint type: wizardKey ])
			equals: 'ReJSON-RL'