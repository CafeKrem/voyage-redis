as yet unclassified
getJSONObject: anObjectKey
	"return 
		- aJSON string store in redis
		- nil if key is expire , if is it remove anObjectKey from the set "
	| result |
	repository
		executeRedisCommand: [ :aRedisWrapper | 
			result := aRedisWrapper endpoint getJSONAt: anObjectKey.
			result
				ifNil:
					[ aRedisWrapper endpoint sRem: iterator setName member: anObjectKey ] ].
	^ result