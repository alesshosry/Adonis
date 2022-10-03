baselines
baseline: spec

	<baseline>
	spec for: #common do: [ 
		"spec
			package: #XLLDetector;
			package: #'XLLDetector-Tests' with: [ spec requires: #( 'XLLDetector' ) ].
		""spec for: #MooseX do: [ spec package: 'XLLDetector' ]. ??? ""
		spec group: 'default' with: #( 'XLLDetector' 'XLLDetector-Tests' )" 
		self
				definePackages: spec;
				defineDependencies: spec		
		]