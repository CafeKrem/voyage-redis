I'm a manifest for a redis driver for voyage. 
in this manifest you will see how Object are store in a redis database 

## Requierements 


in order to run correctly voyageRedis you should use a ReJSON database , a JSON module for redis , google it 'ReJSON redis' and you will find how to setup this kind of database.

## HOW TO 

### Test 

in order to execute test you have to setup a local ReJSON redis database , there is a docker container availlable

you can run this command line
```bash
sudo docker run -p 6379:6379 redislabs/rejson:latest
```

### play with voyage-redis 

before reading below you should read 'Voyage: Persisting Objects in
Document Databases'.



