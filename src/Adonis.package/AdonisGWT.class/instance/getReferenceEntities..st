as yet unclassified
getReferenceEntities: eachHostContainer 
	
	^ self collectBindingsfromJavaClassesRule collect: [ :aBinding |
			  self buildReferenceEntityForBinding: aBinding .
		].
	 