as yet unclassified
collectBindingsFromContainer: aContainer

	| pattern parts tripleBackTicks bindings |
	"Split the comment based on the triple backticks"
	tripleBackTicks := '```'.
	parts := self substrings: tripleBackTicks for: aContainer value comment.
	bindings := OrderedCollection new.

	"Process each part"
	parts withIndexDo: [ :part :index | "If it's an odd index, it's inside the backticks, so we don't count it ""return links""missing stuff."
		index odd ifTrue: [
			pattern := AdonisGeneralPatterns new getUpperCamelCases.
			bindings add: (pattern matchesIn: part) ] ].
	^ bindings flatten