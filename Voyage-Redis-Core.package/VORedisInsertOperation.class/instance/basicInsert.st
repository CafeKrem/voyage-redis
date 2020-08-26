operations
basicInsert
	"I will store in the redis database an association MyCLassNam Unknown input at end ->e Unknown input at end ->:InstanceID -> an Hash{version  ...} see
https://redis.io/topics/data-types-intro hash section  "

	| objectKey setKey |
	setKey := repository redisQueryClassSetName: self object class.
	objectKey := repository
		redisQueryClassName: (serialized at: '#instanceOf')
		ID: self id.
	serialized at: repository fieldRootId put: self id.
	repository
		executeRedisCommand: [ :aRsRedis | 
			repository setJSONAt: objectKey putDictionary: serialized wrapper: aRsRedis.
			aRsRedis endpoint sAdd: setKey member: objectKey.
			ttl
				ifNotNil: [ aRsRedis endpoint expire: objectKey seconds: ttl ] ]