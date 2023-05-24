as yet unclassified
getResourceContainers

	^ self collectInheritancesFromRemote collect: [ :each | 
			   each at: 'FamixJavaInterface' ] 