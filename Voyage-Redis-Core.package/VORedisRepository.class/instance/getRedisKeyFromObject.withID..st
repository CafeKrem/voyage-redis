writting
getRedisKeyFromObject: aSerializedObject withID: anID
	| objectKey |
	objectKey := WriteStream with: (aSerializedObject at: '#instanceOf').
	objectKey
		nextPut: $:;
		nextPutAll: anID .
	^ objectKey contents