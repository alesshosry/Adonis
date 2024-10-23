as yet unclassified
extractItemsFromString: aString
    "This method extracts individual items from a string formatted as a collection"
    | cleanedString items |
    
    "Remove the curly braces"
    cleanedString := aString copyFrom: 2 to: aString size - 1.
    
    "Split the string by commas"
    items := cleanedString substrings: ','.
    
    "Trim whitespace and quotation marks from each item"
    items := items collect: [ :each | each copyWithoutAll: ' "' ].
    
    ^ items
