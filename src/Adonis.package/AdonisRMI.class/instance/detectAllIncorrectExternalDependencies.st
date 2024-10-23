as yet unclassified
detectAllIncorrectExternalDependencies
	
	|res|
	
	res := OrderedCollection new.
	res add: (self filterMissingResourceDependencies: self detectedExternalDependencies). 
	res add: (self filterExcessiveResourceDependencies: self detectedExternalDependencies). 
	self detectedIncorrectExternalDependencies: res flattened.