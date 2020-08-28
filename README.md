# voyage-redis  [![Build Status](https://travis-ci.org/CafeKrem/voyage-redis.svg?branch=master)](https://travis-ci.org/CafeKrem/voyage-redis)
 implementation of a redis driver for voyage framework (no-sql framework).
 
 ## CI 
 
 the CI is running on Pharo 7 & 8. for Pharo 9 there is a baseline error 
 
 ## author 
 
 ### CafeKrem
 
 I'm work on this project during my internship for my first year of master degree. 
 please if you have advice , better ideas for code quality , or anything that can upgrade code quality , please tell me. 

## HOW TO 

### run test 

in order to run test you should instantiate a redis database with [ReJSON](https://oss.redislabs.com/redisjson/) module.
This Repository contain a redis configuration file.

you can run this script With Docker.
```bash 
docker run -p 6379:6379 
-v /your/Absolute/Path/To/redis.conf:/etc/redis/redis.conf 
redislabs/rejson /etc/redis/redis.conf
```

without docker: 

look at https://oss.redislabs.com/redisjson/ 

### run it  

in order to try you can use class from test class and look at test for more information it can help you.

#### initialize a repository 

```smalltalk 
RsRedisConnectionPool initialize.
	repository := VORedisRepository
		host: VORedisRepository redisHost 
		port: VORedisRepository defaultPort
		database: 'Voyage-Tests'
		username: nil
		password: 'goodPassword'.
	VORepository setRepository: repository
```

#### API 

the API of **VORedisRepository** is the same as the mongo one but there is some difference.

##### all message with where , selectOne:where: , selectMany:where: , ...

all those message **ONLY** take **Block**

example: 

you should not do this 
```smalltalk 
VOTestPilot selectOne: { 'name' -> 'John' }
```
you SHOULD do this
```smalltalk
VOTestPilot selectOne: [:each | each name = 'John']
```

##### you want to talk directly to redis

```
voRedisRepositoryInstance executeRedisCommand: [:aRsRedis | aRsRedis endpoint seeMethodInRsRedisEndpoint. aRsRedis endpoint unifiedCommand: {#GET . 'aKey'}]
```

##### adding TTL information  

you can add description to your object you just have to define a method like this:

```smalltalk
MyObjectStore class >> #myMethod
<redisContainer>
	^ VORedisContainer new
		ttlDuration: 1;
		yourself
```

## implementation 

few word about implementation , in order to store object in redis , I decided to use 2 redis data structure :

1- a redis JSON data type who store JSON ,  when voyage serialize an object it transform it into a pharo collection like a JSON. 

2- a set , use to store reference to instance of MyObjectStoreInRedis

### typo 

1- 'MyObjectStoreInRedis:<IDOfInstance>'

2- 'MyObjectStoreInRedis:setIDs'

## dependency 

* [https://github.com/mumez/RediStick](https://github.com/mumez/RediStick)
   * [https://github.com/mumez/Stick](https://github.com/mumez/Stic)
* [https://github.com/pharo-nosql/voyage](https://github.com/pharo-nosql/voyage)
