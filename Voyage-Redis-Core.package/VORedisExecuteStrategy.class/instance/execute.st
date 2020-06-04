execution
execute
	self flag: #warning.
	^ blockClosure value
	"
		on: Error
		do: [ :error | self logError: error ]"