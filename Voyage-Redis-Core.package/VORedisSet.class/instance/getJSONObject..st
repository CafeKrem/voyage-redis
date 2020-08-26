private
getJSONObject: anObjectKey
	"return 
		- aJSON string store in redis
		- nil if key is expire , if is it remove anObjectKey from the set "

	| result |
	repository
		executeRedisCommand: [ :aRsRedis | 
			result := repository getJSONAt: anObjectKey wrapper: aRsRedis.
			"if result is nil it's mean that the TTL object has expired"
			result ifNil: [ self removeFromSet: anObjectKey wrapper: aRsRedis ] ].
	^ result