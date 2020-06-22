tests
testVOSet
	| roger bernard set collectionTest |
	collectionTest := OrderedCollection new.
	roger := VOTestPilot new name: 'Roger'.
	roger save.
	bernard := VOTestPilot new name: 'Bernard'.
	bernard save.
	set := VOSet queryClass: roger class repository: repository.
	set do: [ :each | collectionTest add: each ].
	self
		assertCollection: (collectionTest collect: #name)
		hasSameElements:
			({roger.
			bernard} collect: #name).
	self
		assert: (set detect: [ :each | each name = roger name ]) name
		equals: roger name