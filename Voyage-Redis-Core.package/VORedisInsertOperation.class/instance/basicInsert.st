operations
basicInsert
	"I will store in the redis database an association MyCLassName:InstanceID -> an Hash{version  ...} see
https://redis.io/topics/data-types-intro hash section  "

	| objectKey setKey |
	setKey := repository redisQueryClassSetName: self object class.
	objectKey := repository
		redisQueryClassName: (serialized at: '#instanceOf')
		ID: self id.
	serialized at: repository fieldRootId put: self id.
	repository
		executeRedisCommand: [ :aRedisWrapper | 
			aRedisWrapper endpoint
				setJSONAt: objectKey putDictionary: serialized;
				sAdd: setKey member: objectKey ]