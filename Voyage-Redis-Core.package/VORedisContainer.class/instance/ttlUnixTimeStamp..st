commands-generic
ttlUnixTimeStamp: anEpochTimeStamp
	self
		setTtlType: VORedisContainerNameProperties ttlTypeUnixTimeStamp;
		setTtlValue: anEpochTimeStamp