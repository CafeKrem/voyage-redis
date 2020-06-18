initialization
queryClass: aSetName repository: aRepository
	^ self basicNew
		queryClass: aSetName;
		repository: aRepository;
		initialize