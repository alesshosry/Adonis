baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec baseline: 'MoTion' with: [ spec repository: 'github://AlessHosry/MoTion:main' ]. 	
			spec baseline: 'XMLParser' with: [ spec repository: 'github://pharo-contributions/XML-XMLParser/src' ].  
			spec package: #XLLDetector.
			spec package: #'XLLDetector-Tests' with: [ spec requires: #( 'XLLDetector' ) ].		 
			spec group: 'default' with: #( 'XLLDetector' 'XLLDetector-Tests' 'MoTion' 'XMLParser' ). 
		] 