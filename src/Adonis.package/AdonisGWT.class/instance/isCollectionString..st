testing
isCollectionString: aString
    "Checks if a string represents a collection of items"
    ^ (aString first = ${ and: [ aString last = $} ])
