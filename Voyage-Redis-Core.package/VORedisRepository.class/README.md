I'm a Voyage repository who can persist on redis databases.

Public API and Key Messages

- executeRedisCommand: [:aRediWrapper |   ] 
	this method execute a block containing redis request via a connectionPool.
- redisQueryClassName: aClassName ID: anObjectID 
	return a redis key where is store the aClassName object with anObjectID  
- redisQueryClassSetName: aClassName 
	return the key of a redis set where is store all key of aClassName  
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	databaseName:		<String>
	password:		<Object>
	pool:		<RsConnectionPool> the connectionPool manage connection and send our requests 
	redisUrls:		<Object>
	username:		<Object>


    Implementation Points

when we want to save an Object we transform it into a Collection organised like a JSON data.
so in redis we use 2 data structure: 

* ReJSON data type , use to store Object information as JSON format ,  https://oss.redislabs.com/redisjson/ for more information 
* a redis set , https://redis.io/topics/data-types-intro#redis-sets
