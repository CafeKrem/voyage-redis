enumerating-object
do: aBlock
	^ self iteration: [ :aCollection | aCollection do: aBlock ]