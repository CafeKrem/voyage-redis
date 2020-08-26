private
removeFromSet: anObjectKey wrapper: aRedisWrapper
	"https://redis.io/commands/srem"
	^ aRedisWrapper endpoint sRem: iterator setName member: anObjectKey