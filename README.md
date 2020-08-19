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


## dependency 

* [https://github.com/mumez/RediStick](https://github.com/mumez/RediStick)
   * [https://github.com/mumez/Stick](https://github.com/mumez/Stic)
* [https://github.com/pharo-nosql/voyage](https://github.com/pharo-nosql/voyage)
