initialization
setName: aSetName repository: aRepository
	^ self basicNew
		setName: aSetName;
		repository: aRepository;
		initialize