baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Stick'
					with: [ spec repository: 'github://mumez/Stick' ];
				baseline: 'RediStick'
					with: [ spec repository: 'github://mumez/RediStick' ];
				baseline: 'voyage'
					with: [ spec repository: 'github://pharo-nosql/voyage' ] ]