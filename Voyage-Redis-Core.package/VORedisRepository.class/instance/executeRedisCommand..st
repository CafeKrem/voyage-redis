running
executeRedisCommand: aBlock
	"aBlock will have a RsRedis as argument"

	^ pool connectionDo: aBlock at: databaseName