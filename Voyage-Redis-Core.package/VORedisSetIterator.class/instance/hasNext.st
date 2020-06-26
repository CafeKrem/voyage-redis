testing
hasNext
	| scanResult |
	scanResult := self sScan.
	^ (scanResult at: 1) ~= 0 asString
		or: [ (scanResult at: 2) isNotEmpty and: [ isFirstRound ] ]