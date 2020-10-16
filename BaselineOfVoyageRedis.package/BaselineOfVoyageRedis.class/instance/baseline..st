baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'RediStick'
					with: [ spec
						loads: #('ConnectionPool');
						repository: 'github://mumez/RediStick:develop/repository' ];
				baseline: 'Voyage'
					with:
						[ spec repository: 'github://CafeKrem/voyage:add-feature-redisTTL/mc' ];
				package: 'Voyage-Redis-Core';
				package: 'Voyage-Redis-Tests' ]