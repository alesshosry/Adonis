as yet unclassified
cutUnnecessaryPartOfTheQueryAfter: aKeyWord for: aQueryString

	|position|

	"If the specific word is found, extract the substring until that position"
	
	position := aQueryString indexOfSubCollection: aKeyWord startingAt: 1.	
		position > 0
    		ifTrue: [^ aQueryString copyFrom: 1 to: (position - 1)]
    		ifFalse: [^ aQueryString copy].