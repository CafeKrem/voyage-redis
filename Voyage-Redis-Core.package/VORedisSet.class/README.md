I'm an abstraction to set store in Redis database 

I'm providing the same iteration API as Collection.
If there is a miss method , you can provide a Pull-Request.

Implementation part: 
 
Instance Variable: 
	- redisRepository    <VORedisRepository> it's give an access to some method usefull method 
	- setName            <String> the name of the key in redisDatabase
	- iterator           <VOSetIterator> an iterator doing interaction with redis database