testing
next
	| scanResult |
	self hasNext
		ifFalse: [ VONoSuchElementException signal].
	isFirstRound := true.
	scanResult := self sScan.
	currentCursor := scanResult at: 1.
	^ scanResult at: 2