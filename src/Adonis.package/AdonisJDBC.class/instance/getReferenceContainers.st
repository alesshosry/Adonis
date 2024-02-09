as yet unclassified
getReferenceContainers

	| pattern bindings regExDictionary |
	
	bindings := OrderedCollection new.
	regExDictionary := self getRegExDictionary.
	regExDictionary keysDo: [ :eachRegEx |
		pattern := AdonisJavaPatterns new
			           getFromFASTJavaMethodEntityAStringLike:
			           (regExDictionary at: eachRegEx).

		self fastEntities do: [ :c |
			c allFASTJavaMethodEntity do: [ :each |
				| r |
				r := pattern
					     collectBindings: { #myLiteralString. #methodName }
					     for: each.
				r ifNotEmpty: [
					r do: [ :eachR |
						eachR at: 'className' put: c name.
						eachR at: 'key' put: eachRegEx ].
					bindings add: r ] ] ] ].

	^ bindings flatten