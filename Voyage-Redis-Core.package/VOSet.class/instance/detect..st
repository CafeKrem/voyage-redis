enumerating
detect: aBlock
	^ self iteration: [ :aCollection | aCollection detect: aBlock ]