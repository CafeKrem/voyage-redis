running
executeRedisCommand: aBlock
	"aBlock will have a RsRedisWrapper as argument"
	^ pool connectionDo: aBlock at: databaseName