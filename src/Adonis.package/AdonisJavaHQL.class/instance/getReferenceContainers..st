as yet unclassified
getReferenceContainers: resourceEntity

	| pattern bindings |
	bindings := OrderedCollection new.
	pattern := AdonisJavaPatterns new
		           getFromFASTJavaMethodEntityAStringLike:
		           '.*(from)*.+', resourceEntity element ,'.+where.*|.*from.+', resourceEntity element ,'.+(where)*.*'. "to add also update and insert and delete"

	self fastEntities do: [ :c |
		c allFASTJavaMethodEntity do: [ :each |
			| r |
			r := pattern
				     collectBindings: { #myLiteralString. #methodName }
				     for: each.
			r ifNotEmpty: [ bindings add: r ] ] ].

	^ bindings