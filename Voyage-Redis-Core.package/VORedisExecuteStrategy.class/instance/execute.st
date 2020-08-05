execution
execute
	^ blockClosure 
		on: Error
		do: [ :error | self logError: error ]