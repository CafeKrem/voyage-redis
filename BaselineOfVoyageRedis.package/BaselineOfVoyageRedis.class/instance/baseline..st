baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ "external dependency"
			spec
				baseline: 'RediStick'
					with: [ spec repository: 'github://CafeKrem/RediStick:master/repository' ];
				baseline: 'Voyage'
					with: [ spec repository: 'github://zecke/voyage-stable:features-sdam2-n/mc' ];
				package: 'Voyage-Redis-Core';
				package: 'Voyage-Redis-Tests' ]