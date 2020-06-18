tests
testIteratorOnEmptySet
	"in this case redis databasei is empty"

	self deny: setIterator hasNext.
	self should: [ setIterator next ] raise: VONoSuchElementException