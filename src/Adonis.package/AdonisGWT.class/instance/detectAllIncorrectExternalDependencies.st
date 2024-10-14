as yet unclassified
detectAllIncorrectExternalDependencies

	|res|
	
	res := OrderedCollection new.
	res add: (self filterMissingResourceDependencies: self detectedExternalDependencies). 
	res add: (self filterNonExclusiveResourceDependencies: self detectedExternalDependencies).
	res add: (self filterNonExclusiveReferenceDependencies: self detectedExternalDependencies).
	
	self detectedIncorrectExternalDependencies: res flattened.