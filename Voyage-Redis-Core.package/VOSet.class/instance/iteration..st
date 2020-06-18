private-enumeration
iteration: aBlock
	"iterator next return a collection"
	[ iterator hasNext ] whileTrue: [ aBlock value: iterator next ]