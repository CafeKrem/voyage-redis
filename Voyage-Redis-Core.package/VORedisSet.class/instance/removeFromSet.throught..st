private
removeFromSet: anObjectKey throught: aRedisWrapper
	"https://redis.io/commands/srem"
	^ aRedisWrapper endpoint sRem: iterator setName member: anObjectKey