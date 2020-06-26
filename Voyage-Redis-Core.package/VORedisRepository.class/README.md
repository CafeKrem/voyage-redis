!!!!!!!!!!! WARNING !!!!!!!!!!
in order to use me you must have a ReJSON redis database
see https://oss.redislabs.com/redisjson/ 
!!!!!!!!!!! END WARNING !!!!!!
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
	connectionTimeout:		<Object>
	databaseName:		<String>
	password:		<Object>
	pool:		<RsConnectionPool> via this connectionPool all operation are doing his request 
	redisUrls:		<Object>
	username:		<Object>


    Implementation Points

in redis we store Object as JSON string 
the serialiser product a dictionary that we convert it as JSON string in order to store it in redis.

so in redis we use 2 data structure: 

* ReJSON data type , that containing a JSON value containing Object information , see https://oss.redislabs.com/redisjson/ for more information 
* a redis set , https://redis.io/topics/data-types-intro#redis-sets
