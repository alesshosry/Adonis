as yet unclassified
extractResourceEntitiesFor: eachResourceContainer

	| pattern |
	pattern := AdonisXMLPatterns new.

	^ (pattern
		   defineXMLPatternfollowingElementName: 'class'
		   attributeName1: 'table'
		   attributeName2: 'name')
		  collectBindings: { #attributeValue1. #attributeValue2. #myXMLElement }
		  for: eachResourceContainer