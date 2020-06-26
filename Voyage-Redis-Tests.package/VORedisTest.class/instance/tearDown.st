running
tearDown
	"Reset the DB after each test"

	"self repository dropDatabase"

	super tearDown.
	self repository executeRedisCommand: [ :aRedisWrapper | aRedisWrapper endpoint flushAll ].
	(VOTestObject allSubclasses
		collect: [ :each | each persistentClass ]
		as: Set) do: [ :each | repository removeAll: each ].
	Smalltalk garbageCollect.
	self waitForWriteOperation