baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'RediStick'
					with: [ spec repository: 'github://mumez/RediStick:master/repository' ];
				baseline: 'Voyage'
					with: [ spec repository: 'github://pharo-nosql/voyage' ] ]