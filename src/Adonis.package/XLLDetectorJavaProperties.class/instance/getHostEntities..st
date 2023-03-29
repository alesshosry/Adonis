as yet unclassified
getHostEntities: eachHostContainer 

		^ (self collectBindingsFromJavaClasses: eachHostContainer) collect: [ 
		  :aBinding | self buildHostEntityForBinding: aBinding ]
	 