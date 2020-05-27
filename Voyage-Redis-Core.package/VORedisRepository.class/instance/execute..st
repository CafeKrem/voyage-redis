running
execute: aBlockClosure
	self isDebug
		ifTrue: [ self debugLog: 'execute: ' , aBlockClosure asString ].
	^ VORedisExecuteStrategy new
		repository: self;
		blockClosure: aBlockClosure;
		execute