as yet unclassified
cutClassName: className

	|newClassName|
	newClassName := className .
	
	(className includesSubstring: '.') ifTrue: [
		newClassName := (className splitOn: '.' ) last. 
	].

	^ newClassName.