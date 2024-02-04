as yet unclassified
cutUnnecessaryPartOfTheQueryBefore: aKeyWord for: aQueryString

	|position|

	"If the specific word is found, extract the substring until that position"
	
	position := aQueryString indexOfSubCollection: aKeyWord startingAt: 1.	
		position > 0
    		ifTrue: [^ aQueryString copyFrom: (position) to: aQueryString size ]
    		ifFalse: [^ aQueryString copy].