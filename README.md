# voyage-redis 
 implementation of a redis driver for voyage framework (no-sql framework) 

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

### play with 

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

## dependency 

* [https://github.com/mumez/RediStick](https://github.com/mumez/RediStick)
   * [https://github.com/mumez/Stick](https://github.com/mumez/Stic)
* [https://github.com/pharo-nosql/voyage](https://github.com/pharo-nosql/voyage)
