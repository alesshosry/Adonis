converting
substrings: myCharacters for: originalString

	| splitPositions startPos parts endPos |

"Find the positions of the triple backticks"
splitPositions := OrderedCollection new.
startPos := originalString indexOfSubCollection: myCharacters startingAt: 1.
[startPos = 0] whileFalse: [
    splitPositions add: startPos.
    startPos := originalString indexOfSubCollection: myCharacters startingAt: startPos + myCharacters size.
].

"Extract parts of the string based on split positions"
parts := OrderedCollection new.
startPos := 1.

splitPositions do: [:pos |
    endPos := pos - 1.
    parts add: (originalString copyFrom: startPos to: endPos).
    startPos := pos + myCharacters size.
].

"Add the last part of the string"
parts add: (originalString copyFrom: startPos to: originalString size).

^parts.
