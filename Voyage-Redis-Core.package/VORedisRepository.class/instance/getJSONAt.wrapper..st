commands-ReJSON
getJSONAt: objectKey wrapper: aWrapper
	self flag: #improveIT. 
	self flag: 'I dont find goosd solution to extends wisely the RsRedisEndpoint , so I used this simple way'.
	^ aWrapper endpoint
		unifiedCommand:
			{'JSON.GET'.
			objectKey}