as yet unclassified
getReferenceEntities: eachHostContainer 

		^ (self collectBindingsFromJavaClasses: eachHostContainer) collect: [ 
		  :aBinding | self buildReferenceEntityForBinding: aBinding ]
	 