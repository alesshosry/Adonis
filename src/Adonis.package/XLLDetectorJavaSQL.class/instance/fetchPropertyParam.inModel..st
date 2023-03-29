as yet unclassified
fetchPropertyParam: parameters inModel: fastModel

	| params generalPattern |
	generalPattern := XLLJavaPatterns new.
	params := OrderedCollection new.

	parameters do: [ :eachParameter | 
		| bindings |
		bindings := (generalPattern defineJavaDeclStatementforString: '@any')
			            collectBindings: { #myArgValue. #anyName. #decName }
			            for: fastModel.

		bindings do: [ :eachBinding | 
			((eachBinding at: 'anyName') = 'getProperty' and:
				 (eachBinding at: 'decName') = eachParameter) ifTrue: [ 
				| dependencyLink definition |
				dependencyLink := self detectedLinks select: [ :eachLink | 
					                  eachLink languageReference = 'Java' and:
						                  eachLink languageDefinition = 'Properties' ].
				definition := dependencyLink first definitions select: [ 
					              :eachDefinition | 
					              eachDefinition elementName
					              = (eachBinding at: 'myArgValue') ].
				params add: definition first element ] ] ].

	^ params