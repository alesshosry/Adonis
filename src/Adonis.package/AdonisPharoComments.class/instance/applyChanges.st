operations
applyChanges 

|classes|

""""""""""""
"Tokens to be filtered"
"tokensToBeRemoved := { #Set. #Key. #Smalltalk. #True. #False. 'Instance Variables'.
                     'Key Implementation Points' }."
classes := OrderedCollection new.

"Filtering classes to get only custom commented classes"
self class environment associations do: [ :each |
	each value isClass = true and: [
		(each value comment beginsWith: 'Please comment me') ifFalse: [
			classes add: each ] ] ].


"adonis := AdonisPharoComments new."

classes do: [ :eachClass |
	| aComment pattern parts modifiedComment |
	"Split the comment based on the triple backticks"
	aComment := eachClass value comment.
	parts := self substrings: '```' for: aComment.
	modifiedComment := ''.

	"Process each part"
	parts withIndexDo: [ :part :index | "If it's an odd index, it's inside the backticks, so we keep it as is"
		index odd
			ifFalse: [
			modifiedComment := modifiedComment , '```' , part , '```' ]
			ifTrue: [
				| modifiedPart |
				modifiedPart := part copy.
				pattern := '\b[A-Z][a-zA-Z\d]+\b' asRegex.

				(pattern matchesIn: modifiedPart) removeDuplicates do: [ :e |
					self class environment
						at: e asSymbol
						ifPresent: [
							modifiedPart := modifiedPart
								                copyReplaceTokens: e
								                with: '`' , e , '`' ] ].
				modifiedComment := modifiedComment
				                   , (modifiedPart copyReplaceAll: '``' with: '`') ] ].

	modifiedComment = aComment ifFalse: [ " finalList add: eachClass -> modifiedComment. "
		eachClass value comment: modifiedComment ] ]