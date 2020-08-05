utils
redisQueryClassSetName: aQueryClass
	"return the set key where is store reference to instance of aQueryClass store in redis Database"

	"VORedisRepository new redisQueryClassSetName: VOTestPilot >>> 'VOTestPilot:SetIDs'"

	| writeStream |
	self flag: #RENAME.
	self flag: 'I think we need to set a better name but I don"t whitch can be replace this one'.
	writeStream := WriteStream with: aQueryClass name.
	writeStream nextPutAll: self setIDsName.
	^ writeStream contents