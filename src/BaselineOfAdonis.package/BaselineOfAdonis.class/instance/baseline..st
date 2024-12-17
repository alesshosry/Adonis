baselines
baseline: spec

	<baseline>
	spec for: #common do: [
		spec
			baseline: 'MoTion'
			with: [ spec repository: 'github://moosetechnology/MoTion:main' ].
		spec
			baseline: 'Carrefour'
			with: [ spec repository: 'github://moosetechnology/Carrefour:v5' ].

		spec package: #Adonis.
		spec package: #'Adonis-Tests' with: [ spec requires: #( 'Adonis' ) ] ]