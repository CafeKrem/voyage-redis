running
tearDown
	"Reset the DB after each test"

	"self repository dropDatabase"

	super tearDown.
	self repository pool
		connectionDo: [ :aRedisWrapper | aRedisWrapper endpoint flushAll ]
		at: self repository databaseName.
	"(VOTestObject allSubclasses
		collect: [ :each | each persistentClass ]
		as: Set) do: [ :each | repository removeAll: each ].
	Smalltalk garbageCollect.
	self waitForWriteOperation"