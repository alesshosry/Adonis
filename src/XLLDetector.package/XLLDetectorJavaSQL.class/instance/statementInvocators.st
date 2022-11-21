as yet unclassified
statementInvocators

	| dict |
	dict := Dictionary new.
	dict at: 'Statement' put: { 'executeUpdate'. 'executeQuery' }. 
	
	^ dict