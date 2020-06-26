I'm an implementation of count operation 

if where isNil 
	I use scard redis return the size of a set , documentation : https://redis.io/commands/scard

if where isNotNil 
	I use a VoRedisSet collection to count see VOredisSet documentation for more information