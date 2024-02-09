as yet unclassified
extractReferenceEntitiesFor: eachReferenceContainer

	| pattern |
	pattern := AdonisXMLPatterns new.

	^ (pattern
		   defineXMLPatternfollowingElementName: 'class'
		   attributeName1: 'table'
		   attributeName2: 'name')
		  collectBindings: { #attributeValue1. #attributeValue2. #myXMLElement }
		  for: eachReferenceContainer