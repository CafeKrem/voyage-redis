https://github.com/RedisJSON/RedisJSON
cd RedisJSON/ 
cargo build --release
redis-server ../redis.conf --loadmodule ./target/release/librejson.so & 
sleep 10 
