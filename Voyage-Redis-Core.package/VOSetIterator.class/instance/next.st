testing
next
	| scanResult |
	self hasNext
		ifFalse: [ VONoSuchElementException signal].
	isFirstRound := false.
	scanResult := self sScan.
	currentCursor := scanResult at: 1.
	^ scanResult at: 2