tests
testDNUErrorShouldBeSendAndStopExecutionInBlock
	| isExecuted |
	self
		should: [ repository
				executeRedisCommand: [ :aRsRedis | aRsRedis endpoint xxxxxxxxxxxx ].
			isExecuted := true ]
		raise: MessageNotUnderstood.
	self assert: isExecuted isNil