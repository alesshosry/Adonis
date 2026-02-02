baselines
baseline: spec 

	<baseline>
	spec
		for: #common
		do: [ 
			spec description: 'Developement version of Adonis: External dependencies detector'.
			spec author: 'AlessHosry'.
			self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ]
	