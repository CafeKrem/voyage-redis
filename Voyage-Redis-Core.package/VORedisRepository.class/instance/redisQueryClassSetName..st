utils
redisQueryClassSetName: aQueryClass
	"return the set key where is store reference to instance of aQueryClass store in redis Database"

	"VORedisRepository new redisQueryClassSetName: VOTestPilot >>> 'VOTestPilot:SetIDs'"

	| writeStream |
	writeStream := WriteStream with: aQueryClass name.
	writeStream nextPutAll: self setIDsName.
	^ writeStream contents