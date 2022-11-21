as yet unclassified
statementTypesAndInvocators

	| dict |
	dict := Dictionary new.
	dict at: 'PreparedStatement' put: { 'prepareStatement' }.
	dict at: 'CallableStatement' put: { 'prepareCall' }.
	 
	^ dict