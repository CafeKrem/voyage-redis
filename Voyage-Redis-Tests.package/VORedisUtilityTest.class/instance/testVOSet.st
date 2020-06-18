tests
testVOSet
	| roger set |
	roger := VOTestPilot new name: 'Roger'.
	roger save.
	set := VOSet queryClass: roger class repository: repository.
	self
		assert: (set detect: [ :each | each name = roger name ])
		equals: roger