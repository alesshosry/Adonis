baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec baseline: 'MoTion' with: [ spec repository: 'github://AlessHosry/MoTion:main' ]. 	
			spec baseline: 'PgMetadata' with: [ spec repository: 'github://AlessHosry/PgMetadata/development' ].
			spec baseline: 'Carrefour' with: [ spec repository: 'github://badetitou/Carrefour:v3' ].	
			"spec baseline: 'XMLParser' with: [ spec repository: 'github://pharo-contributions/XML-XMLParser/src' ].	 "
			spec baseline: 'PostgreSQLParser' with: [ spec repository: 'github://juliendelplanque/PostgreSQLParser' ].
			spec package: #XLLDetector.
			spec package: #'XLLDetector-Tests' with: [ spec requires: #( 'XLLDetector' ) ].		 
			spec group: 'default' with: #( 'XLLDetector' 'XLLDetector-Tests' 'Carrefour' 'MoTion' 'PgMetadata' 'PostgreSQLParser' ). 
		] 