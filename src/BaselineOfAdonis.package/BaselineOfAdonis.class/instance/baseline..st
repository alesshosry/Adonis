baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec baseline: 'MoTion' with: [ spec repository: 'github://AlessHosry/MoTion:main' ]. 	
			spec baseline: 'PgMetadata' with: [ spec repository: 'github://AlessHosry/PgMetadata/development' ].
			spec baseline: 'Carrefour' with: [ spec repository: 'github://moosetechnology/Carrefour:v5' ].	
			"spec baseline: 'XMLParser' with: [ spec repository: 'github://pharo-contributions/XML-XMLParser/src' ].	 "
			spec baseline: 'PostgreSQLParser' with: [ spec repository: 'github://juliendelplanque/PostgreSQLParser' ].
			spec package: #Adonis.
			spec package: #'Adonis-Tests' with: [ spec requires: #( 'Adonis' ) ].		 
			spec group: 'default' with: #( 'Adonis' 'Adonis-Tests' 'Carrefour' 'MoTion' 'PgMetadata' 'PostgreSQLParser' ). 
		] 