utils
redisQueryClassName: aClassName ID: anID
	"return a String of aClassName , $: , anID
		it's use as redis key in order to store Object in database
	"

	"VORedisRepository new redisQueryClassName: Point name ID: '123456789' >>> 'Point:123456789'"

	| objectKey |
	self flag: #RENAME.
	objectKey := WriteStream with: aClassName.
	objectKey
		nextPut: $:;
		nextPutAll: anID.
	^ objectKey contents