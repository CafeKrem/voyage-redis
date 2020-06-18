writting
insert: aSerializedObject fromOperation: aVORedisInsertOperation
	"I will store in the redis database an association MyCLassName:InstanceID -> an Hash{version  ...} see
https://redis.io/topics/data-types-intro hash section  "

	| objectKey setKey |
	setKey := WriteStream with: (aSerializedObject at: '#instanceOf').
	setKey nextPutAll: self setIDsName.
	objectKey := WriteStream with: (aSerializedObject at: '#instanceOf').
	objectKey
		nextPut: $:;
		nextPutAll: aVORedisInsertOperation id.
	aSerializedObject
		at: self fieldRootId
		put: aVORedisInsertOperation id.
	pool
		connectionDo: [ :aRedisWrapper | 
			aRedisWrapper endpoint
				setJSONAt: objectKey contents putDictionary: aSerializedObject;
				sAdd: setKey contents member: objectKey contents ]
		at: databaseName