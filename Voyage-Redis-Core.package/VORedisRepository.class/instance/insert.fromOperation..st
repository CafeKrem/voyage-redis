writting
insert: aSerializedObject fromOperation: aVORedisInsertOperation
	"I will store in the redis database an association MyCLassName:InstanceID -> an Hash{version  ...} see
https://redis.io/topics/data-types-intro hash section  "

	| writeStream |
	writeStream := WriteStream
		with: (aSerializedObject at: '#instanceOf').
	writeStream
		nextPut: $:;
		nextPutAll: aVORedisInsertOperation id.
	pool
		connectionDo: [ :aRedisWrapper | 
			aRedisWrapper endpoint
				hMSet: writeStream contents
				dictionary: aSerializedObject ]
		at: databaseName