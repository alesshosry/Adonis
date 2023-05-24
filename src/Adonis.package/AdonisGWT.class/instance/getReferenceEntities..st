as yet unclassified
getReferenceEntities: eachHostContainer 
	
	^ self collectBindingsfromJavaClasses collect: [ :aBinding |
			  self buildReferenceEntityForBinding: aBinding .
		].
	 