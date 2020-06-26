examples
example
	<example>
	| aRepository newObject |
	aRepository := VORedisRepository database: 0.
	newObject := VOTestPilot new name: 'patrick'.
	(aRepository serialize: newObject) inspect	"this method is used by save: anObject"
		"look in operations attribut there will be an instance of self(me)"