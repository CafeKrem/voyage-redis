tests
testTTLInsertOperation
	| cat |
	cat := VORedisDyingCat new name: 'Bastet'.
	cat save.
	2 second wait.
	self assert: (repository selectOne: VORedisDyingCat where: [:each | each name = cat name]) isNil