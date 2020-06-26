I'm an iterator I iterate an an id set for redis 

in redis database we store 2 kind of structure:
Example <myKey , valueStoreInRedisDatabase>
1- MyObject:<instanceID> , json string (store with ReJSON) 
2- MyObject:setIDs , a set of instanceID (use to query and not losing referencies to object)

So I'm iterate on set store behind this key 'MyObject:setIDs'

I'm providing this API (instance side):

hasNext : returning a boolean value , true if sscan (redis command)

next : return a collection 

implementation part: 
	
Instance Variables:
	- setName 					<String> key os the set in redis
	- redisRepository        <VORedisRepository> I use it in order to do call to the redis client
	- currentCursor 			<integer> 
	- isFirstRound           <Boolean> I use it because with redis when we use sscan command (it's return 2 thing a cursor and a collection of set menber so when sscan return {0 , aNotEmptyCollection } hasNext should return true  