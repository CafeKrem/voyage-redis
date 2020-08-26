commands-ReJSON
setJSONAt: objectKey putDictionary: serialized wrapper: aRedisWrapper
	self flag: #improveIT. 
	self flag: 'I dont find goosd solution to extends wisely the RsRedisEndpoint , so I used this simple way'.
	^ aRedisWrapper
		unifiedCommand:
			{'JSON.SET'.
			objectKey.
			'.'.
			(NeoJSONWriter toString: serialized)}