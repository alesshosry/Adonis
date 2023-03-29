as yet unclassified
connectionTypesAndInvocators

	| dict |
	dict := Dictionary new.
	dict at: 'Connection' put: { 'getConnection' }.
	
	^ dict.