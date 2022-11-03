as yet unclassified
detectPropertiesDeclarationsOf: aFastModel
 
	| generalPattern |
	
	generalPattern := XLLJavaPatterns new.	
	^ (generalPattern defineJavaDeclStatementOnly: 'Properties') collectBinding: #anyName for: aFastModel.	