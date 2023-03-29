as yet unclassified
getHostEntities: eachHostContainer 
	
	^ self collectBindingsfromJavaClasses collect: [ :aBinding |
			  self buildHostEntityForBinding: aBinding .
		].
	 