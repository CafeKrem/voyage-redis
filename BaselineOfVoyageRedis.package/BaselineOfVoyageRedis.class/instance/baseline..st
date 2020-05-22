baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Stick'
					with: [ spec repository: 'github.com://mumez/Stick' ];
				baseline: 'RediStick'
					with: [ spec repository: 'github.com://mumez/RediStick' ];
				baseline: 'voyage'
					with: [ spec repository: 'github.com://pharo-nosql/voyage' ] ]