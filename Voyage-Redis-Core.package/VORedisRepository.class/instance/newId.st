instance creation
newId
	self flag: #TODO.
	^ UUID new asString