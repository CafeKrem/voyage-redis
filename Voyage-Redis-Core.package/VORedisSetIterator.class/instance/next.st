testing
next
	| scanResult |
	self hasNext
		ifFalse: [ VONoSuchElementException signal ].
	scanResult := self sScan.
	currentCursor := scanResult at: 1.
	currentCursor = '0' 
		ifTrue: [ isFirstRound := false ].
	^ scanResult at: 2