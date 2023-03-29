as yet unclassified
collectBindingsFromJavaClasses: eachHostContainer

	| propertiesDeclarators |
	"Step 1: getting all detelarators names of Properties"
	propertiesDeclarators := self detectPropertiesDeclarationsOf:
		                         eachHostContainer.

	" Step 2: loop over declarators found (we can have props1. and props2. in the same class "
	propertiesDeclarators ifNotEmpty: [ 
		propertiesDeclarators do: [ :eachDeclarator | "Step 3: get all hosts, foreign and path convenient to each declarator"
			| inputFile | 
			inputFile := self detectPropertiesLocator: eachDeclarator of: eachHostContainer.

			^ (self
				   collectPropertiesReferencesNames: eachDeclarator
				   of: eachHostContainer) do: [ :eachBinding |  
				  eachBinding at: 'FileName' put: inputFile ] ] ].

	^ {}