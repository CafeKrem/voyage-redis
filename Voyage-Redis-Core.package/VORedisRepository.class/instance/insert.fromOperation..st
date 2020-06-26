writting
insert: aSerializedObject fromOperation: aVORedisInsertOperation
	"I will store in the redis database an association MyCLassName:InstanceID -> an Hash{version  ...} see
https://redis.io/topics/data-types-intro hash section  "

	| objectKey setKey |
	setKey := self
		redisQueryClassSetName: aVORedisInsertOperation object class.
	objectKey := self
		redisQueryClassName: (aSerializedObject at: '#instanceOf')
		ID: aVORedisInsertOperation id.
	aSerializedObject
		at: self fieldRootId
		put: aVORedisInsertOperation id.
	pool
		executeRedisCommand: [ :aRedisWrapper | 
			aRedisWrapper endpoint
				setJSONAt: objectKey putDictionary: aSerializedObject;
				sAdd: setKey member: objectKey ]