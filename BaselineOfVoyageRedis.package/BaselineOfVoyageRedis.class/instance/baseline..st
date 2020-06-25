baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ "external dependency"
			spec
				baseline: 'RediStick'
					with: [ spec
						loads: #('ConnectionPool');
						repository: 'github://CafeKrem/RediStick:AddReJSON/repository' ];
				baseline: 'Voyage'
					with: [ spec repository: 'github://pharo-nosql/voyage:master/mc' ];
				package: 'Voyage-Redis-Core';
				package: 'Voyage-Redis-Tests' ]