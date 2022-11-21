as yet unclassified
detectPropertiesDeclarationsOf: aFastModel

	| generalPattern |
	generalPattern := XLLJavaPatterns new.
	^ (generalPattern defineObjectDeclParamUsing: 'Properties')
		  collectBinding: #anyName
		  for: aFastModel