writting
getRedisKeyFromObject: aClassName withID: anID
	| objectKey |
	objectKey := WriteStream with: aClassName.
	objectKey
		nextPut: $:;
		nextPutAll: anID.
	^ objectKey contents