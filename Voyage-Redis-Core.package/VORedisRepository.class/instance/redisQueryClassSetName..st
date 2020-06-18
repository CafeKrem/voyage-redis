persistence
redisQueryClassSetName: aQueryClass
	| writeStream |
	writeStream := WriteStream with: aQueryClass name.
	writeStream nextPutAll: self setIDsName .
	^ writeStream contents